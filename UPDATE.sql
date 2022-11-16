UPDATE テーブル名 SET 列名 = 値
まずは、もっとも簡単な形式です。
テーブルの特定の項目（列）の情報を更新するものです。

UPDATE テーブル名 SET 列名 = 値 WHERE 条件`
ある列に複数のデータが入っている場合にすべてのデータが書き換わってしまいます。

そこで使うのが、前回学んだ「WHERE句による絞り込み」です。
UPDATE文でWHERE句を用いた構文は、以下のような形式です。

UPDATE テーブル名 SET 列名 = 値 WHERE 年齢 = 25

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
UPDATE PERSON_DATA SET  address = '東京都杉並区' WHERE name = '吉田'
構文は左下に書く

SELECT * FROM PERSON_DATA
と出力で、更新ができる