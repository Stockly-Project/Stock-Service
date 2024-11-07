CREATE DATABASE IF NOT EXISTS stockly;
USE stockly;

CREATE TABLE IF NOT EXISTS stock (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted TINYINT DEFAULT 0,
    symbol VARCHAR(100),
    high INT,
    low INT,
    volume BIGINT,
    date DATETIME,
    open INT,
    close INT,
    rate DOUBLE,
    rate_price INT
);

CREATE TABLE IF NOT EXISTS user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  is_deleted BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS company (
  id INT AUTO_INCREMENT PRIMARY KEY,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  is_deleted TINYINT(1) DEFAULT 0,
  name VARCHAR(100) NOT NULL,
  symbol VARCHAR(100) NOT NULL
);

INSERT INTO company (name, symbol) VALUES
('삼성전자', '005930'),
('SK하이닉스', '000660'),
('LG엔솔', '373220'),
('현대차', '005380'),
('삼성바이오로직스', '207940'),
('기아', '000270'),
('셀트리온', '068270'),
('LG화학', '051910'),
('POSCO홀딩스', '005490'),
('NAVER', '035420'),
('삼성SDI', '006400'),
('KB금융', '105560'),
('삼성물산', '028260'),
('현대모비스', '012330'),
('신한지주', '055550'),
('카카오', '035720'),
('포스코케미칼', '003670'),
('LG전자', '066570'),
('하나금융지주', '086790'),
('삼성생명', '032830'),
('한미반도체', '042700'),
('메리츠금융지주', '138040'),
('한국전력', '015760'),
('삼성화재', '000810'),
('카카오뱅크', '323410'),
('LG', '003550'),
('삼성SDS', '018260'),
('삼성전기', '009150'),
('크래프톤', '259960'),
('SK텔레콤', '017670'),
('한화에어로스페이스', '012450'),
('HMM', '011200'),
('SK스퀘어', '402340'),
('현대중공업', '329180'),
('SK이노베이션', '096770'),
('기업은행', '024110'),
('고려아연', '010130'),
('우리금융지주', '316140'),
('KT&G', '033780'),
('두산에너빌리티', '034020'),
('S-oil', '010950'),
('하이브', '352820'),
('대우조선해양', '042660'),
('SK그룹', '034730'),
('KT', '030200'),
('아모레퍼시픽', '090430'),
('한국조선해양', '009540'),
('현대일렉트릭', '267260'),
('포스코인터내셔널', '047050'),
('삼성중공업', '010140'),
('대한항공', '003490'),
('한국타이어앤테크놀로지', '161390'),
('현대글로비스', '086280'),
('SK바이오팜', '326030'),
('금양', '001570'),
('LG생활건강', '051900'),
('메리츠화재', '000060'),
('두산밥캣', '241560'),
('DB손해보험', '005830'),
('유한양행', '000100'),
('삼성엔지니어링', '028050'),
('LG디스플레이', '034220'),
('CJ제일제당', '097950'),
('HD현대', '267250'),
('한국항공우주', '047810'),
('LG이노텍', '011070'),
('롯데케미칼', '011170'),
('코스모신소재', '005070'),
('카카오페이', '377300'),
('넷마블', '251270'),
('SKIET', '361610'),
('SK바사', '302440'),
('현대로템', '064350'),
('한화솔루션', '009830'),
('맥쿼리인프라', '088980'),
('SKC', '011790'),
('GS', '078930'),
('현대제철', '004020'),
('GS Holdings', '078935'),
('LS Electric', '010120'),
('LG유플러스', '032640'),
('현대오토에버', '307950'),
('미래에셋증권', '006800'),
('코웨이', '021240'),
('한미약품', '128940'),
('한진칼', '180640'),
('오리온', '271560'),
('삼성카드', '029780'),
('NH투자증권', '005940'),
('메리츠증권', '008560'),
('현대건설', '000720'),
('LIG넥스원', '079550'),
('한국금융지주', '071050'),
('엔씨소프트', '036570'),
('LS', '006260'),
('삼성증권', '016360'),
('한화시스템', '272210'),
('쌍용C&E', '003410'),
('효성중공업', '298040'),
('금호석유', '011780'),
('CJ', '001040'),
('강원랜드', '035250'),
('키움증권', '039490'),
('한온시스템', '018880'),
('대한전선', '001440'),
('현대미포조선', '010620'),
('BNK금융지주', '138930'),
('F&F', '383220'),
('두산', '000150'),
('휠라홀딩스', '081660'),
('한화', '000880'),
('CJ대한통운', '000120'),
('씨에스윈드', '112610'),
('한화우', '000885'),
('한미사이언스', '008930'),
('아모레G', '002790'),
('JB금융지주', '175330'),
('현대해상', '001450'),
('한전기술', '052690'),
('팬오션', '028670'),
('한국가스공사', '036460'),
('호텔신라', '008770'),
('농심', '004370'),
('한솔케미칼', '014680'),
('에스원', '012750'),
('BGF리테일', '282330'),
('일진머티리얼즈', '020150'),
('한화생명', '088350'),
('GS리테일', '007070'),
('롯데쇼핑', '023530'),
('제일기획', '030000'),
('금호타이어', '073240'),
('롯데지주', '004990'),
('삼양식품', '003230'),
('동서', '026960'),
('OCI', '010060'),
('KCC', '002380'),
('DB하이텍', '000990'),
('한올바이오파마', '009420'),
('풍산', '103140'),
('이마트', '139480'),
('현대두산인프라코어', '042670'),
('영원무역', '111770'),
('더존비즈온', '012510'),
('한전KPS', '051600'),
('현대위아', '011210'),
('HL만도', '204320'),
('대우건설', '047040'),
('한국테크', '000240'),
('코스맥스', '192820'),
('신세계', '004170'),
('현대엘리베이', '017800'),
('효성첨단소재', '298050'),
('하이트진로', '000080'),
('에스엘', '005850'),
('효성티앤씨', '298020'),
('SK가스', '018670'),
('오뚜기', '007310'),
('솔루스첨단소재', '336370'),
('DGB금융지주', '139130'),
('에스디바이오센서', '137310'),
('대웅제약', '069620'),
('종근당', '185750'),
('동원산업', '006040'),
('솔루엠', '248070'),
('녹십자', '006280'),
('두산퓨얼셀', '336260'),
('DL이앤씨', '375500'),
('롯데칠성', '005300'),
('LX세미콘', '108320'),
('대덕전자', '353200');
