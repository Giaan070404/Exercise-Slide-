create database Design_a_table;
use Design_a_table;
create table Trainee(
	trainee_ID bigint primary key,
    full_name nvarchar(50) not null,
    birth_date date,
    gender enum ('male', 'female','unknown'),
    ET_IQ enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'),
    ET_gmath enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'),
    ET_english enum ('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30',
					'31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50'),
    training_class nvarchar(10) not null,
    evaluation_notes nvarchar(50) not null
);
alter table Trainee 
add column vti_account nvarchar(50) not null unique;

-- Exercide 2
create table data_types(
	ID bigint primary key,
    name Varchar(100) not null,
    code char(5) not null,
    modified_date datetime
);

-- Exercise 3
create table data_types2(
	id bigint auto_increment primary key,
	name Varchar(100) null,
	birth_date date,
	gender int null,  -- 0 (Male), 1 (Female), NULL (Unknown)
	is_deleted_flag bool -- 0 (đang hoạt động), 1 (đã xóa)
);

alter table Trainee
add constraint check_gender check (gender in ('male', 'female', 'unknown')),
add constraint check_ET_IQ check (ET_IQ between '0' and '20'),
add constraint check_ET_gmath check (ET_gmath between '0' and '20'),
add constraint check_ET_english check (ET_english between '0' and '50');

alter table data_types
add constraint check_code_length check (length(code) = 5);

alter table data_types2
add constraint check_gender check (gender IN (0, 1));

alter table data_types2
add constraint check_is_deleted_flag check (is_deleted_flag in (0, 1));

