create database Design_a_table;
use Design_a_table;
create table Trainee(
	TraineeID bigint primary key,
    Full_name nvarchar(50) not null,
    Birth_date date,
    Gender enum ('male', 'female','unknown'),
    ET_IQ enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'),
    ET_Gmath enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'),
    ET_English enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30',
					'31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50'),
    Training_class nvarchar(10) not null,
    Evaluation_notes nvarchar(50) not null
);
alter table Trainee 
add column VTI_Account nvarchar(50) not null unique;

-- Exercide 2
create table data_types(
	ID bigint primary key,
    Name Varchar(100) not null,
    code char(5) not null,
    ModifiedDate datetime
);

-- Exercise 3
create table data_types2(
	id bigint auto_increment primary key,
	Name Varchar(100) null,
	BirthDate date,
	Gender int null,  -- 0 (Male), 1 (Female), NULL (Unknown)
	IsDeletedFlag bool -- 0 (đang hoạt động), 1 (đã xóa)
);

