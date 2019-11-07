----Remove duplicate from main dataframe
SELECT distinct [ACNo],[PartNo],[SectionNo],[SNo],[HouseNoEn],[HouseNo],[VoterNameEn],[VoterName],[Sex],[RelationNameEn],[RelationName],
  [RelationType],[Age],[VoterID], [SectionName],[SectionNameEn],[PollingStationAddressEn],[PollingStationAddress] into guj_ac_175
  FROM [Gujrat].[dbo].[AC175] order by [PartNo],[SectionNo],[SNo];

----Add column of last name
alter table [Gujrat].[dbo].[guj_ac_175] add  VoterSurnameEn nvarchar(50),VoterSurname nvarchar(50),
RelationSurnameEn nvarchar(50), RelationSurname nvarchar(50);
  
---Update voter last name (English) 
UPDATE [Gujrat].[dbo].[guj_ac_175]
SET VoterSurnameEn = d.VoterLastEn
FROM [Gujrat].[dbo].[guj_ac_175] s
INNER JOIN
(SELECT *, RIGHT(VoterNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterNameEn)) -1, -1),
LEN(VoterNameEn))) AS [VoterLastEn]  FROM [Gujrat].[dbo].[guj_ac_175]) as d ON s.VoterID = d.VoterID ;

---Update voter last name (Regional) 
UPDATE [Gujrat].[dbo].[guj_ac_175]
SET VoterSurname = d.VoterLastGu
FROM [Gujrat].[dbo].[guj_ac_175] s
INNER JOIN
(SELECT *,RIGHT(VoterName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterName)) -1, -1),
LEN(VoterName))) AS [VoterLastGu]  FROM [Gujrat].[dbo].[guj_ac_175]) as d ON s.VoterID = d.VoterID ;

---Update Relation Last name (English) 
UPDATE [Gujrat].[dbo].[guj_ac_175]
SET RelationSurnameEn = d.RelationLastEn
FROM [Gujrat].[dbo].[guj_ac_175] s
INNER JOIN
(SELECT *, RIGHT(RelationNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationNameEn)) -1, -1),
LEN(RelationNameEn))) AS [RelationLastEn]  FROM [Gujrat].[dbo].[guj_ac_175]) as d ON s.VoterID = d.VoterID ;

---Update Relation Last name (Regional) 
UPDATE [Gujrat].[dbo].[guj_ac_175]
SET RelationSurname = d.RelationLastGu
FROM [Gujrat].[dbo].[guj_ac_175] s
INNER JOIN
(SELECT *,RIGHT(RelationName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationName)) -1, -1),
LEN(RelationName))) AS [RelationLastGu]  FROM [Gujrat].[dbo].[guj_ac_175]) as d ON s.VoterID = d.VoterID ;

 ----Count Frequency of the Surname based on Voter Surname

SELECT ACNo, PartNo, VoterSurnameEn, COUNT(VoterSurnameEn) Frequency
into surname_guj_ac_175 FROM [Gujrat].[dbo].[guj_ac_175] 
GROUP BY ACNo,PartNo,VoterSurnameEn ORDER BY PartNo, Frequency desc ;

----Remove duplicate from main dataframe

SELECT distinct [ACNo],[PartNo],[SectionNo],[SNo],[HouseNoEn],[HouseNo],[VoterNameEn],[VoterName],[Sex],[RelationNameEn],[RelationName],
  [RelationType],[Age],[VoterID], [SectionName],[SectionNameEn],[PollingStationAddressEn],[PollingStationAddress] into guj_ac_176
  FROM [Gujrat].[dbo].[AC176] order by [PartNo],[SectionNo],[SNo];

----Add column of Last Name
alter table [Gujrat].[dbo].[guj_ac_176] add  VoterSurnameEn nvarchar(50),VoterSurname nvarchar(50),
RelationSurnameEn nvarchar(50), RelationSurname nvarchar(50);
  
---Update Voter Last Name (English) 
UPDATE [Gujrat].[dbo].[guj_ac_176]
SET VoterSurnameEn = d.VoterLastEn
FROM [Gujrat].[dbo].[guj_ac_176] s
INNER JOIN
(SELECT *, RIGHT(VoterNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterNameEn)) -1, -1),
LEN(VoterNameEn))) AS [VoterLastEn]  FROM [Gujrat].[dbo].[guj_ac_176]) as d ON s.VoterID = d.VoterID ;

---Update Voter Last Name (Regional) 
UPDATE [Gujrat].[dbo].[guj_ac_176]
SET VoterSurname = d.VoterLastGu
FROM [Gujrat].[dbo].[guj_ac_176] s
INNER JOIN
(SELECT *,RIGHT(VoterName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterName)) -1, -1),
LEN(VoterName))) AS [VoterLastGu]  FROM [Gujrat].[dbo].[guj_ac_176]) as d ON s.VoterID = d.VoterID ;

---Update Relation Last Name (English) 
UPDATE [Gujrat].[dbo].[guj_ac_176]
SET RelationSurnameEn = d.RelationLastEn
FROM [Gujrat].[dbo].[guj_ac_176] s
INNER JOIN
(SELECT *, RIGHT(RelationNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationNameEn)) -1, -1),
LEN(RelationNameEn))) AS [RelationLastEn]  FROM [Gujrat].[dbo].[guj_ac_176]) as d ON s.VoterID = d.VoterID ;

---Update Relation Last Name (Regional) 
UPDATE [Gujrat].[dbo].[guj_ac_176]
SET RelationSurname = d.RelationLastGu
FROM [Gujrat].[dbo].[guj_ac_176] s
INNER JOIN
(SELECT *,RIGHT(RelationName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationName)) -1, -1),
LEN(RelationName))) AS [RelationLastGu]  FROM [Gujrat].[dbo].[guj_ac_176]) as d ON s.VoterID = d.VoterID ;

 ----Count Frequency of the Surname based on Voter Surname

SELECT ACNo, PartNo, VoterSurnameEn, COUNT(VoterSurnameEn) Frequency
into surname_guj_ac_176 FROM [Gujrat].[dbo].[guj_ac_176] 
GROUP BY ACNo,PartNo,VoterSurnameEn ORDER BY PartNo, Frequency desc ;