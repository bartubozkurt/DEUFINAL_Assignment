select * from Bolum;
select * from Ders;
select * from Ogrenci;
select * from Ogretmen;


/*_______UPDATE_________________*/

update Ogretmen set pozisyon = 'PROF.DR', maas = 10500 where ogretmenİd = 1;
update Ogrenci set ogrenciAdi = 'Gizem' , ogrenciSoyadi = 'Arslan' , dogumYeri = 'Kütahya' where ogrenciİd = 23;
update Ogretmen set ogretmenAdi = 'Ogr.G. SEDAT' , dogumYeri = 'Kars' where ogretmenİd = 9;
update Bolum set bolumEposta = 'bilgisayarbilimleri@deu.edu.tr' where bolumİd = 1;

/*____________DELETE____________ */


delete from Ogrenci where ogrenciİd = 21;
delete from Ogrenci where ogrenciİd = 22;
delete from Ogrenci where ogrenciİd = 23;

/*______INSERT INTO_____________________ */


insert into Ogrenci (ogrenciİd,ogrenciAdi,ogrenciSoyadi,dogumYeri,bolumİd)values (21,'Doğukan','Arslan','Ankara',6);
insert into Ogrenci (ogrenciİd,ogrenciAdi,ogrenciSoyadi,dogumYeri,bolumİd)values (22,'Onur','Şahin','Tekirdağ',6);
insert into Ogrenci (ogrenciİd,ogrenciAdi,ogrenciSoyadi,dogumYeri,bolumİd)values (23,'Gizem','Arslan','Kütahya',6);

/*_________DISTINCT / LIKE__________________ */

select ogrenciAdi,ogrenciSoyadi from Ogrenci where dogumYeri = 'İzmir'; 
select * from Ogrenci where bolumİd = 5
select ogrenciİd,ogrenciAdi,ogrenciSoyadi from Ogrenci where ogrenciAdi like 'B%';
select ogrenciİd,ogrenciAdi,ogrenciSoyadi from Ogrenci where ogrenciAdi like '%t';


select distinct dogumYeri from Ogretmen;
select distinct dogumYeri from Ogrenci;
select ogretmenİd,ogretmenAdi,ogretmenSoyadi from Ogretmen where pozisyon like 'PROF%';
select ogretmenİd,ogretmenAdi,ogretmenSoyadi from Ogretmen where pozisyon like 'Doç%';

/*________DELETE____________________*/

delete from Ogretmen where ogretmenİd = 20;
delete from Ders where dersİd = 20;
delete from Ogretmen where ogretmenİd = 19;
delete from Ders where dersİd = 19;

/*____MAX / MİN / SUM / AVG / RANGE /_______________________*/


select * from Ogretmen where bolumİd = 1;
select * from Ogretmen where maas > 7000;
select max(maas) as 'Maks Maas' from Ogretmen;
select min(maas) as 'Min Maas' from Ogretmen;
select sum(maas) / count(maas) as 'Ort Maas' from Ogretmen;
select avg(maas) as 'Ort Maas'from Ogretmen;
select max(maas) - min(maas) as 'Maas Acıklıgı'from Ogretmen;

/*__________ORDER BY / BETWEEN / < / > / <= / >=__________________*/

select * from Ogretmen order by maas desc;
select * from Ogretmen order by maas;
select * from Ogretmen order by maas asc;
select * from Ogretmen WHERE maas between 7000 and 9000;
select * from Ogretmen WHERE maas < 6300;
select * from Ogretmen WHERE maas <= 6800;


/*__________GROUP BY__________________*/


select bolumİd, count(*) as 'Bolumdeki Kisi Sayısı' from Ogrenci group by bolumİd;
select ogrenciAdi,count(*) as 'Adet' from Ogrenci group by ogrenciAdi;


/*_______TOP / PERCENT_____________________*/


select top 3 * from Ogretmen;
select top 3 * from Ogrenci;
select top 3 * from Ders;
select top 3 * from Bolum;

select top 50 percent * from Ogrenci;
select top 50 percent * from Ogretmen;


/*_________AND / OR___________________*/


select * from Ogrenci where dogumYeri='Bursa' and bolumİd='1';
select * from Ogrenci where dogumYeri='Bursa' or bolumİd='1';
select * from Ogrenci where dogumYeri='Bursa' or dogumYeri='İzmir';

 
/*________NESTED SQL____________________*/


select * from Ogretmen where dogumYeri in ('İstanbul','Adana');

select ogretmenAdi,ogretmenSoyadi,pozisyon,maas from Ogretmen where maas = (select max(maas) from Ogretmen);select ogretmenAdi,ogretmenSoyadi,pozisyon,maas from Ogretmen where maas = (select min(maas) from Ogretmen);

select * from Ogrenci where bolumİd = (select bolumİd from Ders where dersAdi = 'Veritabanı Yönetimi');

select bolumİd as 'En yuksek maaslı kisiye ait Id' from Ogretmen where maas = (select max(maas) from Ogretmen);



/*________ JOIN ISLEMLERI____________________*/

select ogrenciAdi,ogrenciSoyadi,bolumAdi From Ogrenci
	INNER JOIN Bolum
	ON Ogrenci.bolumİd = Bolum.bolumİd

select ogretmenAdi,ogretmenSoyadi,pozisyon,bolumAdi FROM Ogretmen
	JOIN Bolum
	ON Ogretmen.bolumİd = Bolum.bolumİd


