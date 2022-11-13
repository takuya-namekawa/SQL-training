CREATE TABLE PERSON_DATA
    (`id` int, `name` varchar(2), `age` int, `address` varchar(7))
;
    
INSERT INTO PERSON_DATA
    (`id`, `name`, `age`, `address`)
VALUES
    (01, '佐藤', 25, '東京都千代田区'),
    (02, '鈴木', 32, '東京都北区'),
    (03, '斎藤', 43, '神奈川県川崎市'),
    (04, '吉田', 35, '神奈川県横浜市'),
    (05, '川崎', 27, '東京都武蔵野市'),
    (06, '石川', 53, '東京都北区')
;

SELECT * FROM PERSON_DATA  出力