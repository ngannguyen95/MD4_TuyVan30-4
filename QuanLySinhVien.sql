Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
-- Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng.
 -- Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần
select masv, hosv,tensv,hocbong from dmsv order by masv asc;
-- Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, Phái, Ngày sinh.
 -- Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
 select masv, hosv,tensv,phai, ngaysinh from dmsv order by phai asc;
-- Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông 
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
 select  hosv,tensv, ngaysinh,hocbong from dmsv order by ngaysinh asc ;
-- Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết.
select mamh, tenmh, sotiet from dmmh where tenmh like "T%";
-- Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái
select  hosv,tensv,phai, ngaysinh from dmsv where substring(tensv,-1)="I";
-- Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa
select makhoa, tenkhoa from dmkhoa where tenkhoa like "_n%";
-- 	Liệt kê những sinh viên mà họ có chứa chữ Thị.
select hosv,tensv from dmsv where hosv like "%thi%";
-- Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng.
 -- Danh sách sẽ được sắp xếp theo thứ tự Mã khoa giảm dần
select masv, hosv, makhoa, hocbong from dmsv   where hocbong >100000 order by makhoa desc;
-- Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select hosv,tensv, makhoa,noisinh, hocbong from dmsv   where hocbong >150000 and noisinh like "Hà Nội";
-- Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông tin: Mã sinh viên, Mã khoa, Phái
select masv,makhoa,phai from dmsv where makhoa in ("AV","VL");
-- Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 05/06/1992 gồm các thông tin:
--  Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng
select masv, ngaysinh,noisinh,hocbong from dmsv where ngaysinh between "1991-01-01" and "1992-06-05";
-- Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
select masv, ngaysinh,phai,makhoa,hocbong from dmsv where hocbong between "80000" and "150000";
-- Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: Mã môn học, Tên môn học, Số tiết
select mamh, tenmh,sotiet from dmmh where sotiet between 30 and 45;
-- Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái
select s.masv,s.hosv,s.tensv,k.tenkhoa,s.phai from dmsv s join dmkhoa k on s.makhoa = k.makhoa where k.tenkhoa in ("Anh Văn" , "Tin Học");
-- Liệt kê những sinh viên nữ, tên có chứa chữ N
select hosv,tensv from dmsv where phai like "Nữ" and tensv like "%N%";
-- Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
select hosv,tensv,noisinh,ngaysinh  from dmsv where noisinh like "Hà Nội" and month(ngaysinh) like 2; 
-- -- Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng
select hosv,tensv,floor(datediff(now(),ngaysinh)/365) as `Tuoi`,hocbong  from dmsv where floor(datediff(now(),ngaysinh)/365) >20;
-- .Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa.
select s.hosv,s.tensv ,floor(datediff(now(),s.ngaysinh)/365) as `Tuoi`,k.tenkhoa from dmsv s join dmkhoa k on s.makhoa = k.makhoa
 where floor(datediff(now(),ngaysinh)/365) between 20 and 25;
 -- Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ tên sinh viên,Phái, Ngày sinh.
 select hosv,tensv,phai,ngaysinh  from dmsv
 where month(ngaysinh) between 1 and 3  
 and year(ngaysinh) like 1990;
-- Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng.Trong đó, 
-- mức học bổng sẽ hiển thị là “Học bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình”
select masv,phai,makhoa, case when hocbong>500000 then "hoc bong cao" else "muc trung binh" end as "muc hoc bong" from dmsv ;
-- Cho biết tổng số sinh viên của toàn trường
select count(masv) as "tong so sinh vien" from dmsv;
-- Cho biết tổng sinh viên nam và tổng sinh viên nữ
select phai, count(*) as "tong"  from dmsv group by phai;
-- .Cho biết tổng số sinh viên của từng khoa.
select makhoa, count(*) as "tong sinh vien"  from dmsv group by makhoa;
-- Cho biết số lượng sinh viên học từng môn
select mamh,count(distinct masv) as "so luong sinh vien" from ketqua group by mamh;
-- Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có trong bảng kq)
select count(distinct mamh) as "so mon hoc" from ketqua;
-- Cho biết tổng số học bổng của mỗi khoa
select makhoa, count(distinct hocbong) from dmsv group by makhoa;
-- .Cho biết học bổng cao nhất của mỗi khoa
select makhoa, max(hocbong) from dmsv group by makhoa;
-- .Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
select makhoa , 
sum(if(phai = "nữ",1,0)) as "tong nu",
sum(if(phai = "nam",1,0)) as "tong nam"
 from dmsv group by makhoa;
 -- Cho biết số lượng sinh viên theo từng độ tuổi.
select floor(datediff(now(),ngaysinh)/365) as `Tuoi`,count(*) from dmsv group by floor(datediff(now(),ngaysinh)/365);
-- Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường
select year(ngaysinh) from dmsv group by year(ngaysinh) having count(*) >=2;
-- Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường
select noisinh from dmsv group by noisinh having count(*) >= 2;
-- Cho biết những môn nào có trên 3 sinh viên dự thi.
select k.mamh, m.tenmh from ketqua k join dmmh m on k.mamh = m.mamh group by mamh having count(distinct masv) >= 3;
-- Cho biết những sinh viên thi lại trên 2 lần.
select s.masv,s.hosv,s.tensv  from dmsv s join ketqua k on s.masv = k.masv where k.lanthi >=2 group by s.masv ;
-- Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
select s.hosv, s.tensv  from dmsv s join ketqua k on s.masv = k.masv  where s.phai = "nam" and k.lanthi like 1 and k.diem >= 7 group by s.hosv,s.tensv  ;
-- Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
select s.hosv ,s.tensv from dmsv s join ketqua k on s.masv = k.masv where k.lanthi= 1 and k.diem < 5 group by s.hosv, s.tensv having count(*) >=2;
-- Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
select k.tenkhoa from dmsv s join dmkhoa k on s.makhoa = k.makhoa where s.phai like "nam"  group by k.tenkhoa having count(*) >= 2; 
-- Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000
select k.tenkhoa from dmsv s join dmkhoa k on s.makhoa = k.makhoa where s.hocbong between 200000 and 300000 group by k.tenkhoa having count(*) >= 2;
-- Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.
select k.mamh,
sum(if(k.diem > 5,1,0)) as "so sv dau",
sum(if(k.diem <= 5,1,0)) as "so sv rot"
  from dmsv s join ketqua k on s.masv = k.masv where k.lanthi = 1 group by k.mamh;
  -- Cho biết sinh viên nào có học bổng cao nhất.
  select hosv,tensv,max(hocbong) from dmsv where (hocbong = (select max(hocbong) from dmsv)) group by hosv ,tensv ;
-- Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất
select s.hosv, s.tensv, max(k.diem) from dmsv s join ketqua k on s.masv = k.masv 
where   (k.diem = (select max(k.diem) from  ketqua k where lanthi = 1 and mamh = 01))
group by s.hosv,s.tensv;
-- Cho biết sinh viên khoa anh văn có tuổi lớn nhất
select hosv,tensv,max(floor(datediff(now(),ngaysinh)/365)) as "tuoi" from dmsv
 where makhoa = "av"
 group by hosv,tensv ;
 -- Cho biết khoa nào có đông sinh viên nhất.
select makhoa,count(masv) as "sinh vien" from dmsv group by makhoa 
having count(masv) =(select count(masv) from dmsv group by makhoa limit 1);
-- Cho biết khoa nào có đông nữ nhất.
select makhoa, count(masv) from dmsv where phai = "nữ" group by makhoa order by count(masv) desc limit 1;
-- Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
select k.mamh,mh.tenmh,count(k.mamh) as "so sv rot" from ketqua k join dmmh mh on k.mamh = mh.mamh where lanthi = 1 and diem < 5 group by k.mamh,mh.tenmh limit 1;
-- Cho biết sinh viên không học khoa anh văn có điểm thi môn văn phạm lớn hơn điểm thi văn của sinh viên học khoa anh văn



