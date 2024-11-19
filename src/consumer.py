from aiokafka import AIOKafkaConsumer
import json
from .logger import logger

async def async_kafka_consumer(topic: str, group_id: str):
    consumer = AIOKafkaConsumer(
        topic,
        # bootstrap_servers=['kafka:9092'],
        bootstrap_servers=['kafka-broker.stockly.svc.cluster.local:9092'],
        group_id=group_id,
        auto_offset_reset='latest',
        enable_auto_commit=True,
        max_poll_interval_ms=600000,
        session_timeout_ms=60000,
        heartbeat_interval_ms = 5000,
        value_deserializer=lambda x: json.loads(x.decode('utf-8')) if x else None
    )
    try:
        await consumer.start()
        logger.info("Kafka connection successful.")
        # Consumer 데이터 처리 로직
        async for message in consumer:
            try:
                data = message.value
                logger.info(f"Received message: {data}")
                # 메시지 처리 로직 추가
            except Exception as e:
                logger.error(f"Error processing message: {e}")
    except Exception as e:
        logger.error(f"Kafka connection failed: {e}")
    finally:
        logger.info("Stopping Kafka consumer...")
        await consumer.stop()
        logger.info("Kafka consumer stopped.")