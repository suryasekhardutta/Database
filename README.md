 create database [File System];
Query OK, 1 row affected (0.01 sec)

 use [File System];
Database changed
 Create table [File System](NodeID int primary key NOT NULL,NodeName varchar(50) NOT NULL,ParentID int, SizeBytes int);
Query OK, 0 rows affected (0.02 sec)

 insert into [File System] values(1,"Documents",NULL,NULL);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(2,"Pictures",NULL,NULL);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(3,"File1.txt",1,500);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(4,"Folder1",1,NULL);
Query OK, 1 row affected (0.00 sec)

 insert into [File System] values(5,"Image.jpeg",2,1200);
Query OK, 1 row affected (0.00 sec)

 insert into [File System] values(6,"Subfolder1",4,NULL);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(7,"File2.txt",4,750);
Query OK, 1 row affected (0.00 sec)

 insert into [File System] values(8,"File3.txt",6,300);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(9,"Folder2",2,NULL);
Query OK, 1 row affected (0.01 sec)

 insert into [File System] values(9,"File4.txt",9,250);
ERROR 1062 (23000): Duplicate entry '9' for key '[File System].PRIMARY'
 insert into [File System] values(10,"File4.txt",9,250);
Query OK, 1 row affected (0.01 sec)

 select * from [File System];
+--------+------------+----------+-----------+
| NodeID | NodeName   | ParentID | SizeBytes |
+--------+------------+----------+-----------+
|      1 | Documents  |     NULL |      NULL |
|      2 | Pictures   |     NULL |      NULL |
|      3 | File1.txt  |        1 |       500 |
|      4 | Folder1    |        1 |      NULL |
|      5 | Image.jpeg |        2 |      1200 |
|      6 | Subfolder1 |        4 |      NULL |
|      7 | File2.txt  |        4 |       750 |
|      8 | File3.txt  |        6 |       300 |
|      9 | Folder2    |        2 |      NULL |
|     10 | File4.txt  |        9 |       250 |
+--------+------------+----------+-----------+

 update [File System] set SizeBytes=1550 where NodeID=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 update [File System] set SizeBytes=1450 where NodeID=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 update [File System] set SizeBytes=1050 where NodeID=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 update [File System] set SizeBytes=300 where NodeID=6;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 update [File System] set SizeBytes=250 where NodeID=9;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 select NodeID,NodeName,SizeBytes from [File System];
+--------+------------+-----------+
| NodeID | NodeName   | SizeBytes |
+--------+------------+-----------+
|      1 | Documents  |      1550 |
|      2 | Pictures   |      1450 |
|      3 | File1.txt  |       500 |
|      4 | Folder1    |      1050 |
|      5 | Image.jpeg |      1200 |
|      6 | Subfolder1 |       300 |
|      7 | File2.txt  |       750 |
|      8 | File3.txt  |       300 |
|      9 | Folder2    |       250 |
|     10 | File4.txt  |       250 |
+--------+------------+-----------+

 select * from [File System];
+--------+------------+----------+-----------+
| NodeID | NodeName   | ParentID | SizeBytes |
+--------+------------+----------+-----------+
|      1 | Documents  |     NULL |      1550 |
|      2 | Pictures   |     NULL |      1450 |
|      3 | File1.txt  |        1 |       500 |
|      4 | Folder1    |        1 |      1050 |
|      5 | Image.jpeg |        2 |      1200 |
|      6 | Subfolder1 |        4 |       300 |
|      7 | File2.txt  |        4 |       750 |
|      8 | File3.txt  |        6 |       300 |
|      9 | Folder2    |        2 |       250 |
|     10 | File4.txt  |        9 |       250 |
+--------+------------+----------+-----------+

 select NodeID,NodeName,SizeBytes from [File System];
+--------+------------+-----------+
| NodeID | NodeName   | SizeBytes |
+--------+------------+-----------+
|      1 | Documents  |      1550 |
|      2 | Pictures   |      1450 |
|      3 | File1.txt  |       500 |
|      4 | Folder1    |      1050 |
|      5 | Image.jpeg |      1200 |
|      6 | Subfolder1 |       300 |
|      7 | File2.txt  |       750 |
|      8 | File3.txt  |       300 |
|      9 | Folder2    |       250 |
|     10 | File4.txt  |       250 |
+--------+------------+-----------+


