結合の種類
複数のテーブルを組み合わせて使う結合にはいくつか種類がある

INNER JOIN (内部結合)
INNER JOINは、指定した条件が両方のテーブルでマッチした分だけを返す

LEFT (OUTER) JOIN  (左外部結合)
LEFT (OUTER) JOINは、結合の左側のテーブル全てと、条件にマッチする右側のデータを返す

RIGHT (OUTER) JOIN  (右外部結合)
RIGHT (OUTER) JOINは、結合の右側のテーブルと全てと、条件にマッチする右側のデータを返す

FULL (OUTER) JOIN  (完全外部結合)
FULL (OUTER) JOINは、両方のテーブルの全てのデータを返す方法

CROSS JOIN (クロス結合)
条件を指定せずに、単に両方のテーブルの全てのデータを返す方法

「結合」の基本的な構文

SELECT 列名 FROM 左テーブル　各種JOIN ON 結合条件

各種JOINには、INNER JOINなどそれぞれのJOIN句が入る

部署表

DeptID | Dept
1 | 総務部
2 | 営業部
3 | 情報部
4 | 技術部
社員表

DeptID | Name
1 | 鈴木
3 | 伊藤
1 | 宮下
3 | 神谷
2 | 植村
2 | 中井
5 | 石原


INNER JOIN (内部結合)を使用して、各部署に所属する社員名を取り出す

SELECT * FROM 部署表 INNER JOIN 社員表 ON 部署表.DeptID = 社員表.DeptID

両方にDeptIDが含まれている社員がすべて表示されます。

LEFT OUTER JOIN を使用して　各部署に所属する社員名を取り出す

SELECT * FROM 部署表 LEFT OUTER JOIN 社員表 ON 部署表.DeptID = 社員表.DeptID

RIGHT OUTER JOIN を使用して上記同文

SELECT * FROM 部署表 RIGHT OUTER JOIN 社員表 ON 部署表.DeptID = 社員表.DeptID

FULL OUTER JOIN 上記同文　ただし　MySQLではFULL OUTER JOINはサポートしていない

SELECT * FROM 部署表 FULL OUTER JOIN 社員表 ON 部署表.DeptID = 社員表.DeptId



item

ID | item
1| 文房具
2 | 鉛筆
3 | ボールペン
item_colors

ID | colors
1 | 赤
2 | 青
3 | 黄色

SELECT * FROM item CROSS JOIN item_colors