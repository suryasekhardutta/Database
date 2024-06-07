select * from [File System]
update [File System] set SizeBytes=1550 where NodeID=1
update [File System] set SizeBytes=1450 where NodeID=2
update [File System] set SizeBytes=1050 where NodeID=4
update [File System] set SizeBytes=300 where NodeID=6
update [File System] set SizeBytes=250 where NodeID=9

select NodeID,NodeName,SizeBytes from [File System]
