docker exec -it pawel-mariadb-1 bash
apt-get install mysql-client
mysql -u root -p

show databases;
use photoprism;
show tables;


## files
select id, convert(file_name, char(100)) from files;


### select convert(file_hash, char(100)) from files;


#photos
select convert(photo_path, char(100)), convert(photo_name, char(100)), convert(original_name, char(100)) from photos where convert(photo_name, char(100)) like '%Cover%'
select convert(photo_path, char(100)) from photos



## Albums
select album_path, album_title,convert(album_order, char(200)), convert(album_type, char(200)), album_type from albums where convert(album_type, char(100))='folder'


select album_path, album_title,convert(album_order, char(200)), convert(album_type, char(200)), album_type from albums where convert(album_type, char(100))='folder' and album_title='2007.05.07 - Wroclaw Z Wujczykami - Odwiedziny'


## instruction
Copy the filehash of the photo you want to have as cover. You find the hash on the Files tab of the edit dialog (https://docs.photoprism.app/user-guide/organize/edit/#edit-files)
In the albums table set the filehash as "thumb"
Set "thumb_src" to "manual" so that your changes do not get overwritten



## Joins

select a.album_path
,convert(a.album_type, char(200))
,a.album_type
,p.id
,convert(p.photo_name, char(100)) 
,convert(f.file_hash, char(200))
from albums a 
inner join photos p on a.album_path=p.photo_path 
inner join files f on p.id=f.photo_id
where convert(album_type, char(100))='folder' 
and album_title='2007.05.07 - Wroclaw Z Wujczykami - Odwiedziny';


mysql> select thumb,convert(thumb,char(100)), thumb_src,convert(thumb_src, char(200)) from albums where album_title='2007.05.07 - Wroclaw Z Wujczykami - Odwiedziny';


mysql> update albums set thumb='870f69d6c6f3f0ad9232b195585099a3fb87828b', thumb_src='manual' where album_title='2007.05.07 - Wroclaw Z Wujczykami - Odwiedziny';


