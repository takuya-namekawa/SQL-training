SQLでもっとも基本的な構文の1つにSELECT文があります。
SELECT文は、「データベースからデータを取り出して表示するための構文」です。
また、単にデータベースに含まれるデータを取り出すだけでなく、さまざまなキーワードを使って条件付けなどを行って絞り込むこともできます。

基礎構文  SELECT 項目 FROM テーブル  
(例　SELECT name FROM PERSON_DATA)

SELECT：どの項目のデータを表示するかを指定
どの表（テーブル）のデータを表示するかを指定

SELECT name FROM PERSON_DATA  →  この場合は名前だけを取り出すことが出来る

SELECT name, age FROM PERSON_DATA  →　　カンマ区切りにする事で種類を追加出来る

SELECT * FROM PERSON_DATA  →　データ全体を取る場合は、省略系として * を使用する

