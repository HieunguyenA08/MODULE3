use furama;
-- cau 2
SELECT
    *
FROM
    nhan_vien
WHERE
    SUBSTRING_INDEX(ho_ten, ' ', - 1) like 'H%'
    or SUBSTRING_INDEX(ho_ten, ' ', - 1) like 'K%'
    or SUBSTRING_INDEX(ho_ten, ' ', - 1) like 'T%';
-- cau 3
select * from khach_hang 
where FLOOR(DATEDIFF(NOW(),ngay_sinh)/365) between 18 and 50 and dia_chi like N'%Đà Nẵng' or dia_chi like '%Quảng Trị';
-- cau 4
select ho_ten , count(ma_khach_hang) 'số lần đặt'
from khach_hang kh join loai_khach lk using (ma_loai_khach)
join hop_dong hd using(ma_khach_hang)
where ma_loai_khach = 1
group by ma_khach_hang
order by  count(ma_khach_hang);
-- cau 6
select dv.ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue,ten_loai_dich_vu from dich_vu dv join loai_dich_vu ldv using (ma_loai_dich_vu)
where ma_dich_vu not in (select ma_dich_vu from hop_dong hd join dich_vu dv using (ma_dich_vu) where month(ngay_lam_hop_dong) between 1 and 3 );

-- cau 7 
select distinct dv.ma_dich_vu, ten_dich_vu, dien_tich,so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu 
from dich_vu dv join loai_dich_vu ldv using (ma_loai_dich_vu) join hop_dong hd using (ma_dich_vu)
where dv.ma_dich_vu in (select ma_dich_vu from hop_dong hd join dich_vu dv using (ma_dich_vu) where year(ngay_lam_hop_dong)= 2020) 
and dv.ma_dich_vu not in (select ma_dich_vu from hop_dong hd join dich_vu dv using (ma_dich_vu) where year(ngay_lam_hop_dong)= 2021) ;
 
-- cau 8 
select distinct ho_ten from khach_hang; 
-- cau 9 
select month(ngay_lam_hop_dong) 'tháng' , count(kh.ma_khach_hang) 'số lượng' 
from khach_hang kh join hop_dong hd using (ma_khach_hang)
group by month(ngay_lam_hop_dong)
order by  month(ngay_lam_hop_dong);

-- cau 10 
select ma_hop_dong,ngay_lam_hop_dong, ngay_ket_thuc,sum(tien_dat_coc) 'tổng tiền cọc',ifnull(sum(so_luong),0) 'so_luong_dich_vu_di_kem'
from hop_dong hd left join hop_dong_chi_tiet cthd using (ma_hop_dong) 
group by ma_hop_dong 
order by ma_hop_dong;
-- cau 11
select ma_dich_vu_di_kem, ten_dich_vu_di_kem
from khach_hang kh join hop_dong using (ma_khach_hang)
join hop_dong_chi_tiet hdct using (ma_hop_dong)
join dich_vu_di_kem dvdk using (ma_dich_vu_di_kem)
join loai_khach lk using (ma_loai_khach)
where ten_loai_khach = 'Diamond' and dia_chi like '%Vinh%' or dia_chi like '%Quảng Ngãi%';
 -- cau 12 
 select hd.ma_hop_dong, nv.ho_ten,kh.ho_ten,kh.so_dien_thoai,ten_dich_vu,ifnull(sum(so_luong),0) 'so_luong_dich_vu_di_kem',
tien_dat_coc
 from khach_hang kh 
 left join hop_dong hd using (ma_khach_hang)
 left join nhan_vien nv using (ma_nhan_vien)
 left join hop_dong_chi_tiet hdct using (ma_hop_dong)
 left join dich_vu using (ma_dich_vu)
 where ma_dich_vu in 
 (select ma_dich_vu from hop_dong hd join dich_vu dv using (ma_dich_vu) where year(ngay_lam_hop_dong)= 2020 and month(ngay_lam_hop_dong) between 10 and 12) 
 and ma_dich_vu not in (select ma_dich_vu from hop_dong hd join dich_vu dv using (ma_dich_vu) where year(ngay_lam_hop_dong)= 2021 and month(ngay_lam_hop_dong) between 1 and 6) 
group by ma_hop_dong ;
-- cau 13
select ma_dich_vu_di_kem , ten_dich_vu_di_kem ,sum(so_luong) 'so_luong_dich_vu_di_kem'
from khach_hang kh 
join hop_dong using (ma_khach_hang)
join hop_dong_chi_tiet hdct using (ma_hop_dong)
join dich_vu_di_kem dvdk using (ma_dich_vu_di_kem)
group by ma_dich_vu_di_kem
having so_luong_dich_vu_di_kem = ALL ( 
select Max(s.so_luong_dich_vu_di_kem)
from (select ma_dich_vu_di_kem , ten_dich_vu_di_kem ,sum(so_luong) 'so_luong_dich_vu_di_kem'
from khach_hang kh 
join hop_dong using (ma_khach_hang)
join hop_dong_chi_tiet hdct using (ma_hop_dong)
join dich_vu_di_kem dvdk using (ma_dich_vu_di_kem)
group by ma_dich_vu_di_kem)s);

SELECT ma_dich_vu_di_kem, ten_dich_vu_di_kem, sum_so_luong
FROM (
  SELECT ma_dich_vu_di_kem, ten_dich_vu_di_kem, SUM(so_luong) AS sum_so_luong, RANK() OVER (ORDER BY SUM(so_luong) DESC) AS rank
  FROM khach_hang kh 
  JOIN hop_dong USING (ma_khach_hang)
  JOIN hop_dong_chi_tiet hdct USING (ma_hop_dong)
  JOIN dich_vu_di_kem dvdk USING (ma_dich_vu_di_kem)
  GROUP BY ma_dich_vu_di_kem, ten_dich_vu_di_kem
) AS temp
WHERE rank = 1

SELECT dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, SUM(hdct.so_luong) AS sum_so_luong
FROM khach_hang kh 
JOIN hop_dong ON kh.ma_khach_hang = hop_dong.ma_khach_hang
JOIN hop_dong_chi_tiet hdct ON hop_dong.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
ORDER BY sum_so_luong DESC
LIMIT 1;

 

