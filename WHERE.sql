一括ですべてを表示するのがSELECTに対してWHEREは絞り込みを行う

SELECT 項目 FROM テーブル WHERE 条件
WHERE句で条件を設定する場合は、たとえば以下のように「〜より大きい」とか「〜と等しい」といったような記述をします。
SELECT 項目 FROM テーブル WHERE A > 0
SELECT 項目 FROM テーブル WHERE A = 0

WHERE句で必要となる演算子は、「比較演算子」と「論理演算子」の2つ
比較演算子：数値の大小などを比較して結果を返す
論理演算子：「AもしくはB」など、ものとものとの論理的な比較を行って結果を返す

AND
二つの条件が両方真である
OR
二つの条件のうちどちらかが真である
NOT
式の内容を否定する
BETWEEN a AND b
a と b  の範囲内
IN
対象が条件の一つに一致する
LIKE
対象が条件に含まれる


SELECT * FROM PERSON_DATA WHERE age >= 30  「年齢が30歳以上」のデータを表示
SELECT * FROM PERSON_DATA WHERE name = '佐藤'  「名前が佐藤」のデータを表示

