/* membuat database */
create database product;

/* menampilkan daftar database */
show databases;

/* menggunakan database yang diinginkan*/
use product;

/* menampilkan tabel pada database yang dipilih */
show tables;

/* membuat tabel */
create table barang(
	id		int,
    nama	varchar(100),
    harga	int,
    jumlah	int
)engine=InnoDB;

/* melihat struktur tabel pada database */
desc barang;

/* merubah struktur tabel setelah tabel dibuat*/
alter table barang
add column deskripsi text;	/* menambah column */

alter table barang
add column salah text;

alter table barang
drop column salah;	/* menghapus column */

alter table barang 
modify nama varchar(150) after id;	/* mengubah tipe data dan memindahkan posisi column*/

alter table barang 
modify nama varchar(150) not null;	/* mengubah nilai yang awalnya null menjadi tidak null*/

alter table barang 
modify harga int not null default 0;	/* membuat nilai pada default agar tidak null */ 

alter table barang 
modify jumlah int not null default 0;	/* membuat nilai pada default agar tidak null */ 

alter table barang
add waktu timestamp not null default current_timestamp;	/* membuat nilai pada default agar tidak null dan mencatat pada waktu sekarang*/ 

insert into barang (id, nama) values (1, 'rey');	/* mengisi nilai baris berdasarkan kolom */ 
select * from barang;	/* menampilkan data tabel */ 

truncate barang;
drop table barang;

/* =========================================== */

create table barang(
	id			varchar(10) not null,
    nama		varchar(100) not null,
    deskripsi	text,
    harga		int unsigned not null,
    quantity 	int unsigned not null default 0, 
    dibuat 		timestamp not null default current_timestamp
)engine=InnoDB;

show tables;
desc barang;
select * from barang;

insert into barang(id, nama, harga, quantity)
values ('P01', 'Apel', 10000, 100);

insert into barang(id, nama, deskripsi, harga, quantity)
values ('P02', 'Jeruk', 'Jeruk Kuning', 10000, 100);

insert into barang(id, nama, harga, quantity)
values ('P03', 'Salak', 10000, 100),
       ('P04', 'Semangka', 10000, 100),
       ('P05', 'Pir', 10000, 100);

select id, nama from barang;

alter table barang
add primary key(id);

select * from barang where quantity = 100;