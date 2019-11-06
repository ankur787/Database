---- Step 1 Split Voter Surname and Relation Surname

SELECT *, LEFT(RelationNameEn, NULLIF(CHARINDEX(' ', RelationNameEn) -1, -1)) AS [RelationFirstName],
RIGHT(RelationNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationNameEn)) -1, -1),
LEN(RelationNameEn))) AS [RelationLastName] into surname_analysis FROM [access].[dbo].[jh_surname_ac_020];

SELECT *, LEFT(VoterNameEn, NULLIF(CHARINDEX(' ', VoterNameEn) -1, -1)) AS [VoterFirstName],
RIGHT(VoterNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterNameEn)) -1, -1),
LEN(VoterNameEn))) AS [VoterLastName] into surname_analysis1 FROM [access].[dbo].[surname_analysis];

--- FamilSize Calculation (Count Voter based on Unique HouseNo)
 select PartNo,SectionNo,HouseNoEn,count(VoterNameEn) as FamilySize 
 into FamilyLength from [access].[dbo].[surname_analysis]
 group by PartNo,SectionNo,HouseNoEn order by PartNo,SectionNo,HouseNoEn
 
 ---Create New Column in Dataset i.e. FamilySize
 alter table [access].[dbo].[surname_analysis] add FamilSize int ;
 
 --- Update FamilSize in TABLE
UPDATE [access].[dbo].[hr_ac_003]
SET [FamilySize] = b.FamilySize 
FROM  [access].[dbo].[hr_ac_003] a Left JOIN [access].[dbo].[FamilyLength] b 
ON a.PartNo = b.PartNo and a.SectionNo =b.SectionNo, a.HousenoEn = b.HouseNoEn ;
 
 --- REPLACE M, F and OTHERS
 update [access].[dbo].[surname_analysis]
set Sex=replace(Sex,'F','Female');

update [access].[dbo].[surname_analysis]
set Sex=replace(Sex,'M','Male');

update [access].[dbo].[surname_analysis]
set Sex=replace(Sex,'O','Other');

update [access].[dbo].[surname_analysis]
set Sex=replace(Sex,'T','Other') where sex='T';
 
 --- Update table on the basis of PartNo, SectionNo and HouseNoEn
 
 update [access].[dbo].[surname_analysis] 
 set FamilySize = [access].[dbo].[FamilyLength].FamilySize
 from [access].[dbo].[FamilyLength]
 where  [access].[dbo].[surname_analysis].PartNo = [access].[dbo].[FamilyLength].PartNo
 and [access].[dbo].[surname_analysis].SectionNo = [access].[dbo].[FamilyLength].SectionNo
 and [access].[dbo].[surname_analysis].HouseNoEn = [access].[dbo].[FamilyLength].HouseNoEn ;
 
 --- Update rows syntax
update [access].[dbo].[surname_analysis]
set VoterLastName=replace(VoterLastName,'DEVI', 'Devi');


--- Update Table Syntax
insert into [State_Religion].[dbo].[Muslim_Surname] (Surname, Religion)
values ('Nisha', 'Muslim')

--- For Specific Insert
update [access].[dbo].[surname_analysis]
set Religion='Hindu'
where VoterLastName in('Bharadwaj', 'Bharadvaj', 'Vishwas','Prjapti','Muiyo', 'Mirdha','Sinaha',
'Vishrwakarma','Vishkarma', 'Masomat','Vaidh', 'Baidh', 'Panday','Kor','Kesari', 'Keshri', 'Svami', 'Agrval',
'Bhuia', 'Davei', 'sagar', 'dusadh', 'sukhala', 'mehata', 'prajapati', 'prajapat', 'yadaw', 
'gosvami', 'goswaami', 'sing', 'pasawan', 'kahar', 'bala', 'kushvah', 'lakra', 'BHOOIYAN', 'HANSDA', 'Vask', 'Majhi', 'Waske', 'Tuddu', 'Kishor', 
'Bhuinya','Bhuinyo', 'Pandey', 'BARNWAL', 'HEMBROM','MARANDI', 'BESRA', 'MAL‍HAR', 'Kudas', 'Gauswami',
'PRJAPATI','HEMBRAM','Prajapit', 'Deenbandhu','Shaw', 'Pande','Bhushan', 'Shav', 'Gautam', 'Rabidas');

update [access].[dbo].[surname_analysis]
set Religion='Muslim'
where VoterLastName in('Shekh', 'Ualam', 'Khatuun', 'Yunus', 'Khalun', 'Kayum', 'Parwin', 
'Alahar','Abbedin', 'Rajiya', 'Mohammd', 'Kamaruddin','Nejami', 'Faizi', 'Asari', 'Nishan', 'Khataoon',
'Satar','Miy','Hafis', 'Akhatar','Hasanain', 'Miyna','Vanu', 'Vano','PARVIN', 'PHATIMA','VAHID','SAIN', 'GAFUR', 'Khalif', 'KUDDUS', 'Samasuddin',
'Asin','Hamida','GAFUR', 'ANARI','GAFUR','Subhan','Farukh','PRVEEN', 'HINA', 'SULEMAN', 'Ahamud', 
'HUSAINUU', 'ALAUDIN','MINYA', 'Muiya', 'Mojjalim', 'TARAN‍N‍NUM','Mirja','Khtoon','ASMI', 'TABSUM',
 'Sulatan', 'Asanri','GUDAN', 'Hamida', 'Kyum', 'Nasidin', 'FIROUS', 'GAFAR', 'Qayum','Annsari', 'ASARAF');
 
 

--- To cross check 

select * from [access].[dbo].[surname_analysis] where VoterLastName in('BHOOIYAN', 'HANSDA', 'Vask', 'Majhi', 'Waske', 'Tuddu', 'Kishor', 
'Bhuinya','Bhuinyo', 'Pandey', 'BARNWAL', 'HEMBROM','MARANDI', 'BESRA', 'MAL‍HAR', 'Kudas', 'Gauswami',
'PRJAPATI','HEMBRAM','Prajapit', 'Deenbandhu','Shaw', 'Pande','Bhushan', 'Shav', 'Gautam', 'Rabidas','Baidy', 'Vaidy', 'Baidya','DHAVAN','RAUSHAN', 'Bhuiy', 'KESRI', 'Kusinh','Laheri',
'Lahri','Kumari', 'Halvai','MEHTO','Muiya', 'Davi','Mahatea', 'Kumari', 'KUSAWAHA', 'KUSHAWAHA','BHUYIA',
'KISHORE','Mehat','Mishtri', 'KUJOOR','MALHAR', 'MAHETA','Kumari', 'KEUMARI', 'ORAON','Kachchhap', 'Kachchhay',
'RATHOR', 'URANV', 'DWEVEDI', 'KUAMR', 'MEHTO','Choudhri','DIKSIT','Kiran','Devy', 'MALHOR', 'SRIVASTAW','TIG‍GA', 'Rajvar','Rajwar','Rabidash',
'MOSOMT', 'Pramehata', 'PUROOSHOTAM', 'Mehato', 'AANNAD','Agwal','MAHTA','Parvar','Sinh','Kaprdar','Kaparada','Virhor',
'PODDAR','KESHARI','WARNWAL','VIRHOR', 'Rwanambal', 'BHAVAN','ARAWAL', 'BIRHORIN', 'GHATVAR','SAHDEV', 'Chandravan','Chandravanshi', 'Ravidasa',
 'PRJAPAT','GANJHU','BHOK‍TA', 'Bhokata','Bhuiyana', 'Kusha', 'Yaday','CHOUDHARI','Choadhari', 'KOOMAR',
  'LOHARA', 'Mali', 'SIHAN', 'UPADHYAYA', 'Upadhyasay','Upaghya','UPADHYA','KUSHVHA','Koushilya', 
  'Virhor','Bihor','Birahor', 'OJHA', 'Yadab','MUNDA') and Religion = 'Muslim';
  
--- Pattern Based cross check and fill data
update [access].[dbo].[surname_analysis]
set Religion='Hindu'
where Religion is null and VoterNameEn Like '%PURUSHOTTAM' ;