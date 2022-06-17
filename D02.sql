use batch59;

create table ogrenciler(id int, isim varchar(40), adres varchar(100), sinav_notu int);

insert into ogrenciler values('120', 'Ali Can', 'Ankara', '75');
insert into ogrenciler values('121', 'Veli Mert', 'Trabzon', '85');
insert into ogrenciler values('122', 'Ayşe Tan', 'Bursa', '65');
insert into ogrenciler values('123', 'Derya Soylu', 'Istanbul', '95');
insert into ogrenciler values('124', 'Yavuz Bal', 'Ankara', '80');

select* from ogrenciler;

-- SELECT WHERE-> filtreleme...

-- ogrenciler listesinde sinav notu 80'den yüksek olan ogrencileri listele.

select * from ogrenciler Where sinav_notu>80;

-- adresi ankara olan öğrencilerin isim ve id bilgisi

select isim,id from ogrenciler where adres = 'Ankara';

-- id'si 124 olan öğrencilerin bütün bilgilerini listele

select * from ogrenciler where id= 124;

-- id'si 124 olan öğrencilerin adres ve sinav notunu listele

select adres,sinav_notu from ogrenciler where id= 124;

create table personel(id int, isim varchar(40), maas int);

insert into personel values('1001', 'Ali Can', '75000');
insert into personel values('1002', 'Veli Mert', '85000');
insert into personel values('1003', 'Ayşe Tan', '65000');
insert into personel values('1004', 'Derya Soylu', '95000');
insert into personel values('1005', 'Yavuz Bal', '80000');
insert into personel values('1006', 'Sena Beyaz', '100000');


select * from personel;

-- BETWEEN-> deger araligi

-- idsi 1002 ile 1005 arasinda olan personel

select * from personel where id between 1002 and 1005;

-- derya soylu ile deniz bal arasindaki personel

select * from personel;

select* from personel where isim between 'Derya Soylu' and 'Yavuz Bal';

-- idsi 1001 1002 ve 1004 olan personelleri getir

select * from personel where id='1001' or id='1002' or id='1003';

select* from personel where id in(1001,1002,1004);

select * from personel where maas in(70000,100000);


-- select like -> a ile başlayan, n ile biten, ikinci harfi c olan gibi

-- ismi A ile başlayan personeli getir.

select * from personel where isim like 'A%';

-- ismi ne ile bitenler

select * from personel where isim like'%N'; 

-- isminde 2. harf e olanlar

select* from personel where isim like '_E%';

-- isminde ikinci harf e sonrasında ise y olan

select* from personel where isim like '_E%Y%';

-- isminde a olmayan

select* from personel where isim not like '%A%';

-- isminin birinci ve 7. harfi a olan

select * from personel where isim like 'A_____A%';

-- maasi altı haneli olan personeli listeleyiniz.

select * from personel where maas>99999 and maas<1000000;
select * from personel where maas like '______';

/*
====================== SELECT - REGEXP_LIKE ================================
    Daha karmaşık pattern ile sorgulama işlemi için REGEXP_LIKE kullanılabilir.  
     -- 'c' => case-sentisitive demektir
     -- 'i' => incase-sentisitive demektir ve default incase-sensitive aktiftir..
    Syntax:
    --------
    REGEXP_LIKE(sutun_adı, 'pattern[] ', 'c' ] )
           
========================================================================== */


     




create table kelimeler (id int UNIQUE, kelime VARCHAR(50) NOT NULL,harf_sayisi int);
   
    INSERT INTO kelimeler VALUES (1001, 'hot', 3);
    INSERT INTO kelimeler VALUES (1002, 'hat', 3);
    INSERT INTO kelimeler VALUES (1003, 'hit', 3);
    INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
    INSERT INTO kelimeler VALUES (1005, 'hct', 3);
    INSERT INTO kelimeler VALUES (1006, 'adem', 4);
    INSERT INTO kelimeler VALUES (1007, 'selim', 5);
    INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
    INSERT INTO kelimeler VALUES (1009, 'hip', 3);
    INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
    INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
    INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
    INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
    INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
    INSERT INTO kelimeler VALUES (1015, 'hooooot', 5);
    
    -- SORU16: İçerisinde 'ot' veya 'at' bulunan kelimeleri küçük harfe dikkat ederek listeleyiniz
-- VEYA işlemi için | karakteri kullanılır.

select * from kelimeler where regexp_like(kelime, 'ot|at','c');

-- başı ho ya da hi olan

select * from kelimeler where regexp_like(kelime,'^ho|hi');

-- sonu t ya da m

select * from kelimeler where regexp_like(kelime,'t$|m');

-- h ile başlayıp t ile biten 3 harfli

select * from kelimeler where regexp_like(kelime, 'h[a-zA-Z0-9]t');

-- ile başlayıp t ile biten 4 harfli

select * from kelimeler where regexp_like(kelime, 'h[a-zA-Z0-9][a-zA-Z0-9]t');

-- ilk harfi h son harfi t ve ikinci harfi a veya i olan

select * from kelimeler where regexp_like(kelime,'h[a|i]t');

-- icinde m veya e veya i olanlar

select * from kelimeler where regexp_like(kelime,'[m|e|i]');

-- a veya s ile baslayanlar

select * from kelimeler where regexp_like(kelime,'^a|h');

-- icinde en az iki o

select * from kelimeler where regexp_like(kelime,'[o][o]');

-- icinde en az dort o

select * from kelimeler where regexp_like(kelime,'[o][o][o][o]');






