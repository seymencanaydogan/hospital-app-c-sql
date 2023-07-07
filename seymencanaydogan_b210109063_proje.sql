CREATE DATABASE Hospital_Database
USE Hospital_Database

CREATE TABLE Hospital(
	HospID int IDENTITY(1,1) PRIMARY KEY,
	CommercialName nvarchar(30) NULL,
	Degree nvarchar(20) NULL,
	TaxNo nvarchar(20) NULL,
	Ownership_ nvarchar(30) NULL,
	Address_ nvarchar(60) NULL,
	Telephone char(11) NULL,
	Fax nvarchar(30) NULL )


CREATE TABLE Clinic(
	ClinicID int IDENTITY(1,1) PRIMARY KEY,
	ClinicName nvarchar(40) NULL,
	ClinicFee smallmoney NULL,
	InternalTel char(11) NULL,
	HospID int NULL )

CREATE TABLE Admin_(
	AdminID int IDENTITY(1,1) PRIMARY KEY,
	StaffID int NULL,
	Password_ nvarchar(20) NULL )


CREATE TABLE Staff(
	StaffID int IDENTITY(1,1) PRIMARY KEY,
	RecordNo char(20) NULL,
	TcNo char(11) NOT NULL,
	S_Name nvarchar(20) NOT NULL,
	S_Surname nvarchar(20) NOT NULL,
	Address_ nvarchar(60) NULL,
	Birthdate datetime NULL,
	Sex char(1) NULL,
	MobileNo char(11) NULL,
	Email nvarchar(40) NULL,
	Education nvarchar(40) NULL,
	DipNo nvarchar(30) NULL,
	DegreeID int NULL,
	ClinicID int NULL,
	HospID int NULL )

CREATE TABLE Patient(
	PatientID int IDENTITY(1,1) PRIMARY KEY,
	TaxNo char(20) NULL,
	TcNo char(11) NOT NULL,
	P_Name nvarchar(20) NOT NULL,
	P_Surname nvarchar(20) NOT NULL,
	Address_ nvarchar(60) NULL,
	Birthdate datetime NULL,
	Sex char(1) NULL,
	MobileNo char(11) NULL,
	Email nvarchar(40) NULL,
	RegisterDate datetime NULL
 )

CREATE TABLE Examination (
	ExaminationID int IDENTITY(1,1) PRIMARY KEY,
	PatientID int NOT NULL,
	ClinicID int NOT NULL,
	DoctorID int NOT NULL,
	Report_ nvarchar(100) NULL,
	ExaminationDate datetime NULL,
	ExaminationDiag nvarchar(60) NULL,
	ExaminationRes nvarchar(60) NULL,
)

CREATE TABLE Prescription (
	PrescriptionID int IDENTITY(1,1) PRIMARY KEY,
	ExaminationID int NOT NULL,
	PrescriptionDate datetime NULL
)

CREATE TABLE Analysis (
	AnalysisID int IDENTITY(1,1) PRIMARY KEY,
	AnalysisTitle nvarchar(30) NOT NULL,
	AnalysisDetail nvarchar(60) NULL,
	AnalysisType nvarchar(60) NULL,
	AnalysisFee smallmoney NULL,
)

CREATE TABLE Medicine (
	MedicineID int IDENTITY(1,1) PRIMARY KEY,
	MedicineTitle nvarchar(30) NOT NULL,
	MedicineUsage nvarchar(60) NULL,
	MedicineType nvarchar(30) NULL,
	Prospectus text NULL,
)

CREATE TABLE Service_ (
	ServiceID int IDENTITY(1,1) PRIMARY KEY,
	ServiceTitle nvarchar(30) NOT NULL,
	ServiceResp nvarchar(30) NULL,
	ServiceTelNo char(11) NULL,
	ServiceType nvarchar(30) NULL,
	Rooms nvarchar(30) NULL,
)

CREATE TABLE Rooms (
	RoomID int IDENTITY(1,1) PRIMARY KEY,
	RoomNo tinyint NOT NULL,
	ServiceID int NOT NULL,
	RoomEquip nvarchar(30) NULL,
	RoomCapacity tinyint NULL,
	RoomType nvarchar(30) NULL,
)

CREATE TABLE Degree (
	DegreeID int IDENTITY(1,1) PRIMARY KEY,
	DegreeTitle nvarchar(15) NULL,
	DegreeDesc nvarchar(30) NULL,
)

CREATE TABLE AppointmentReq (
	AppointmentID int IDENTITY(1,1) PRIMARY KEY,
	PatientID int NOT NULL,
	TcNo char(11) NOT NULL,
	AppointmentDate datetime NULL,
	ClinicName nvarchar(30) NOT NULL,
	DoctorName nvarchar(30) NOT NULL,
	Report text NOT NULL,
	Status_ nvarchar(15) NULL,
)

CREATE TABLE ExaminationAn (
	AnalysisID int NULL,
	ExaminationID int NULL,
)

CREATE TABLE MedicinePres (
	MedicineID int NULL,
	PrescriptionID int NULL,
) 

INSERT INTO Hospital (CommercialName,Degree,TaxNo, Ownership_, Address_, Telephone, Fax ) VALUES('Bahçeþehir LÝV','Hastane','A3456HJ88W','MedicalPark',
'Bahçeþehir Aþýk Veysel 34517 Ýstanbul/TR','8884466','02128884466@fax.tc')

INSERT INTO Hospital (CommercialName,Degree,TaxNo, Ownership_, Address_, Telephone, Fax ) VALUES('Beylikdüzü LÝV','Hastane','A3756HRK8W','MedicalPark',
'Beylikdüzü Gürpinar 34981 Ýstanbul/TR','8885566','02128885566@fax.tc')

INSERT INTO Clinic (ClinicName,ClinicFee,InternalTel,HospID) VALUES('Dahiliye',269,'05367894545',1)
INSERT INTO Clinic (ClinicName,ClinicFee,InternalTel,HospID) VALUES('Cildiye',334,'05367891235',1)
INSERT INTO Clinic (ClinicName,ClinicFee,InternalTel,HospID) VALUES('Kulak/Burun/Boðaz',199,'05369594545',1)
INSERT INTO Clinic (ClinicName,ClinicFee,InternalTel,HospID) VALUES('Acil',151,'05377898946',1)
INSERT INTO Clinic (ClinicName, ClinicFee, InternalTel, HospID) VALUES ('Göz Hastalýklarý', 285, '05361234567', 1)
INSERT INTO Clinic (ClinicName, ClinicFee, InternalTel, HospID) VALUES ('Ortopedi', 410, '05363456789', 1)
INSERT INTO Clinic (ClinicName, ClinicFee, InternalTel, HospID) VALUES ('Nöroloji', 320, '05365678901', 1);


INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Dr.','Doktor')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Uz.Dr.','Uzman Doktor')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Prof.Dr.','Profesör Doktor')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Doç.Dr.','Doçent Doktor')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Hemþire','Hemþire')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('B.Hemþire','Baþ Hemþire')
INSERT INTO Degree(DegreeTitle,DegreeDesc) VALUES ('Týb.Sek.','Týbbi Sekreter')
INSERT INTO Degree (DegreeTitle, DegreeDesc) VALUES ('Op.','Operatör');
INSERT INTO Degree (DegreeTitle, DegreeDesc) VALUES ('Stj.','Stajer');



INSERT INTO Staff (RecordNo,TcNo ,S_Name ,S_Surname ,Address_ ,Birthdate, Sex , MobileNo ,Email , Education, DipNo , DegreeID , ClinicID , HospID)
VALUES('H45KJSWER','31753815924','Seymen','Aydoðan','Esenkent Orkide D13 Ýst/TR','2003-05-04','E','05374138270','b210109063@subu.edu.tr','SUBU TIP','73848',2,1,1)

INSERT INTO Staff (RecordNo,TcNo ,S_Name ,S_Surname ,Address_ ,Birthdate, Sex , MobileNo ,Email , Education, DipNo , DegreeID , ClinicID , HospID)
VALUES('HKHJ3345','56789712345','Can','Kahraman','Esenyurt Çýnar D9 Ýst/TR','1996-05-01','E','05374567880','cankahraman@ktü.edu.tr','KTÜ TIP','6745',1,3,1)

INSERT INTO Staff (RecordNo,TcNo ,S_Name ,S_Surname ,Address_ ,Birthdate, Sex , MobileNo ,Email , Education, DipNo , DegreeID , HospID)
VALUES('KJHJ3498','36787909234','Sanem','Kýzýl','Esenkent Açelya D14 Ýst/TR','1997-07-04','k','05474118271','k4594@subu.edu.tr','SUBU TBS','47689',7,1)

INSERT INTO Staff (RecordNo, TcNo, S_Name, S_Surname, Address_, Birthdate, Sex, MobileNo, Email, Education, DipNo, DegreeID, ClinicID, HospID)
VALUES ('YUJF4657', '12345678901', 'Gizem', 'Yýlmaz', 'Kadýköy Sokak 123 Ýst/TR', '1990-10-15', 'K', '05361234567', 'gizem.yilmaz@example.com', 'Marmara Üniversitesi Týp', '12345', 2, 4, 1);

INSERT INTO Staff (RecordNo, TcNo, S_Name, S_Surname, Address_, Birthdate, Sex, MobileNo, Email, Education, DipNo, DegreeID, ClinicID, HospID)
VALUES ('ASDF7890', '98765432109', 'Ali', 'Demir', 'Beþiktaþ Caddesi 456 Ýst/TR', '1985-08-20', 'E', '05369876543', 'ali.demir@example.com', 'ÝÜ Týp', '56789', 3, 5, 1);


INSERT INTO Patient (TaxNo  ,TcNo  ,P_Name  ,P_Surname  ,Address_ , Birthdate  , Sex  ,MobileNo  , Email , RegisterDate)
VALUES('T3847','36189728923','Ayþe','Durmuþ','Bahçelievler Örnek E34 Ýst/TR','1992-07-04','K','05474893476','ayse12@gmail.com','2023-05-22')

INSERT INTO Patient (TaxNo  ,TcNo  ,P_Name  ,P_Surname  ,Address_ , Birthdate  , Sex  ,MobileNo  , Email , RegisterDate)
VALUES('T6543','45678925921','Kamil','Kemal','Baþakþehir Bizimevler 2 Ýst/TR','2000-03-09','E','05678954736','kamilkemal@gmail.com','2023-05-22')

INSERT INTO Examination  (PatientID   ,ClinicID   ,DoctorID   ,Report_   ,ExaminationDate  , ExaminationDiag   , ExaminationRes)
VALUES(1,1,1,'Hasta þiddetli karýn aðrýsý geçiriyor','2023-05-22','Safra  kesesi bulgusuna rastlandý.','Hasta ameliyat sýrasýna alýndý.')

INSERT INTO Examination  (PatientID   ,ClinicID   ,DoctorID   ,Report_   ,ExaminationDate  , ExaminationDiag   , ExaminationRes)
VALUES(2,3,3,'Grip/Boðaz aðrýsý','2023-05-22','Akut Faranjit tanýsý koyuldu.','Ýlaç yazýldý.')

INSERT INTO Prescription (ExaminationID ,PrescriptionDate )
VALUES(1,'2023-05-22 14:58')

INSERT INTO Prescription (ExaminationID ,PrescriptionDate )
VALUES(2,'2023-05-22 15:20')

INSERT INTO Analysis (AnalysisTitle ,AnalysisDetail , AnalysisType, AnalysisFee)
VALUES('Kan Tahlil','Kan tahlil istemi','Tahlil',198.99)

INSERT INTO Analysis (AnalysisTitle ,AnalysisDetail , AnalysisType, AnalysisFee)
VALUES('Röntgen','Üst_Alt Batum istemi','Röntgen',219.99)

INSERT INTO Analysis (AnalysisTitle ,AnalysisDetail , AnalysisType, AnalysisFee)
VALUES('MR','Manyetik Rezonans istemi','Aðýr Röntgenler',467.99)

INSERT INTO Analysis (AnalysisTitle ,AnalysisDetail , AnalysisType, AnalysisFee)
VALUES('Ultrason','Ultrason istemi','Ultrason',274.99)

INSERT INTO Analysis (AnalysisTitle, AnalysisDetail, AnalysisType, AnalysisFee)
VALUES ('Ýdrar Tahlili', 'Ýdrar tahlili istemi', 'Tahlil', 89.99);

INSERT INTO Analysis (AnalysisTitle, AnalysisDetail, AnalysisType, AnalysisFee)
VALUES ('EKG', 'Elektrokardiogram istemi', 'Elektrokardiografi', 149.99);

INSERT INTO Analysis (AnalysisTitle, AnalysisDetail, AnalysisType, AnalysisFee)
VALUES ('Ultrason', 'Karýn Ultrasonu istemi', 'Ultrason', 299.99);

INSERT INTO Analysis (AnalysisTitle, AnalysisDetail, AnalysisType, AnalysisFee)
VALUES ('Oksijen Satürasyonu', 'Oksijen Satürasyonu ölçümü', 'Ölçüm', 39.99);


INSERT INTO Medicine (MedicineTitle  ,MedicineUsage  , MedicineType , Prospectus )
VALUES('Buscopan','Sabah-Akþam 2 kere','Aðrý Kesici','buscopan.prospectus.com')

INSERT INTO Medicine (MedicineTitle  ,MedicineUsage  , MedicineType , Prospectus )
VALUES('Majezik','Günde max 3 kere','Aðrý Kesici','majezik.prospectus.com')

INSERT INTO Medicine (MedicineTitle  ,MedicineUsage  , MedicineType , Prospectus )
VALUES('Diyojen','Yemekten sonra','Mide Koruyucu','diyojen1x.prospectus.com')

INSERT INTO Medicine (MedicineTitle, MedicineUsage, MedicineType, Prospectus)
VALUES ('Parol', 'Günde 3 kez', 'Aðrý Kesici', 'parol.prospectus.com');

INSERT INTO Medicine (MedicineTitle, MedicineUsage, MedicineType, Prospectus)
VALUES ('Losec', 'Sabahlarý aç karnýna', 'Mide Koruyucu', 'losec.prospectus.com');

INSERT INTO Medicine (MedicineTitle, MedicineUsage, MedicineType, Prospectus)
VALUES ('Betaserc', 'Yemeklerle birlikte', 'Denge Bozukluklarý', 'betaserc.prospectus.com');

INSERT INTO Medicine (MedicineTitle, MedicineUsage, MedicineType, Prospectus)
VALUES ('Largopen', 'Günde 2 kez', 'Antibiyotik', 'largopen.prospectus.com');

INSERT INTO Medicine (MedicineTitle, MedicineUsage, MedicineType, Prospectus)
VALUES ('Panadol', 'Ýhtiyaç duyuldukça', 'Aðrý Kesici', 'panadol.prospectus.com');


INSERT INTO Service_(ServiceTitle   ,ServiceResp   , ServiceTelNo  , ServiceType  )
VALUES('Yatýþ Odasý','Hande Yenen','05476112323','Yataklý Servis')

INSERT INTO Service_(ServiceTitle   ,ServiceResp   , ServiceTelNo  , ServiceType  )
VALUES('Yoðun Bakým','Zehra Bakýr','05476112323','Acil/Kritik')

INSERT INTO Service_(ServiceTitle   ,ServiceResp   , ServiceTelNo  , ServiceType  )
VALUES('Ameliyathane A1','Yýlmaz Morgül','05123456654','Ameliyathane')

INSERT INTO Service_ (ServiceTitle, ServiceResp, ServiceTelNo, ServiceType)
VALUES ('Poliklinik', 'Ayþe Demir', '05471234567', 'Hastane Hizmetleri');

INSERT INTO Service_ (ServiceTitle, ServiceResp, ServiceTelNo, ServiceType)
VALUES ('Laboratuvar', 'Mehmet Yýlmaz', '05472345678', 'Laboratuvar');

INSERT INTO Service_ (ServiceTitle, ServiceResp, ServiceTelNo, ServiceType)
VALUES ('Fizik Tedavi', 'Ahmet Kaya', '05473456789', 'Rehabilitasyon');

INSERT INTO Service_ (ServiceTitle, ServiceResp, ServiceTelNo, ServiceType)
VALUES ('Radyoloji', 'Seda Can', '05474567890', 'Radyoloji');


INSERT INTO Rooms (RoomNo ,ServiceID , RoomEquip ,RoomCapacity, RoomType)
VALUES(5,1,'Yatak,Ýlaç ekipmanlarý',4,'Serum Yatýþ Odasý')

INSERT INTO Rooms (RoomNo ,ServiceID , RoomEquip , RoomCapacity, RoomType)
VALUES(6,1,'Yatak,Ýlaç ekipmanlarý',6,'Ýðne/Kan Tahlil Odasý')


INSERT INTO AppointmentReq (PatientID  ,TcNo  , AppointmentDate  , ClinicName , DoctorName, Report )
VALUES(1,'36189728923','2023-05-22','Dahiliye','Seymen Aydoðan','Karýn Aðrýsý/ Mide Þikayeti')


INSERT INTO ExaminationAn  (AnalysisID ,ExaminationID )
VALUES(1,1)

INSERT INTO MedicinePres   (MedicineID  ,PrescriptionID  )
VALUES(1,1)
INSERT INTO MedicinePres   (MedicineID  ,PrescriptionID  )
VALUES(3,1)

INSERT INTO MedicinePres   (MedicineID  ,PrescriptionID  )
VALUES(2,2)


INSERT INTO Admin_(StaffID ,Password_ )
VALUES(1,'UZAY12')

INSERT INTO Admin_(StaffID ,Password_ )
VALUES(2,'MACos58.')

INSERT INTO Admin_(StaffID ,Password_ )
VALUES(3,'staff12345')