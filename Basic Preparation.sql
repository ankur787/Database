--- Check lengh of the data
  select max(len(HouseNoEn)) HouseNoEn from [bihar_new_DB].[dbo].[AC199];
  select max(len(HouseNo)) HouseNo from [bihar_new_DB].[dbo].[AC199];
  select max(len(VoterNameEn)) VoterNameEn from [bihar_new_DB].[dbo].[AC199];
  select max(len(VoterName)) VoterName from [bihar_new_DB].[dbo].[AC199];
  select max(len(RelationNameEn)) RelationNameEn from [bihar_new_DB].[dbo].[AC199];
  select max(len(RelationName)) RelationName from [bihar_new_DB].[dbo].[AC199];
  select max(len(ContactNo)) ContactNo from [bihar_new_DB].[dbo].[AC199];
  select max(len(VoterID)) VoterID from [bihar_new_DB].[dbo].[AC199];
  select max(len(StatusType)) StatusType from [bihar_new_DB].[dbo].[AC199];
  select max(len(Sex)) Sex from [bihar_new_DB].[dbo].[AC199];
  select max(len(RelationType)) RelationType from [bihar_new_DB].[dbo].[AC199];
  
  
  --- Check lengh of the Section
  
  select max(len(SectionNameEn)) SectionNameEn from [bihar_new_DB].[dbo].[Section];
  select max(len(SectionName)) SectionName from [bihar_new_DB].[dbo].[Section];
  select max(len(ACNameEn)) ACNameEn from [bihar_new_DB].[dbo].[Section];
  select max(len(ACName)) ACName from [bihar_new_DB].[dbo].[Section];
  select max(len(DistrictNameEn)) DistrictNameEn from [bihar_new_DB].[dbo].[Section];
  select max(len(DistrictName)) DistrictName from [bihar_new_DB].[dbo].[Section];
  select max(len(PollingStationAddressEn)) PollingStationAddressEn from [bihar_new_DB].[dbo].[Section];
  select max(len(PollingStationAddress)) PollingStationAddress from [bihar_new_DB].[dbo].[Section];
  

--- Update datatype

ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [vsno] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [bhno] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [ksno] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [houseno] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [houseno_u] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [anno] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [naam] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [naam_u] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [SEX] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [snaam] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [snaam_u] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [sambandh] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [AGE] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [cardno] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [contactno] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [statustype] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [purak] int;

--- Update datatype
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [ACNo] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [PartNo] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [SNo] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [HouseNoEn] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [HouseNo] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [SNo] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [VoterNameEn] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [VoterName] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [Sex] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [RelationNameEn] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [RelationName] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [StatusType] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [Age] int;
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [VoterID] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [ContactNo] nvarchar(20);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [StatusType] nvarchar(500);
ALTER TABLE [Kerala_July_2019].[dbo].[Supp1] ALTER COLUMN [purak] int;

--- Column Rename
exec sp_rename '[Assam_29_July].[dbo].[AC001].[vsno]','ACNo', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[bhno]','PartNo', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[anno]','SectionNo', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[ksno]','SNo', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[houseno]','HouseNoEn', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[houseno_u]','HouseNo', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[naam]','VoterNameEn', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[naam_u]','VoterName', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[sex]','Sex', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[snaam]','RelationNameEn', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[snaam_u]','RelationName', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[sambandh]','RelationType', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[AGE]','Age', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[cardno]','VoterID', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[statustype]','StatusType', 'Column' ;
exec sp_rename '[Assam_29_July].[dbo].[AC001].[contactno]','ContactNo', 'Column' ;


exec sp_rename '[varanasi].[dbo].[AC391].[ACNo]','ACNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[PartNo]','PartNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[SectionNo]','SectionNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[SLINPART]','SNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[houseno]','HouseNoEn', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[houseno_u]','HouseNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[VName]','VoterNameEn', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[VName_UNI]','VoterName', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[sex]','Sex', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[RelName]','RelationNameEn', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[RelName_UNI]','RelationName', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[Relation]','RelationType', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[AGE]','Age', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[cardno]','VoterID', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[statustype]','StatusType', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[contactno]','ContactNo', 'Column' ;
exec sp_rename '[varanasi].[dbo].[AC391].[PURAK]','Purak', 'Column' ;

--- Address Rename
exec sp_rename '[bihar_new_DB].[dbo].[Section].[SectionName_uni]', 'SectionName' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[SectionName]', 'SectionNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[Part]', 'PollingStationAddressEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[Part_uni]', 'PollingStationAddress' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcName]', 'ACNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcName_Uni]', 'ACName' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcNo]', 'ACNo' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[DistName]', 'DistrictNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[DistName_uni]', 'DistrictName' ,'Column' ;


 --- REPLACE M, F and OTHERS
 update [Assam_29_July].[dbo].[AC001]
set Sex=replace(Sex,'F','Female');

update [Assam_29_July].[dbo].[AC001]
set Sex=replace(Sex,'M','Male');

update [Assam_29_July].[dbo].[AC001]
set Sex=replace(Sex,'O','Other');

update [Assam_29_July].[dbo].[AC001]
set Sex=replace(Sex,'T','Other') ;

 --- REPLACE O, W, H, F and M

 update [Assam_29_July].[dbo].[AC001]
set RelationType=replace(RelationType,'0','Other');

update [Assam_29_July].[dbo].[AC001]
set RelationType=replace(RelationType,'W','Wife');

update [Assam_29_July].[dbo].[AC001]
set RelationType=replace(RelationType,'H','Husband');

update [Assam_29_July].[dbo].[AC001]
set RelationType=replace(RelationType,'F','Father');

update [Assam_29_July].[dbo].[AC001]
set RelationType=replace(RelationType,'M','Mother');

---Insert Supplementry Data 
INSERT INTO [Assam_29_July].[dbo].[AC001] SELECT * FROM [Assam_29_July].[dbo].[Supp1] WHERE ACNo= 1;

--- Address Rename
exec sp_rename '[WB_Address].[dbo].[section].[Section_Name_v1]', 'SectionName' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[Section_Name_En]', 'SectionNameEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[PSBuilding_Name_En]', 'PollingStationAddressEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[PSBuilding_Name_v1]', 'PollingStationAddress' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[AC_NAME_EN]', 'ACNameEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[AC_NAME_v1]', 'ACName' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[PostOffPin]', 'PinCode' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[Part_Name_En]', 'PartNameEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[Part_Name_v1]', 'PartName' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[pcname_En]', 'ParliamentaryConstituencyEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[pcname_v1]', 'ParliamentaryConstituency' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[PC_NO]', 'ParliamentaryConstituencyNo' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[District_ID]', 'DistrictID' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[District_Name_En]', 'DistrictNameEn' ,'Column' ;
exec sp_rename '[WB_Address].[dbo].[section].[District_Name_v1]', 'DistrictName' ,'Column' ;


exec sp_rename '[varanasi].[dbo].[Section].[anubhag]', 'SectionName' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[anubhag_u]', 'SectionNameEn' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[booth]', 'PollingStationAddressEn' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[booth_u]', 'PollingStationAddress' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[vsname]', 'ACNameEn' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[vsname_u]', 'ACName' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[pincode]', 'PinCode' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[jilaname]', 'DistrictNameEn' ,'Column' ;
exec sp_rename '[varanasi].[dbo].[Section].[jilaname_u]', 'DistrictName' ,'Column' ;


exec sp_rename '[bihar_new_DB].[dbo].[Section].[SectionName_uni]', 'SectionName' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[SectionName]', 'SectionNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[Part]', 'PollingStationAddressEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[Part_uni]', 'PollingStationAddress' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcName]', 'ACNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcName_Uni]', 'ACName' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[AcNo]', 'ACNo' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[DistName]', 'DistrictNameEn' ,'Column' ;
exec sp_rename '[bihar_new_DB].[dbo].[Section].[DistName_uni]', 'DistrictName' ,'Column' ;

--- Adding Column for address

alter table [Assam_29_July].[dbo].[AC001]
add SectionName nvarchar(500), SectionNameEn nvarchar(500),ACName nvarchar(75), 
ACNameEn nvarchar(75),PollingStationAddressEn nvarchar(max), 
PollingStationAddress nvarchar(max), PinCode int, DistrictName nvarchar(75), 
DistrictNameEn nvarchar(75),PartNameEn nvarchar(250), PartName nvarchar(250),
ParliamentaryConstituencyEn nvarchar(100), ParliamentaryConstituency nvarchar(100)
ParliamentaryConstituencyType nvarchar(20) ;

--- Update table from address(Section Table)
  update [Assam_29_July].[dbo].[AC001]
  set SectionName =[Assam_29_July].[dbo].[section].SectionName ,
  SectionNameEn =[Assam_29_July].[dbo].[section].SectionNameEn ,
  ACNameEn = [Assam_29_July].[dbo].[section].ACNameEn ,
  ACName = [Assam_29_July].[dbo].[section].ACName, 
  PollingStationAddressEn =[Assam_29_July].[dbo].[section].PollingStationAddressEn, 
  PollingStationAddressEn=[Assam_29_July].[dbo].[section].PollingStationAddress ,
  PinCode = [Assam_29_July].[dbo].[section].PinCode
  where [Assam_29_July].[dbo].[AC001].ACNo = [Assam_29_July].[dbo].[section].vsno
  and [Assam_29_July].[dbo].[AC001].PartNo = [Assam_29_July].[dbo].[section].bhno
  and [Assam_29_July].[dbo].[AC001].SectionNo = [Assam_29_July].[dbo].[section].anno;
  
---Update table from Address (Section Table)

UPDATE [Assam_29_July].[dbo].[AC001]
SET [SectionName] = b.SectionName, 
[SectionNameEn] = b.SectionNameEn, 
[ACName] = b.ACName, [ACNameEn] = b.ACNameEn, 
[PollingStationAddressEn] = b.PollingStationAddressEn, 
[PollingStationAddress] =b.PollingStationAddress, 
[PinCode] =b.PinCode
    
FROM  [Assam_29_July].[dbo].[AC001] a Left JOIN [Assam_July_2019].[dbo].[section] 
b ON a.ACNo = b.vsno and a.PartNo = b.bhno and a.SectionNo =b.anno;

UPDATE [varanasi].[dbo].[AC391]
SET [SectionName] = b.SectionName, 
[SectionNameEn] = b.SectionNameEn, 
[ACName] = b.ACName, [ACNameEn] = b.ACNameEn, 
[DistrictName] = b.DistrictName, [DistrictNameEn] = b.DistrictNameEn,
[PollingStationAddressEn] = b.PollingStationAddressEn, 
[PollingStationAddress] =b.PollingStationAddress, 
[PinCode] =b.PinCode
    
FROM  [varanasi].[dbo].[AC391] a Left JOIN [varanasi].[dbo].[section] 
b ON a.ACNo = b.vsno and a.PartNo = b.bhno and a.SectionNo =b.anno;













