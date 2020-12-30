--------------------------------------------------------
--  File created - Wednesday-December-30-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DOCUMENTS
--------------------------------------------------------

  CREATE TABLE "METRI"."DOCUMENTS" 
   (	"DOCUMENT_ID" NUMBER, 
	"TITLE" VARCHAR2(255 BYTE), 
	"ABSTRACT" LONG, 
	"PUBLISH" NUMBER(*,0) DEFAULT 0, 
	"CREATED_AT" TIMESTAMP (6), 
	"USER_ID" NUMBER(*,0), 
	"TYPE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOCUMENT_CHANGE_LOGS
--------------------------------------------------------

  CREATE TABLE "METRI"."DOCUMENT_CHANGE_LOGS" 
   (	"TIME" TIMESTAMP (6), 
	"DOCUMENT_ID" NUMBER, 
	"LOG" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOCUMENT_HAS_SUBJECTS
--------------------------------------------------------

  CREATE TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" 
   (	"SUBJECT_ID" NUMBER, 
	"DOCUMENT_ID" NUMBER, 
	"CREATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOCUMENT_SUBJECTS
--------------------------------------------------------

  CREATE TABLE "METRI"."DOCUMENT_SUBJECTS" 
   (	"SUBJECT_ID" NUMBER, 
	"NAME" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOCUMENT_TYPES
--------------------------------------------------------

  CREATE TABLE "METRI"."DOCUMENT_TYPES" 
   (	"TYPE_ID" NUMBER, 
	"NAME" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILES
--------------------------------------------------------

  CREATE TABLE "METRI"."FILES" 
   (	"FILE_ID" NUMBER, 
	"DOCUMENT_ID" NUMBER, 
	"PATH" VARCHAR2(255 BYTE), 
	"NAME" VARCHAR2(64 BYTE), 
	"CONTENT_TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "METRI"."USERS" 
   (	"USER_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(32 BYTE), 
	"FAMILY" VARCHAR2(64 BYTE), 
	"EMAIL" VARCHAR2(64 BYTE), 
	"GENDER" NUMBER(*,0), 
	"BIRTH" DATE, 
	"CREATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into METRI.DOCUMENTS
SET DEFINE OFF;
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (101,'Peningkatan Hasil Belajar Aqidah Akhlak Materi Adab Shalat Dan Dzikir Melalui Metode Group Investigation Pada Siswa Kelas VII MTs Rohmatullah Cokro Grabag Kabupaten Magelang Tahun Pelajaran 2017/2018','Penelitian ini bertujuan untuk peningkatan hasil belajar Akidah Akhlak materi adab shalat dan dzikir pada siswa MTs Rahmatuallah Cokro. Pertayaan yang ingin dijawab peneliti ini adalah Apakah metode Group Investigation dapat meningkatkan hasil belajar Aqidah Akhlak materi Adab Salat dan Dzikir pada siswa kelas VII MTs Rohmatullah Cokro Grabag Kabupaten Magelang Tahun Pelajaran 2017/2018?. Adapun Penelitian Tindakan Kelas (PTK) Teknik pengumpulan data yang dilaksanakan adalah dokumentasi, observasi dan tes. Kemudian melaksanakan 2 kali siklus, adapun masing-masing siklus terdiri dari empat tahapan yaitu perencanaan, pelaksanaan, pengamatan, dan refleksi, kemudian masing-masing siklus setelah diadakan pembahasan dan pelaksanaannya selama proses pembelajaran, kemudian diakhiri dengan tes tertulis, kemudian nilai hasil belajar tersebut dianalisa dan direfleksi untuk mengetahui keberhasilan tujuan penelitian sesuai yang telah dirumuskan. Hasil penelitian menunjukkan bahwa nilai hasil belajar Akidah Akhlak materi adab shalat dan dzikir yang selalu mengalami kenaikan baik pada siklus pertama maupun siklus kedua jika dibandingkan dengan hasil belajar siswa pada kondisi awal yaitu dengan rata-rata 71.14 dan presentase ketuntasan kondisi awal 45.71%, sedang setelah dilaksanakan tindakan pada siklus pertama mencapai nilai hasil belajar rata-rata 76.48, dari 35 siswa yang memenuhi KKM hanya 7 siswa dan presentasi ketuntasan siklus pertama 80%. Sedangkan tindakan pada siklus kedua mencapai nilai hasil belajar rata-rata 94.28 dan presentasi ketuntasannya 97.14%, dari 35 siswa yang memenuhi KKM sebanyak 34 siswa.',1,to_timestamp('28-DEC-20 07.54.50.332889000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (102,'Peningkatan Hasil Belajar PAI Materi Asmaul Husna Melalui Metode Snowball Throwing Pada Siswa Kelas X IPA 1 SMA YASIHA Gubug Kabupaten Grobogan Tahun Pelajaran 2017/2018','Penelitian ini merupakan upaya untuk meningkatkan prestasi belajar PAI melalui metode pembelajaran Snowball Throwing pada siswa kelas X IPA 1 SMA YASIHA Gubug. Rumusan masalah dalam penelitian ini adalah Apakah metode penbelajaran Snowball Throwing dapat meningkatkan hasil belajar PAI materi Asmaul Husna pada siswa kelas X IPA 1 SMA YASIHA Gubug tahun pelajaran 2017/2018? Penelitian ini termasuk Penelitian Tindakan Kelas (PTK) terdiri dari dua siklus. Pengumpulan data ini menggunakan metode observasi, metode dokumentasi, dan metode tes. Hasil penelitian ini dapat disimpulkan bahwa metode Snowbal Throwing dapat meningkatkan hasil belajar PAI materi Asmaul Husna pada siswa kelas X IPA 1 SMA YASIHA Gubug Kabupaten Grobogan tahun pelajaran 2017/2018. Peningkatan tersebut dapat dilihat dari hasil Penelitian Tindakan Kelas (PTK) yang dilakukan pada dua tingkatan yaitu siklus I dan siklus II yang menghasilkan nilai hasil belajar siswa mengalami peningkatan. Pada siklus I siswa yang dengan KKM 71 sebanyak 23 siswa atau 65,7% dengan nilai rata-rata 76. Pada siklus II siswa yang tuntas dengan KKM 71 sebanyak 31 siswa atau 88,5% dengan nilai rata-rata 85,1%',1,to_timestamp('28-DEC-20 07.55.56.236784000 PM','DD-MON-RR HH.MI.SSXFF AM'),11,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (103,'PENGARUH OPTIMISME MASA DEPAN TERHADAP MOTIVASI BELAJAR (STUDI MAHASISWA PAI SEMESTER 3 IAIN SALATIGA TH 2018) ','Penelitian ini bertujuan untuk mengetahui pengaruh optimisme masa depan terhadap motivasi belajar Mahasiswa IAIN Salatiga Jurusan PAI Semester 3 tahun 2018. Penelitian ini menggunakan sampel sejumlah 40 Mahasiswa, yang terdiri dari laki-laki sebanyak 7 Mahasiswa dan subjek perempuan sebanyak 33 Mahasiswa. Penelitian ini merupakan penelitian kuantitatif dengan alat ukur berupa skala motivasi model Likert.Tekhnik pengumpulan data menggunakan metode angket, observasi, dan dokumentasi. Analisis data meggunakan analisis kuantitatif dan analisis uji Hepotesis. Hasil penelitian ini menyatakan mayoritas Mahasiswa PAI Semester 3 memiliki optimisme masa depan dengan kategori rendah dan motivasi belajar dalam kategori sedang. Pada uji hepotesis didapatkan hasil bahwa terdapat pengaruh yang signifikan mengenai optimisme masa depan terhadap motivasi belajar dengan korelasional Rxy sebesar 0,694 dan nilai R tabel 0,413. Maka dapat ditarik kesimpulan bahwa semakin tinggi optimisme masa depan Mahasiswa maka semakin tinggi pula motivasi belajarnya.',1,to_timestamp('28-DEC-20 07.59.03.603830000 PM','DD-MON-RR HH.MI.SSXFF AM'),12,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (104,'Peningkatan Hasil Belajar Pendidikan Agama Islam Materi Hukum Bacaan Nun Sukun/Tanwin dan Mim Sukun dengan Model Course Review Horay (CRH) pada Siswa kelas VII F SMPN 5 Salatiga Tahun Pelajaran 2017/2018 ','Penelitian ini dilatarbelakangi pembelajaran Pendidikan Agama Islam yang berlangsung di SMPN 5 Salatiga terutama pada kelas VII F cenderung hanya menggunakan metode ceramah. Sehingga siswa jarang berperan aktif saat pembelajaran berlangsung karena guru hanya menjelaskan sedangkan siswa hanya mendengarkan dan mencatat. Sehingga nilai-nilai yang didapatkan siswa dalam pembelajaran Pendidikan Agama Islam kurang memuaskan, hal ini terbukti dari hasil belajar siswa yang masih rendah dengan nilai rata-rata siswa 68,53 (65,38% dari seluruh siswa) belum mencapai KKM sekolah. Salah satu solusi untuk permasalahan tersebut perlu diterapkannya pembelajaran alternatif yang dapat merangsang aktivitas siswa dalam mengikuti proses pembelajaran, sehingga siswa akan berperan aktif dan memberikan feedback positif. Salah satu model pembelajaran yang dapat dipakai adalah model Course Review Horay (CRH) yang lebih menekankan pada pemahaman materi yang diajarkan guru dengan menjawab soal-soal dan mendorong siswa untuk aktif. Tujuan yang ingin dicapai dalam penelitian skripsi ini adalah: Untuk mengetahui peningkatan hasil belajar Pendidikan Agama Islam materi hukum bacaan nun sukun/tanwin dan mim sukun dengan model course review horay (CRH) pada siswa kelas VII F SMPN 5 Salatiga tahun pelajaran 2017/2018. Penelitian ini merupakan Classroom Action Research atau Penelitian Tindakan Kelas (PTK) yang terdiri dari dua siklus yaitu siklus I dan siklus II. Teknik pengumpulan data yang digunakan dalam penelitian ini adalah metode tes, observasi, dan dokumentasi. Subyek penelitian ini adalah siswa kelas VII F SMPN 5 Salatiga sebanyak 26 siswa. Hasil dari penelitian ini mulai dari siklus I ke siklus II mengalami peningkatan ketuntasan siswa. Siklus I memiliki data ketuntasan hasil belajar siswa sebanyak 19 siswa atau persentasenya adalah 73,07%. Data ketuntasan siswa yang dimiliki siklus II yaitu sebanyak 23 siswa yang tuntas dan dalam persentasenya adalah 88,46% sehingga, dari siklus I ke siklus II mengalami peningkatan jumlah siswa yang tuntas sebanyak 4 siswa atau sebanyak 15,39%. Adapun, nilai rata-rata kelas yang diperoleh dari hasil nilai setiap siklus juga mengalami peningkatan yaitu pada siklus I memiliki rata-rata 75 dan pada siklus II memiliki rata-rata 87,5 yang meningkat 12,5 dari siklus I. Pencapaian KKM kelas pada siklus II 88,46% lebih besar dari KKM klasikal 85%. Oleh karena itu, penelitian tindakan kelas ini dinyatakan berhasil untuk meningkatkan hasil belajar Pendidikan Agama Islam siswa kelas VII F SMPN 5 Salatiga',1,to_timestamp('28-DEC-20 08.01.31.773081000 PM','DD-MON-RR HH.MI.SSXFF AM'),13,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (105,'Pendidikan Agama Islam Dalam Keluarga Untuk Pencegahan Kenakalan Remaja (Studi Kasus di Dusun Karang Talun Desa Mlilir Kecamatan Bandungan Kabupaten Semarang Tahun 2018) ','Penelitian ini bertujuan untuk mengetahui pendidikan agama Islam dalam keluarga dan pencegahan kenakalan remaja di dusun Karang Talun desa Mlilir kecamatan Bandungan kabupaten Semarang. Rumusan masalah dalam penelitian ini adalah 1) bagaimana cara pendidikan agama Islam dalam keluarga? 2) bagaimana pencegahan kenakalan remaja? Jenis penelitian ini adalah jenis penelitian studi kasus (case study) dan bersifat kualitatif. Sumber data dalam penelitian ini meliputi sumber primer yang diperoleh dari informan, dan informan utama dalam penelitian ini adalah keluarga yang mempunyai anak remaja 13-21 tahun di dusun Karang Talun desa Mlilir kecamatan Bandungan kabupaten Semarang. Pengumpulan data ini dilakukan dengan observasi, wawancara, dan dokumentasi. Hasil penelitian ini menunjukkan bahwa pendidikan agama Islam dalam keluarga dan pencegahan kenakalan remaja. Skripsi ini menyimpulkan: 1). Pendidikan agama Islam yang ditanamkan dalam keluarga sejak dini meliputi ibadah: keluarga mengajarkan sholat, zakat dan puasa. Menanamkan akhlaq pada anak seperti: sopan santun agar menjadi pribadi yang baik. Penanaman aqidah dan keimanan jarang dilakukan dan dipasrahkan kepada guru mengajinya. Cara pembiasaan yang ditanamkan dalam pendidikan agama Islam dalam keluarga yaitu: menyuruh anak untuk mengaji di madrasah diniyah.. 2). pencegahan kenakalan remaja dalam keluarga dengan memberikan bimbingan, perhatian dan pengawasan, lingkungan dan teman yang baik sangat membantu dalam pencegahan. Perhatiannya yang tidak pernah terlewatkan. Dengan hal tersebut dapat menjadi pencegahan kenakalan remaja',1,to_timestamp('28-DEC-20 08.02.38.243755000 PM','DD-MON-RR HH.MI.SSXFF AM'),14,2);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (106,'ANALISIS PROBLEM-PROBLEM KETERLAMBATAN PENYELESAIAN STUDI MAHASISWA DI STAIN SALATIGA (Kasus Mahasiswa Program Studi Pendidikan Agama Islam Tahun Akademik 2004 dan 2005) ','membahas tentang problem-problem keterlambatanpenyelesaian studi mahasiswa Program Studi Pendidikan Agama Islam (PAI)tahun ajaran 2004 dan 2005 di STAIN Salatiga. Permasalahan yang diteliti adalahfaktor- faktor penyebab keterlambatan penyelesaian studi pada mahasiswaProgram Studi PAI tahun ajaran 2004 dan 2005, serta solusi untuk mengatasipermasalahan keterlambatan penyelesaian studi mahasiswa Program Studi PAItahun ajaran 2004 dan 2005 di STAIN SalatigaPenelitianmtPenelitianinidiharapkan mempunyai manfaat yaitusebagaipengembangan ilmu khususnya dalam bidang pendidikan dan kepribadian. Dalampenelitian ini penulis juga berharap dapat bermanfaat sebagai acuan bagi semuamahasiswa dan para dosen khususnya di STAIN Salatiga dalam bidangpendidikan dan kepribadian. Dalam penelitian ini penulis menggunakanpendekatan penelitian kualitatif deskriptif. Sedangkan prosedur pengumpulandatanya penulis menggunakan metode wawancara dan dokumentasi.Hasil dari penelitian yang dilakukan, peneliti menemukan faktor-faktorpenyebab keterlambatan penyelesaian studi mahasiswa Program Studi PAI tahunajaran 2004 dan 2005 di STAIN Salatiga, yaitu faktor eksternal dan faktorinternal. Pada faktor eksternal problem yang dialami oleh mereka adalah problemkemampuan ekonomi keluarga, sedangkan pada faktor internal problem yangdialami adalah problem inteligensi, problem kepribadian, problem minat sekolah,problem adaptasi, problem sifat dan problem motivasi. Selain itu penulis jugamenemukan beberapa solusi untuk mengatasi permasalahan tersebut di atas, danpeneliti menemukan solusi menurut beberapa alumni mahasiswa Program StudiPAI tahun ajaran 2006 dan menurut beberapa dosen serta pejabat STAIN Salatigayang berkecimpung pada Program Studi PAI.',1,to_timestamp('28-DEC-20 08.03.36.787815000 PM','DD-MON-RR HH.MI.SSXFF AM'),15,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (107,'Tablighi Jamaat, An Islamic Revivalist Movement and Radicalism Issues ','This article discusses Tablighi Jamaat as Islamic transnational movement that emerged in the early 20th century and attracted a great attention post 9/11 in America. One of the interesting points that invite debate among scholars is wheter Tablighi Jamaat is a part of radicalist movements or terrorist groups or only an Islamic missionary movement. Those debates are related to the existence of Tablighi Jamaat around the world. Moreover, it can be said that Tablighi Jamaat has settled in every country in the world. American Foreign Council report shows that tablighist is estimated to have 50 to 80 million people. The numbers have invited suspicion of policy maker from many countries, particularly on the issue of radicalism. Discussion on this article based on basic questions on who are Tablighists, their aims and their activities. However, the main purpose of this article to show how scholars argue on the existence of Tablighi and possibility on Tablighi Jamaat involvement on radical actions. In general, this study is based on library research.',1,to_timestamp('28-DEC-20 08.04.52.619958000 PM','DD-MON-RR HH.MI.SSXFF AM'),16,2);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (108,'Implementasi Pendidikan Karakter pada Sekolah Berbasis di SMP Islam Plus Bina Insani Dusun Baran, Desa Ketapang, Kecamatan Susukan Tahun Pelajaran 2017/2018 ','Penelitian ini bertujuan untuk mengetahui bagaimanakah implementasi pendidikan karakter, bagaimana hambatan dan solusi dalam implementasi pendidikan karakter pada sekolah berbasis pesantren di SMP Islam Plus Bina InsaniDusun Baran, Desa Ketapang, Kecamatan Susukan tahun pelajaran 2017/2018?. Penelitian ini menggunakan pendekatan kualitatif. Dalam memperoleh data peneliti menggunakan metode wawancara, observasi, dan dokumentasi. Analisis data dalam penelitian ini meliputi reduksi data, penyajian data, dan penarikan kesimpulan.Pengecekan keabsahan data menggunakan ketekunan peneliti dan triangulasi. Tahap-tahap penelitian dalam penelitian ini meliputi tahap pra lapangan, tahap pekerjaan lapangan, dan tahap analisis data. Hasil penelitian ini penyimpulkan bahwa (1) Impementasi pendidikan karakter pada sekolah berbasis pesantren di SMP Islam Plus Bina InsaniDusun Baran, Desa Ketapang, Kecamatan Susukan tahun pelajaran 2017/2018 meliputi: (a) Religius, (b) Disiplin, (c) Bertanggung jawab,(d) Percaya diri, (e) Kerja keras, (f) Kreatif.(2) Hambatan dan solusi dalam implementasi pendidikan karakter di SMP Islam Plus Bina Insani Dusun Baran, Desa Ketapang, Kecamatan Susukan tahun pelajaran 2017/2018 hambatanmeliputi (a) Kurangnya kesadaran diri, (b) Kurang lancarnya saluran air yang akan digunakan untuk berwudhu, (c) Persiapan yang kurang matang, (d) Kurangnya pengetahuan kosa kata yang akan digunakan untuk membuat muhadatsah ataupun teks muchadloroh. Sedangkan solusi untuk mengatasinya yaitu: (a) Menyegerakan mengambil air wudhu untuk menambah semangat dalam melakukan suatu pekerjaan seperti shalat berjama’ah, (b) Memperbaiki saluran air, agar air yang mengalir lebih lancar, (c) Memberikan motivasi kepada anak-anak akan pentingnya shalat berjama’ah, (d) Lebih mematangkan persiapan ketika kegiatan muchadloroh ataupun muhadatsah mulai dari penbuatan teks, menghafalkannya, dan persiapan-persiapan lain yang dibutuhkan, (e) Menggunakan kamus atau bertanya kepada kakak kelas mengenai kosa kata yang tidak diketahui ketika membuat teks baik itu teks muchadloroh maupun muhadatsah',1,to_timestamp('28-DEC-20 08.05.49.668109000 PM','DD-MON-RR HH.MI.SSXFF AM'),17,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (109,'Nilai-nilai Pendidikan dalam Ritual Tawassulan di Pondok Pesantren Al-Huda SOKOPULUHAN PUCAKWANGI PATI ','Penelitian ini merupakan upaya untuk menggali nilai-nilai pendidikan dalam ritual tawassulan di Pondok Pesantren Al-Huda Sokopuluhan Pucakwangi Pati. Pertanyaan yang ingin dijawab dalam penelitian ini adalah (1) Bagaimana pelaksanaan ritual tawassulan di Pondok Pesantren Al-Huda Sokopuluhan Pucakwangi Pati?, dan (2) Apa nilai-nilai pendidikan dalam ritual tawassulan di Pondok Pesantren Al-Huda Sokopuluhan Pucakwangi Pati? Untuk menjawab pertanyaan di atas, penulis menggunakan jenis penelitian yang bersifat deskriptif kualitatif maka data dari penelitian ini diperoleh melalui wawancara, observasi dan dokumentasi dengan menggunakan trianggulasi sumber sebagai instrumen untuk mengecek validitas data. Hasil penelitian yang dilakukan diperoleh kesimpulan bahwa pelaksanaan ritual tawassulan di Pondok Pesantren Al-Huda: pada hari Jum’at Wage malam Sabtu Kliwon. Tata caranya yaitu membaca nadzoman, hadroh kepada Nabi dan para wali, asmaul husna, sholawat dan syahadatain, membaca ayat-ayat suci Al Quran, membaca doa-doa, mahalul qiyam (berdiri) dan membaa bacaan-bacaan yang ada dalam kitab panduan tawassulan, duduk kembali dengan membaca ayat-ayat suci Al Quran dilanjutkan berdiri kembali untuk membaca doa, duduk kembali membaca doa, yang terakhir dalam ritual tawassulan yaitu penutup yang diakhiri dengan membaca nadzoman. Adapun nilai-nilai pendidikan dalam ritual tawassulan: nilai pendidikan keimanan, nilai pendidikan akhlak, nilai pendidikan kezuhudan dan nilai pendidikan sosial.',1,to_timestamp('28-DEC-20 08.06.57.875786000 PM','DD-MON-RR HH.MI.SSXFF AM'),18,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (110,'THE EDUCATIONAL VALUES IN THE RITUAL OF NGROWOD (A Case Study in Pondok Pesantren API Al-Masykur, Jombor, Tuntang, Semarang Regency at 2016) ','The title of this research is chosen because of two reasons. first, according to the data base of IAIN Salatiga’s library, there are no graduating papers/researches which discuss about ngrowod. It has not been written by IAIN Salatiga’s students (data until April 2016), and second, the literatures, books and journals of ngrowod are still limited. The Statement of the Problems of this research as follows: (1)how the ritual of ngrowod is performed in API Al-Masykur Islamic Boarding School, Jombor, Tuntang, Semarang Regency at 2016?; (2) what are the santri’s perspectives about ritual of ngrowod?; (3) what are the educational values’ believed in the ritual of ngrowod?. The research results as follow: ritual of ngrowod performed in API Al-Masykur is: Santri who performs ritual of ngrowod is differentiated into three categories and ngrowod has different implementation ‘amalan’ or wirid. Beginner category: performing ngrowod for one year. After sholat fardlu ‘obligatory prayers’, reciting al-ikhlas, al-Falaq, al-Nas, and al-Kautsar; three times. Middle category: performing ritual of ngrowod for three years, after sholat fardlu ‘obligatory prayers’ reading al-ikhlas, al-Falaq, al-Nas, al-Kautsar and at-Takatsur; seven times, and advanced category: performing ritual of ngrowod for six years and more. After sholat fardlu reading al-ikhlas, al-Falaq, al-Nas,al-Kautsar and at-Takatsur; eleven times, and after sholat maghrib ‘sunset prayer’ and sholat subuh ’dawn prayer’ reading al-Fatikhah; 500 times. Second, Santri’s perspective about the ritual of ngrowod is (1)ngrowod is a means or medium to open the heart in order to receive instruction or other deeds from Kiai’s taught; (2) to make success of a livelihood or ideals desired; (3) purify your heart and mind and also make it easier to accept the values of truth; (4) being grateful for the gift given by the Almighty of God; (5) control of passions; (6) self-purification mean; (7) someone who performs spiritual approach to God should show his certain spiritual fraternity such as ngrowod; (8) ritual of ngrowod cannot consume food which comes from rice and third, the educational values from ritual ngrowod are (1) the determination to carry out the commands of religion and leave anything that is prohibited by religion; (2) inner peace, there is no single person who wants his future is full of problems; (3) the Simplicity or simplicity of life, ritual of ngrowod teaches how life is not “adventurous/complicated” although there has chance to fulfill that desire; (4) generosity to share with others; (5) Islamic knowledge, rizki and useful and blessing life, this is a big great hoped by students who perform ngrowod after finishing his education at Pondok Pesantren.',1,to_timestamp('28-DEC-20 08.07.44.868654000 PM','DD-MON-RR HH.MI.SSXFF AM'),19,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (111,'test R','test 2',0,to_timestamp('29-DEC-20 03.24.26.379000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (112,'Skripsi tentang kentang','kentang adalah sumber karbo',0,to_timestamp('29-DEC-20 03.27.11.352000000 PM','DD-MON-RR HH.MI.SSXFF AM'),12,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (113,'Skripsi tentang kentang ee','kentang adalah sumber karbo',0,to_timestamp('29-DEC-20 03.28.51.772000000 PM','DD-MON-RR HH.MI.SSXFF AM'),12,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (114,'Judul Karya','Suatu abstraksi dari sesuatu',0,to_timestamp('30-DEC-20 06.40.31.057000000 PM','DD-MON-RR HH.MI.SSXFF AM'),10,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (115,'Judul Karya 2','Suatu abstraksi dari sesuatu 5',0,to_timestamp('30-DEC-20 06.40.57.482000000 PM','DD-MON-RR HH.MI.SSXFF AM'),11,1);
Insert into METRI.DOCUMENTS (DOCUMENT_ID,TITLE,ABSTRACT,PUBLISH,CREATED_AT,USER_ID,TYPE_ID) values (116,'Judul Karya 3','Suatu abstraksi dari sesuatu 10',1,to_timestamp('30-DEC-20 06.45.09.170000000 PM','DD-MON-RR HH.MI.SSXFF AM'),11,1);
REM INSERTING into METRI.DOCUMENT_CHANGE_LOGS
SET DEFINE OFF;
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('29-DEC-20 09.17.17.907000000 PM','DD-MON-RR HH.MI.SSXFF AM'),111,'UPDATED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 06.40.31.060000000 PM','DD-MON-RR HH.MI.SSXFF AM'),114,'INSERTED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 06.40.57.482000000 PM','DD-MON-RR HH.MI.SSXFF AM'),115,'INSERTED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 06.45.09.171000000 PM','DD-MON-RR HH.MI.SSXFF AM'),116,'INSERTED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 06.53.31.056000000 PM','DD-MON-RR HH.MI.SSXFF AM'),116,'UPDATED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 06.53.50.106000000 PM','DD-MON-RR HH.MI.SSXFF AM'),116,'UPDATED');
Insert into METRI.DOCUMENT_CHANGE_LOGS (TIME,DOCUMENT_ID,LOG) values (to_timestamp('30-DEC-20 07.05.29.203000000 PM','DD-MON-RR HH.MI.SSXFF AM'),116,'TEST');
REM INSERTING into METRI.DOCUMENT_HAS_SUBJECTS
SET DEFINE OFF;
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (1,101,to_timestamp('28-DEC-20 08.43.29.276729000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (2,101,to_timestamp('28-DEC-20 08.43.52.523845000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (3,101,to_timestamp('28-DEC-20 08.44.02.107450000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (1,102,to_timestamp('28-DEC-20 08.44.21.459450000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (2,102,to_timestamp('28-DEC-20 08.44.23.972894000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (3,102,to_timestamp('28-DEC-20 08.44.26.413505000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (1,103,to_timestamp('28-DEC-20 08.45.29.547572000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (2,103,to_timestamp('28-DEC-20 08.45.32.347436000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (6,103,to_timestamp('28-DEC-20 08.45.34.907441000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.DOCUMENT_HAS_SUBJECTS (SUBJECT_ID,DOCUMENT_ID,CREATED_AT) values (1,104,to_timestamp('28-DEC-20 08.46.13.668061000 PM','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into METRI.DOCUMENT_SUBJECTS
SET DEFINE OFF;
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (1,'Agama');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (2,'Sekte Islam');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (3,'Pendidikan');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (4,'Filsafat');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (5,'Bahasa');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (6,'Ilmu Terapan');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (7,'Biografi');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (8,'Sejarah');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (9,'Ekonomi');
Insert into METRI.DOCUMENT_SUBJECTS (SUBJECT_ID,NAME) values (10,'Fiqih (Hukum Islam)');
REM INSERTING into METRI.DOCUMENT_TYPES
SET DEFINE OFF;
Insert into METRI.DOCUMENT_TYPES (TYPE_ID,NAME) values (1,'Skripsi');
Insert into METRI.DOCUMENT_TYPES (TYPE_ID,NAME) values (2,'Thesis');
REM INSERTING into METRI.FILES
SET DEFINE OFF;
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (1,101,'/home/storage/doc-111.pdf','sk-1','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (2,101,'/home/storage/doc-34343.pdf','dec','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (3,101,'/home/storage/doc-3466.pdf','file','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (4,103,'/home/storage/doc-324244534.pdf','skripsi1','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (5,104,'/home/storage/doc-33.pdf','skripsi','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (6,105,'/home/storage/doc-677.pdf','ert','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (7,105,'/home/storage/doc-085.pdf','war','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (8,107,'/home/storage/doc-1565611.pdf','tyui90','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (9,107,'/home/storage/doc-667655.pdf','noll','aplicattion/pdf');
Insert into METRI.FILES (FILE_ID,DOCUMENT_ID,PATH,NAME,CONTENT_TYPE) values (10,107,'/home/storage/doc-1234.pdf','jk','aplicattion/pdf');
REM INSERTING into METRI.USERS
SET DEFINE OFF;
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (10,'SITI','ARMAWATIARMAWATI','ahmad@gmail.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.21.28.085083000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (11,'JANI','ASTUTI','doremi@aon.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.24.10.860373000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (12,'Durrotik','Ifa','siti.sini@gmail.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.25.08.261370000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (13,'FAUZIYAH','FATMAWATI','lastri_solo@ymail.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.29.46.813135000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (14,'Faqihatun','Fadilah','zazanana@yahoo.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.30.43.517190000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (15,'ANIS ARDIANA','KURNIAWATI','anisaaaa@nail.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.53.19.188912000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (16,'SUKRON','MAMUN,S.HI,M.Si','sukron@gmail.com',1,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.53.22.268295000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (17,'Aufiy','Millatana','alllhome@gmail.com',1,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.53.24.660793000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (18,'Siti','Mujayanah','saety@yahoo.com',0,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.53.27.292014000 PM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into METRI.USERS (USER_ID,NAME,FAMILY,EMAIL,GENDER,BIRTH,CREATED_AT) values (19,'Arief','Rahmadiansyah','rahmadiansyah@yahoo.com',1,to_date('04-DEC-97','DD-MON-RR'),to_timestamp('28-DEC-20 07.53.29.964577000 PM','DD-MON-RR HH.MI.SSXFF AM'));
--------------------------------------------------------
--  DDL for Index DOCUMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METRI"."DOCUMENTS_PK" ON "METRI"."DOCUMENTS" ("DOCUMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOCUMENT_SUBJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METRI"."DOCUMENT_SUBJECTS_PK" ON "METRI"."DOCUMENT_SUBJECTS" ("SUBJECT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOCUMENT_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METRI"."DOCUMENT_TYPES_PK" ON "METRI"."DOCUMENT_TYPES" ("TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FILES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METRI"."FILES_PK" ON "METRI"."FILES" ("FILE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METRI"."USERS_PK" ON "METRI"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TGR_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "METRI"."TGR_LOG" 
AFTER DELETE OR INSERT OR UPDATE ON DOCUMENTS 
FOR EACH ROW
BEGIN
    CASE
        WHEN inserting THEN
            api.log_doc_change(:NEW.document_id,'INSERTED');
        WHEN updating THEN
            api.log_doc_change(:OLD.document_id,'UPDATED');
        WHEN deleting THEN
            api.log_doc_change(:OLD.document_id,'DELETED');
    END CASE;
  NULL;
END;
/
ALTER TRIGGER "METRI"."TGR_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Package API
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "METRI"."API" AS 
    PROCEDURE add_document (user users.user_id%TYPE, title VARCHAR2, abstract VARCHAR2);
    PROCEDURE publish_document (id documents.document_id%TYPE,publish_status INT := 1);
    PROCEDURE remove_subject (id documents.document_id%TYPE,sub document_subjects.subject_id%TYPE);
    PROCEDURE author_info (id users.user_id%TYPE);
    PROCEDURE view_published_doc;
    PROCEDURE log_doc_change(id documents.document_id%TYPE,log document_change_logs.log%TYPE);
    FUNCTION author_of_document(id documents.document_id%TYPE) RETURN users.name%TYPE;
    FUNCTION is_user_exist(id users.user_id%TYPE) RETURN BOOLEAN;

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END API;

/
--------------------------------------------------------
--  DDL for Package Body API
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "METRI"."API" AS

-- INSERT (MENAMBAHKAN DOKUMENT)
  PROCEDURE add_document (user users.user_id%TYPE, title VARCHAR2, abstract VARCHAR2) AS
    last_doc_id documents.document_id%TYPE := 1;
    e_user_not_found EXCEPTION; 
  BEGIN
    -- validate user is exist
    IF NOT API.is_user_exist(user) then 
        RAISE e_user_not_found;
    END IF;
    SELECT MAX(document_id)+1 INTO last_doc_id FROM documents;
    INSERT INTO documents (document_id,title,abstract,publish,created_at,user_id,type_id) VALUES
        (last_doc_id,title,abstract,0,CURRENT_TIMESTAMP,user,1);
        
    NULL;
  EXCEPTION 
    WHEN e_user_not_found THEN
        dbms_output.put_line('User segai author dengan id '|| user ||' tidak ditemukan.');
        
  END add_document;

-- UPDATE (MENGUBAH VALUE PUBLISH PADA DOCUMENT UNTUK MEMPUBLIKASIKANNYA)
  PROCEDURE publish_document (id documents.document_id%TYPE,publish_status INT := 1) AS
  BEGIN

    UPDATE documents SET publish = publish_status WHERE document_id = id;
    DBMS_OUTPUT.put_line('Dokumen dengan id '||id||' telah dipublikasi.');
    NULL;
  END publish_document;

-- DELETE (MENGHAPUS RELASI DOKUMEN DENGAN SUBJECT TERTENTU)
  PROCEDURE remove_subject (id documents.document_id%TYPE,sub document_subjects.subject_id%TYPE) AS
    var_doc documents.document_id%TYPE;
    var_sub document_subjects.name%TYPE;
  BEGIN
    FOR c1 IN (SELECT document_id INTO var_doc FROM documents WHERE document_id = id) LOOP
        var_doc := c1.document_id;
    END LOOP;    
    FOR c2 IN (SELECT name INTO var_doc FROM document_subjects WHERE subject_id = sub) LOOP
        var_sub := c2.name;
    END LOOP;
    DELETE document_has_subjects WHERE document_id = id AND subject_id = sub;
    dbms_output.put_line('Subject: '||var_sub||' telah dihapus dari dokument '||var_doc);
    NULL;
  END remove_subject;

-- VIEW (MENAMPILKAN INFORMASI AUTHOR/USER TERTENTU)
  PROCEDURE author_info (id users.user_id%TYPE) AS
  BEGIN
    FOR cur IN (SELECT * FROM users WHERE user_id = id) LOOP
        DBMS_OUTPUT.PUT_LINE (RPAD('ID', 25)||RPAD(cur.user_id, 25));
        DBMS_OUTPUT.PUT_LINE (RPAD('Nama Lengkap', 25)||RPAD(cur.name, 25));
        DBMS_OUTPUT.PUT_LINE (RPAD('Lahir', 25)||RPAD(cur.birth, 25));
    END LOOP;
    NULL;
  END author_info;

-- VIEW (MENAMPILKAN DOKUMENT YANG DIPUBLIKASI)
  PROCEDURE view_published_doc AS
    doc_id documents.document_id%TYPE;
    doc_title documents.title%TYPE;
    doc_abstract documents.abstract%TYPE;
    u_name users.name%TYPE;
    u_family users.family%TYPE;
    t_name document_types.name%TYPE;
    CURSOR docs IS 
        SELECT 
            documents.document_id,documents.title,documents.abstract,
            users.name, users.family,
            document_types.name
        FROM documents 
        LEFT JOIN users ON documents.user_id = users.user_id 
        LEFT JOIN document_types ON documents.type_id = document_types.type_id
        WHERE documents.publish = 1;
  BEGIN
    OPEN docs;
    LOOP
    FETCH docs INTO doc_id,doc_title,doc_abstract,u_name,u_family,t_name;
        EXIT WHEN docs%notfound;
        DBMS_OUTPUT.PUT_LINE ('  .   ');
        DBMS_OUTPUT.PUT_LINE ('  .   ');
        DBMS_OUTPUT.PUT_LINE (RPAD('<', 70,'-'));
        DBMS_OUTPUT.PUT_LINE (RPAD(t_name, 20));
        DBMS_OUTPUT.PUT_LINE (RPAD('ID', 20)||RPAD(doc_id, 50,' '));
        DBMS_OUTPUT.PUT_LINE (RPAD('TITLE', 20)||RPAD(doc_title, 50,' '));
        DBMS_OUTPUT.PUT_LINE (RPAD('ABSTRACT', 20)||RPAD(doc_abstract, 50,'.'));
        DBMS_OUTPUT.PUT_LINE (RPAD('AUTHOR', 20)||RPAD((u_family||', '||u_name), 50,' '));
    END LOOP;
    CLOSE docs;
  END view_published_doc;
  
-- INSERT (UNTUK TRIGGER LOG)
  PROCEDURE log_doc_change (id documents.document_id%TYPE,log document_change_logs.log%TYPE) AS
  BEGIN
    INSERT INTO document_change_logs (time,document_id,log)
    VALUES(
        CURRENT_TIMESTAMP,
        id,
        log);
  END log_doc_change;

-- SEARCH (MENCARI NAMA AUTHOR/USER DARI SUATU ID)
  FUNCTION author_of_document(id documents.document_id%TYPE) RETURN users.name%TYPE IS
    retval users.name%type := '';
  BEGIN
        SELECT users.name into retval from documents left join users on documents.user_id = users.user_id where documents.document_id = id;
        
    RETURN retval;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Author atau Document tidak ditemukan');
        RETURN null;
  END author_of_document;
  
-- SEARCH (APAKAH AUTHOR/USER ADA?)
  FUNCTION is_user_exist(id users.user_id%TYPE) RETURN BOOLEAN IS
    var_user_id users.user_id%TYPE := NULL;
  BEGIN
    SELECT user_id into var_user_id from users WHERE user_id = id;
    RETURN (var_user_id IS NOT NULL);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN false;
  END is_user_exist;
END API;

/
--------------------------------------------------------
--  Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENTS" MODIFY ("TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENTS" ADD CONSTRAINT "DOCUMENTS_PK" PRIMARY KEY ("DOCUMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "METRI"."DOCUMENTS" MODIFY ("PUBLISH" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENTS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENTS" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCUMENT_CHANGE_LOGS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_CHANGE_LOGS" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENT_CHANGE_LOGS" MODIFY ("TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCUMENT_HAS_SUBJECTS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" MODIFY ("SUBJECT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCUMENT_SUBJECTS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_SUBJECTS" ADD CONSTRAINT "DOCUMENT_SUBJECTS_PK" PRIMARY KEY ("SUBJECT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "METRI"."DOCUMENT_SUBJECTS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "METRI"."DOCUMENT_SUBJECTS" MODIFY ("SUBJECT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOCUMENT_TYPES
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_TYPES" ADD CONSTRAINT "DOCUMENT_TYPES_PK" PRIMARY KEY ("TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "METRI"."DOCUMENT_TYPES" MODIFY ("TYPE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "METRI"."FILES" ADD CONSTRAINT "FILES_PK" PRIMARY KEY ("FILE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "METRI"."FILES" MODIFY ("PATH" NOT NULL ENABLE);
  ALTER TABLE "METRI"."FILES" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "METRI"."FILES" MODIFY ("FILE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "METRI"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "METRI"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "METRI"."USERS" MODIFY ("FAMILY" NOT NULL ENABLE);
  ALTER TABLE "METRI"."USERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "METRI"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENTS" ADD CONSTRAINT "DOCUMENTS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "METRI"."USERS" ("USER_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "METRI"."DOCUMENTS" ADD CONSTRAINT "DOCUMENTS_FK2" FOREIGN KEY ("TYPE_ID")
	  REFERENCES "METRI"."DOCUMENT_TYPES" ("TYPE_ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENT_CHANGE_LOGS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_CHANGE_LOGS" ADD CONSTRAINT "DOCUMENT_CHANGE_LOGS_FK1" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "METRI"."DOCUMENTS" ("DOCUMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENT_HAS_SUBJECTS
--------------------------------------------------------

  ALTER TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" ADD CONSTRAINT "DOCUMENT_HAS_SUBJECTS_FK1" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "METRI"."DOCUMENTS" ("DOCUMENT_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "METRI"."DOCUMENT_HAS_SUBJECTS" ADD CONSTRAINT "DOCUMENT_HAS_SUBJECTS_FK2" FOREIGN KEY ("SUBJECT_ID")
	  REFERENCES "METRI"."DOCUMENT_SUBJECTS" ("SUBJECT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "METRI"."FILES" ADD CONSTRAINT "FILES_FK1" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "METRI"."DOCUMENTS" ("DOCUMENT_ID") ON DELETE SET NULL ENABLE;
