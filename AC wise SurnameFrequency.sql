----Remove duplicate from main dataframe
SELECT distinct [ACNo],[PartNo],[SectionNo],[SNo],[HouseNoEn],[HouseNo],[VoterNameEn],[VoterName],[Sex],[RelationNameEn],[RelationName],
  [RelationType],[Age],[VoterID], [SectionName],[SectionNameEn],[PollingStationAddressEn],[PollingStationAddress] into guj_ac_160
  FROM [Gujrat].[dbo].[AC160] order by [PartNo],[SectionNo],[SNo];

----Add column of last name
alter table [master].[dbo].[guj_ac_160] add  VoterSurnameEn nvarchar(50),VoterSurname nvarchar(50),
RelationSurnameEn nvarchar(50), RelationSurname nvarchar(50);
  
---Update voter last name and relation last name (English and Regional) 
UPDATE [master].[dbo].[guj_ac_160]
SET VoterSurnameEn = d.VoterLastEn,
	VoterSurname = e.VoterLastGu,
	RelationSurnameEn = f.RelationLastEn,
	RelationSurname = g.RelationLastGu

FROM [master].[dbo].[guj_ac_160] s
INNER JOIN
(SELECT *, RIGHT(VoterNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterNameEn)) -1, -1),
LEN(VoterNameEn))) AS [VoterLastEn]  FROM [master].[dbo].[guj_ac_160]) as d ON s.VoterID = d.VoterID
INNER JOIN
(SELECT *,RIGHT(VoterName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(VoterName)) -1, -1),
LEN(VoterName))) AS [VoterLastGu]  FROM [master].[dbo].[guj_ac_160])  e ON s.VoterID = e.VoterID
INNER JOIN 
 (SELECT *, RIGHT(RelationNameEn, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationNameEn)) -1, -1),
LEN(RelationNameEn))) AS [RelationLastEn]  FROM [master].[dbo].[guj_ac_160]) as f ON s.VoterID = f.VoterID 
INNER JOIN
(SELECT *,RIGHT(RelationName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(RelationName)) -1, -1),
LEN(RelationName))) AS [RelationLastGu]  FROM [master].[dbo].[guj_ac_160]) as g ON s.VoterID = g.VoterID ;

 ----Count Frequency of the Surname based on Part Name

SELECT ACNo, PartNo, VoterSurnameEn, COUNT(VoterSurnameEn) Frequency
into surname_guj_ac_160 FROM [master].[dbo].[guj_ac_160] 
GROUP BY ACNo,PartNo,VoterSurnameEn ORDER BY PartNo, Frequency desc ;

----Count Frequency of the Surname based on Assembly Constituencies

SELECT ACNo, VoterSurnameEn, COUNT(VoterSurnameEn) Frequency
FROM [master].[dbo].[guj_ac_160] 
GROUP BY ACNo,VoterSurnameEn ORDER BY  Frequency desc

