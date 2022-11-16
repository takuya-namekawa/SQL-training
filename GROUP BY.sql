仕事でデータを扱うときに、同じ種類のデータごとに分けて処理することがあると思います。
たとえば、以下のようなデータベースを考えてみましょう。

品物	種類	売り上げ
りんご	果物	1200
ほうれん草	野菜	1000
レモン	果物	1000
白菜	野菜	3400
ここで、「野菜」だけ、「果物」だけの売り上げを計算したい場合、「野菜グループ」「果物グループ」に分ける必要があります。

データベースでそういったときに使えるのが「グループ表示」で、GROUP BY句を使うことでできます。

基本構文
SELECT 列名　FROM テーブル  GROUP BY グループにまとめる列名

たとえば、先ほどの売り上げ表で果物と野菜それぞれの売り上げ合計を表示するケースを考えてみましょう。

売り上げ表

品物	種類	売り上げ
りんご	果物	1200
ほうれん草	野菜	1000
レモン	果物	1000
白菜	野菜	3400
売り上げの合計を計算する場合は、列名に対してSUM(列名)といった計算をします。
そうするとSQL文は以下のようになります。

SELECT SUM(売上) FROM 売上表　GROUP BY '種類'

id, name, age, address, dept
01, 佐藤, 25, 東京都千代田区, 技術部
02, 鈴木, 32, 東京都北区, 総務部
03, 斎藤, 43, 神奈川県川崎市, 営業部
04, 吉田, 35, 神奈川県横浜市, 総務部
05, 川崎, 27, 東京都武蔵野市, 営業部
06, 石川, 53, 東京都北区, 役員

「dept」をキーワードにして部署ごとの人数を集計

SELECT dept, count(name) FROM PERSON_DATA group BY dept