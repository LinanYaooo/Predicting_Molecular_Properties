-- 1. 创建训练集表
truncate table train;
drop table train;
create table if not exists train
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
id int not null  primary key not null,
molecule_name varchar(200) not null,
atom_index_0 int not null,
atom_index_1 int not null,
type varchar(10) not null,
scalar_coupling_constant double not null
) DEFAULT CHARSET = utf8mb4 ;

-- 2. 创建测试集表；
truncate table test;
drop table test;
create table if not exists test
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
id int not null  primary key,
molecule_name varchar(200) not null,
atom_index_0 int not null,
atom_index_1 int not null,
type varchar(10) not null
-- scalar_coupling_constant double
) DEFAULT CHARSET = utf8mb4 ;

-- 3 创建 dipole_moments 表
create table if not exists dipole_moments
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null  primary key,
X double not null,
Y double not null,
Z double not null
) DEFAULT CHARSET = utf8mb4 ;

-- 4 创建 magnetic_shielding_tensors 表
create table if not exists magnetic_shielding_tensors
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null,
atom_index int not null,
XX double not null,
YX double not null,
ZX double not null,
XY double not null,
YY double not null,
ZY double not null,
XZ double not null,
YZ double not null,
ZZ double not null,
primary key (molecule_name, atom_index)
) DEFAULT CHARSET = utf8mb4 ;

-- 5. 创建 mulliken_charges 表
create table if not exists mulliken_charges
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null,
atom_index int not null,
mulliken_charge double not null,
primary key (molecule_name, atom_index)
) DEFAULT CHARSET = utf8mb4 ;

-- 6. 创建 potential_energy 表
create table if not exists potential_energy
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null primary key,
potential_energy double not null
) DEFAULT CHARSET = utf8mb4 ;

-- 7 创建 structures 表
create table if not exists structures
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null,
atom_index int not null,
atom varchar(10) not null,
X double not null,
Y double not null,
Z double not null,
primary key (molecule_name, atom_index)
) DEFAULT CHARSET = utf8mb4 ;

-- 8 创建 scalar_coupling_contributions 表
create table if not exists scalar_coupling_contributions
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
molecule_name varchar(200) not null,
atom_index_0 int not null,
atom_index_1 int not null,
type varchar(10) not null,
fc double not null,
sd double not null,
pso double not null,
dso double not null,
primary key (molecule_name, atom_index_0, atom_index_1)
) DEFAULT CHARSET = utf8mb4 ;

-- 9 创建 sample_submission 表
truncate table sample_submission;
create table if not exists sample_submission
(
-- column_name data_type(length) [NOT NULL] [DEFAULT value] [AUTO_INCREMENT]
id int not null primary key,
scalar_coupling_constant double not null
) DEFAULT CHARSET = utf8mb4 ;







