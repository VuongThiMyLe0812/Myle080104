"""
Viết chương trình để quản lý lương theo yêu cầu sau:
- Nhập vào: Họ tên, Đơn giá ngày công, Số ngày công, Hệ số phụ cấp, Tiền tạm ứng.
- In lên màn hình: Họ tên, Lương, Tạm ứng và Thực lĩnh.
Trong đó:
Lương = ĐơnGiáNgàyCông *SốNgàyCông*HệSốPhụCấp
ThựcLĩnh=Lương - TạmỨng
Kết quả màn hình theo mẫu sau:
Ho ten: An (enter)
So ngay cong: 25 (enter)
Don gia ngay cong: 100 (enter)
He so phu cap: 0.2 (enter)
Tam ung: 150 (enter)
Nhan vien An, Co tien Luong=500.0, Tam ung=150 va Thuc linh=350.0
"""

a=input("Ho ten: ")
b=float(input("So ngay cong: "))
c=float(input("Don giá ngay cong: "))
d=float(input("He so phu cap: "))
e=int(input("Tam ung: "))


L=c*b*d
TL=L-e

print("Nhan vien "+str(a)+", Co tien luong="+str(L)+", Tam ung="+str(e)+" va Thuc linh="+str(TL))

