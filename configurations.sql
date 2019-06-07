-- 1. 加载数据
truncate table test;
load data infile "test.csv" into table test fields terminated by ',' lines terminated by '\n';
truncate table train;
load data infile "train.csv" into table train fields terminated by ',' lines terminated by '\n';

-- 2. 加载训练集特征表

-- Diopole movements
truncate table dipole_moments;
load data infile "dipole_moments.csv" into table dipole_moments fields terminated by ',' lines terminated by '\n';

-- magnetic_shielding_tensors
truncate table magnetic_shielding_tensors;
load data infile "magnetic_shielding_tensors.csv" into table magnetic_shielding_tensors fields terminated by ',' lines terminated by '\n';

-- mulliken_charges
truncate table mulliken_charges;
load data infile "mulliken_charges.csv" into table mulliken_charges fields terminated by ',' lines terminated by '\n';

-- potential_energy
truncate table potential_energy;
load data infile "potential_energy.csv" into table potential_energy fields terminated by ',' lines terminated by '\n';

-- structures
truncate table structures;
load data infile "structures.csv" into table structures fields terminated by ',' lines terminated by '\n';

-- scalar_coupling_contributions
truncate table scalar_coupling_contributions;
load data infile "scalar_coupling_contributions.csv" into table scalar_coupling_contributions fields terminated by ',' lines terminated by '\n';

-- sample_submission
truncate table sample_submission;
load data infile "sample_submission.csv" into table sample_submission fields terminated by ',' lines terminated by '\n';

-- 3. Drop 表 
drop table dipole_moments;