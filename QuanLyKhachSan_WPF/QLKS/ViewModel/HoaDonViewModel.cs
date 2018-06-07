﻿using QLKS.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace QLKS.ViewModel
{
    public class HoaDonViewModel : BaseViewModel
    {
        public enum LoaiHoaDon
        {
            HoaDonTong, HoaDonLuuTru, HoaDonAnUong, HoaDonGiatUi, HoaDonDiChuyen
        };

        private int _LoaiHD;
        public int LoaiHD { get => _LoaiHD; set { _LoaiHD = value; OnPropertyChanged(); } }
        private DateTime _ThoiGianLapHD;
        public DateTime ThoiGianLapHD { get => _ThoiGianLapHD; set { _ThoiGianLapHD = value; OnPropertyChanged(); } }
        private DateTime _Time;
        public DateTime Time { get => _Time; set { _Time = value; OnPropertyChanged(); } }
        public int Ngay;
        public int Gio;

        //Truyền thông tin qua những hd dịch vụ
        private int _MaHD;
        public int MaHD { get => _MaHD; set { _MaHD = value; OnPropertyChanged(); } }
        private int _MaPhong;
        public int MaPhong { get => _MaPhong; set { _MaPhong = value; OnPropertyChanged(); } }
        private KHACHHANG _KhachHangThue;
        public KHACHHANG KhachHangThue { get => _KhachHangThue; set { _KhachHangThue = value; OnPropertyChanged(); } }
        private NHANVIEN _NhanVienLapHD;
        public NHANVIEN NhanVienLapHD { get => _NhanVienLapHD; set { _NhanVienLapHD = value; OnPropertyChanged(); } }
        private HOADON _HoaDon;
        public HOADON HoaDon { get => _HoaDon; set { _HoaDon = value; OnPropertyChanged(); } }
        //Show hóa đơn tổng
        private ObservableCollection<ThongTinChiTietHoaDon> _ListThongTinCTHD;
        public ObservableCollection<ThongTinChiTietHoaDon> ListThongTinCTHD { get => _ListThongTinCTHD; set { _ListThongTinCTHD = value; OnPropertyChanged(); } }
        private ThongTinChiTietHoaDon _ThongTinCTHD;
        public ThongTinChiTietHoaDon ThongTinCTHD { get => _ThongTinCTHD; set { _ThongTinCTHD = value; OnPropertyChanged(); } }
        private long _TongTienHD;
        public long TongTienHD { get => _TongTienHD; set { _TongTienHD = value; OnPropertyChanged(); } }

        //Truyền thông tin qua hd lưu trú
        private ThongTinPhong _ThongTinPhongChonThue;
        public ThongTinPhong ThongTinPhongChonThue { get => _ThongTinPhongChonThue; set { _ThongTinPhongChonThue = value; OnPropertyChanged(); } }

        //Truyền thông tin qua hd ăn uống
        private string _LoaiPhucVu;
        public string LoaiPhucVu { get => _LoaiPhucVu; set { _LoaiPhucVu = value; OnPropertyChanged(); } }
        private ObservableCollection<ThongTinOrder> _ListOrder;
        public ObservableCollection<ThongTinOrder> ListOrder { get => _ListOrder; set { _ListOrder = value; OnPropertyChanged(); } }
        private long _TongTienHDAU;
        public long TongTienHDAU { get => _TongTienHDAU; set { _TongTienHDAU = value; OnPropertyChanged(); } }

        //Truyền thông tin qua hd giặt ủi
        private ThongTinGiatUi _TTGiatUi;
        public ThongTinGiatUi TTGiatUi { get => _TTGiatUi; set { _TTGiatUi = value; OnPropertyChanged(); } }
        private long _TongTienHDGU;
        public long TongTienHDGU { get => _TongTienHDGU; set { _TongTienHDGU = value; OnPropertyChanged(); } }

        //Truyền thông tin qua hd di chuyển
        private CHUYENDI _ChuyenDi;
        public CHUYENDI ChuyenDi { get => _ChuyenDi; set { _ChuyenDi = value; OnPropertyChanged(); } }
        private long _TongTienHDDC;
        public long TongTienHDDC { get => _TongTienHDDC; set { _TongTienHDDC = value; OnPropertyChanged(); } }
        
        //Tra cứu hóa đơn
        private ObservableCollection<ThongTinHoaDon> _ListThongTinHoaDon;
        public ObservableCollection<ThongTinHoaDon> ListThongTinHoaDon { get => _ListThongTinHoaDon; set { _ListThongTinHoaDon = value; OnPropertyChanged(); } }
        private string _SearchHoaDon;
        public string SearchHoaDon { get => _SearchHoaDon; set { _SearchHoaDon = value; OnPropertyChanged(); } }
        public bool sort;

        public ICommand btnHDTongCommand { get; set; }
        public ICommand btnHDLuuTruCommand { get; set; }
        public ICommand btnHDAnUongCommand { get; set; }
        public ICommand btnHDGiatUiCommand { get; set; }
        public ICommand btnHDDiChuyenCommand { get; set; }

        public ICommand LoadHoaDonTongCommand { get; set; }
        public ICommand LoadKhachHangCommand { get; set; }
        public ICommand PayCommand { get; set; }
        public ICommand CancelCommand { get; set; }
        public ICommand ClosedWindowCommand { get; set; }

        public ICommand SearchTTHoaDonCommand { get; set; }
        public ICommand SortTTHoaDonCommand { get; set; }

        public HoaDonViewModel()
        {
            #region Xử lý thao tác với hóa đơn
            ThoiGianLapHD = DateTime.Now;
            Time = DateTime.Parse(DateTime.Now.TimeOfDay.ToString());
            ListThongTinCTHD = new ObservableCollection<ThongTinChiTietHoaDon>();
            ThongTinCTHD = new ThongTinChiTietHoaDon();
            TongTienHD = 0;

            btnHDTongCommand = new RelayCommand<Object>((p) => { return true; }, (p) => LoaiHD = (int)LoaiHoaDon.HoaDonTong);
            btnHDLuuTruCommand = new RelayCommand<Object>((p) => { return true; }, (p) => LoaiHD = (int)LoaiHoaDon.HoaDonLuuTru);
            btnHDAnUongCommand = new RelayCommand<Object>((p) => { return true; }, (p) => LoaiHD = (int)LoaiHoaDon.HoaDonAnUong);
            btnHDGiatUiCommand = new RelayCommand<Object>((p) => { return true; }, (p) => LoaiHD = (int)LoaiHoaDon.HoaDonGiatUi);
            btnHDDiChuyenCommand = new RelayCommand<Object>((p) => { return true; }, (p) => LoaiHD = (int)LoaiHoaDon.HoaDonDiChuyen);

            LoadHoaDonTongCommand = new RelayCommand<Object>((p) => 
            {
                if (ListThongTinCTHD.Count() != 0)
                    return false;

                return true;
            }, (p) =>
            {
                Ngay = 0;
                Gio = 0;
                //lấy hóa đơn lưu trú
                var hdlt = DataProvider.Ins.model.CHITIET_HDLT.Where(x => x.MA_HD == HoaDon.MA_HD).SingleOrDefault();
                TimeSpan timehdlt = DateTime.Now.Subtract((DateTime)hdlt.THOIGIANNHAN_PHONG);
                GetThoiGianThuePhong(timehdlt.Hours + 1);
                ThongTinCTHD.LoaiHoaDon = "Hóa đơn lưu trú";
                ThongTinCTHD.NoiDungHD = "Phòng " + hdlt.MA_PHONG + "\nThời gian nhận phòng " + hdlt.THOIGIANNHAN_PHONG + "\nThời gian trả phòng " + DateTime.Now;
                ThongTinCTHD.DonGia = (int)ThongTinPhongChonThue.LoaiPhong.DONGIA_LP;
                ThongTinCTHD.TriGia = (int)ThongTinPhongChonThue.LoaiPhong.DONGIA_LP * (Ngay * 10 + Gio);
                ThongTinCTHD.ThoiGian = (DateTime)hdlt.THOIGIANNHAN_PHONG;
                ListThongTinCTHD.Add(ThongTinCTHD);
                //lấy hóa đơn ăn uống
                var listHDAU = DataProvider.Ins.model.CHITIET_HDAU.Where(x => x.MA_HD == HoaDon.MA_HD).ToList();
                foreach (CHITIET_HDAU item in listHDAU)
                {
                    ThongTinCTHD = new ThongTinChiTietHoaDon();
                    var mathang = DataProvider.Ins.model.MATHANG.Where(x => x.MA_MH == item.MA_MH).SingleOrDefault();
                    ThongTinCTHD.LoaiHoaDon = "Hóa đơn ăn uống";
                    ThongTinCTHD.NoiDungHD = mathang.TEN_MH + " - SL " + item.SOLUONG_MH;
                    ThongTinCTHD.DonGia = (int)mathang.DONGIA_MH;
                    ThongTinCTHD.TriGia = (int)item.TRIGIA_CTHDAU;
                    ThongTinCTHD.ThoiGian = (DateTime)item.THOIGIANLAP_CTHDAU;
                    ListThongTinCTHD.Add(ThongTinCTHD);
                }
                //lấy hóa đơn giặt ủi
                var listHDGU = DataProvider.Ins.model.CHITIET_HDGU.Where(x => x.MA_HD == HoaDon.MA_HD).ToList();
                foreach (CHITIET_HDGU item in listHDGU)
                {
                    ThongTinCTHD = new ThongTinChiTietHoaDon();
                    var luotgu = DataProvider.Ins.model.LUOTGIATUI.Where(x => x.MA_LUOTGU == item.MA_LUOTGU).SingleOrDefault();
                    var loaigu = DataProvider.Ins.model.LOAIGIATUI.Where(x => x.MA_LOAIGU == luotgu.MA_LOAIGU).SingleOrDefault();
                    ThongTinCTHD.LoaiHoaDon = "Hóa đơn giặt ủi";
                    if(loaigu.MA_LOAIGU == 1)
                    {
                        ThongTinCTHD.NoiDungHD = loaigu.TEN_LOAIGU + " - SL " + luotgu.SOKILOGRAM_LUOTGU + " Kg";
                        ThongTinCTHD.DonGia = (int)loaigu.DONGIA_LOAIGU;
                    }else if (loaigu.MA_LOAIGU == 2)
                    {
                        DateTime ngaykt = (DateTime)luotgu.NGAYKETTHUC_LUOTGU;
                        TimeSpan timehdgu = ngaykt.Subtract((DateTime)luotgu.NGAYBATDAU_LUOTGU);
                        ThongTinCTHD.NoiDungHD = loaigu.TEN_LOAIGU + " - SL " + (int)(timehdgu.TotalDays + 1) + " Ngày";
                        ThongTinCTHD.DonGia = (int)loaigu.DONGIA_LOAIGU;
                    }
                    ThongTinCTHD.TriGia = (int)item.TRIGIA_CTHDGU;
                    ThongTinCTHD.ThoiGian = (DateTime)item.THOIGIANLAP_CTHDGU;
                    ListThongTinCTHD.Add(ThongTinCTHD);
                }
                //lấy hóa đơn di chuyển
                var listHDDC = DataProvider.Ins.model.CHITIET_HDDC.Where(x => x.MA_HD == HoaDon.MA_HD).ToList();
                foreach (CHITIET_HDDC item in listHDDC)
                {
                    ThongTinCTHD = new ThongTinChiTietHoaDon();
                    var chuyendi = DataProvider.Ins.model.CHUYENDI.Where(x => x.MA_CD == item.MA_CD).SingleOrDefault();
                    ThongTinCTHD.LoaiHoaDon = "Hóa đơn di chuyển";
                    ThongTinCTHD.NoiDungHD = chuyendi.DIEMDEN_CD;
                    ThongTinCTHD.DonGia = (int)chuyendi.DONGIA_CD;
                    ThongTinCTHD.TriGia = (int)item.TRIGIA_CTHDDC;
                    ThongTinCTHD.ThoiGian = (DateTime)item.THOIGIANLAP_CTHDDC;
                    ListThongTinCTHD.Add(ThongTinCTHD);
                }

                foreach (var item in ListThongTinCTHD)
                {
                    TongTienHD += item.TriGia;
                }

                CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(ListThongTinCTHD);
                view.GroupDescriptions.Clear();
                view.GroupDescriptions.Add(new PropertyGroupDescription("LoaiHoaDon"));
            });

            LoadKhachHangCommand = new RelayCommand<Object>((p) => 
            {
                return string.IsNullOrEmpty(KhachHangThue.CMND_KH) ? false : true; }, (p) =>
            {
                var kh = DataProvider.Ins.model.KHACHHANG.Where(x => x.CMND_KH == KhachHangThue.CMND_KH).SingleOrDefault();
                if (kh == null)
                {
                    KhachHangThue.HOTEN_KH = "";
                    KhachHangThue.SODIENTHOAI_KH = "";
                }
                else
                {
                    KhachHangThue.HOTEN_KH = kh.HOTEN_KH;
                    KhachHangThue.SODIENTHOAI_KH = kh.SODIENTHOAI_KH;
                }
            });

            PayCommand = new RelayCommand<Window>((p) => 
            {
                if (p == null || HoaDon == null || ListThongTinCTHD == null || ListThongTinCTHD.Count() == 0)
                    return false;

                return true;
            }, (p) =>
            {
                MessageBoxResult result = MessageBox.Show("Tổng tiền cần thanh toán: " + TongTienHD.ToString("N0") + " VNĐ", "Thanh toán", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    //lưu chi tiết hóa đơn
                    ThongTinChiTietHoaDon ttCTHD = new ThongTinChiTietHoaDon();
                    foreach (var item in ListThongTinCTHD)
                    {
                        if (item.LoaiHoaDon == "Hóa đơn lưu trú")
                        {
                            ttCTHD = item;
                            break;
                        }
                    }
                    var cthdlt = DataProvider.Ins.model.CHITIET_HDLT.Where(x => x.MA_HD == HoaDon.MA_HD).SingleOrDefault();
                    cthdlt.THOIGIANTRA_PHONG = DateTime.Now;
                    cthdlt.TRIGIA_CTHDLT = ttCTHD.TriGia;
                    DataProvider.Ins.model.SaveChanges();
                    //lưu hóa đơn
                    var hd = DataProvider.Ins.model.HOADON.Where(x => x.MA_HD == HoaDon.MA_HD).SingleOrDefault();
                    hd.TINHTRANG_HD = true;
                    hd.TRIGIA_HD = TongTienHD;
                    DataProvider.Ins.model.SaveChanges();
                    //sửa lại trạng thái phòng
                    var phong = DataProvider.Ins.model.PHONG.Where(x => x.MA_PHONG == MaPhong).SingleOrDefault();
                    phong.TINHTRANG_PHONG = "Trống";
                    DataProvider.Ins.model.SaveChanges();

                    p.Close();
                }
            });

            CancelCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { p.Close(); });

            ClosedWindowCommand = new RelayCommand<Object>((p) => { return true; }, (p) => 
            {
                //refersh hd tổng
                ListThongTinCTHD.Clear();
                TongTienHD = 0;
                //refersh hd ăn uống
                LoaiPhucVu = null;
                ListOrder = null;
                TongTienHDAU = 0;
                //refersh hd giặt ủi
                TTGiatUi = null;
                TongTienHDGU = 0;
                //refersh hd di chuyển
                ChuyenDi = null;
                TongTienHDDC = 0;
            });
            #endregion

            #region Tra cứu hóa đơn
            GetThongTinHoaDon();
            sort = false;

            SearchTTHoaDonCommand = new RelayCommand<Object>((p) => { return true; }, (p) =>
            {
                if (string.IsNullOrEmpty(SearchHoaDon))
                {
                    CollectionViewSource.GetDefaultView(ListThongTinHoaDon).Filter = (all) => { return true; };
                }
                else
                {
                    CollectionViewSource.GetDefaultView(ListThongTinHoaDon).Filter = (searchHoaDon) =>
                    {
                        return (searchHoaDon as ThongTinHoaDon).HoaDon.MA_HD.ToString().IndexOf(SearchHoaDon, StringComparison.OrdinalIgnoreCase) >= 0 ||
                               (searchHoaDon as ThongTinHoaDon).TenNhanVien.IndexOf(SearchHoaDon, StringComparison.OrdinalIgnoreCase) >= 0 ||
                               (searchHoaDon as ThongTinHoaDon).TenKhachHang.IndexOf(SearchHoaDon, StringComparison.OrdinalIgnoreCase) >= 0 ||
                               (searchHoaDon as ThongTinHoaDon).TinhTrang.IndexOf(SearchHoaDon, StringComparison.OrdinalIgnoreCase) >= 0;
                    };
                }
            });

            SortTTHoaDonCommand = new RelayCommand<GridViewColumnHeader>((p) => { return p == null ? false : true; }, (p) =>
            {
                CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(ListThongTinHoaDon);
                if (sort)
                {
                    view.SortDescriptions.Clear();
                    view.SortDescriptions.Add(new SortDescription(p.Tag.ToString(), ListSortDirection.Ascending));
                }
                else
                {
                    view.SortDescriptions.Clear();
                    view.SortDescriptions.Add(new SortDescription(p.Tag.ToString(), ListSortDirection.Descending));
                }
                sort = !sort;
            });
            #endregion
        }

        public void GetThongTinPhongThue(int maphong)
        {
            var phongChonThue = DataProvider.Ins.model.PHONG.Where(x => x.MA_PHONG == maphong).SingleOrDefault();
            var loaiPhongChonThue = DataProvider.Ins.model.LOAIPHONG.Where(x => x.MA_LP == phongChonThue.MA_LP).SingleOrDefault();
            ThongTinPhongChonThue = new ThongTinPhong() { Phong = phongChonThue, LoaiPhong = loaiPhongChonThue };
        }

        public HOADON GetHoaDon(int maphong)
        {
            var cthdlt = DataProvider.Ins.model.CHITIET_HDLT.Where(x => x.MA_PHONG == maphong).ToList();
            foreach (var item in cthdlt)
            {
                var hd = DataProvider.Ins.model.HOADON.Where(x => x.MA_HD == item.MA_HD && x.TINHTRANG_HD == false).SingleOrDefault();
                if (hd != null)
                {
                    MaHD = hd.MA_HD;
                    MaPhong = maphong;
                    return hd;
                }
            }
            return null;
        }

        public NHANVIEN GetNhanVien(HOADON hoadon)
        {
            if(hoadon == null)
                return null;
            var nv = DataProvider.Ins.model.NHANVIEN.Where(x => x.MA_NV == hoadon.MA_NV).SingleOrDefault();
            if (nv != null)
                return nv;
            return null;
        }

        public KHACHHANG GetKhachHang(HOADON hoadon)
        {
            if (hoadon == null)
                return new KHACHHANG();
            var kh = DataProvider.Ins.model.KHACHHANG.Where(x => x.MA_KH == hoadon.MA_KH).SingleOrDefault();
            if (kh != null)
                return kh;
            return null;
        }

        void GetThongTinHoaDon()
        {
            ListThongTinHoaDon = new ObservableCollection<ThongTinHoaDon>();
            var listTTHD = from hd in DataProvider.Ins.model.HOADON
                           join nv in DataProvider.Ins.model.NHANVIEN
                           on hd.MA_NV equals nv.MA_NV
                           join kh in DataProvider.Ins.model.KHACHHANG
                           on hd.MA_KH equals kh.MA_KH
                           select new ThongTinHoaDon()
                           {
                               HoaDon = hd,
                               TenNhanVien = nv.HOTEN_NV,
                               TenKhachHang = kh.HOTEN_KH,
                               TinhTrang = (bool)hd.TINHTRANG_HD ? "Đã thanh toán" : "Chưa thanh toán"
                           };
            foreach (ThongTinHoaDon item in listTTHD)
            {
                ListThongTinHoaDon.Add(item);
            }
        }

        void GetThoiGianThuePhong(int hours)
        {
            int ngay = hours / 24;
            int gio = hours % 24;
            if (ngay >= 1)
            {
                Ngay += ngay;
                GetThoiGianThuePhong(gio);
            }
            else
            {
                if (gio >= 8)
                {
                    Ngay += 1;
                }
                else
                {
                    Gio = gio;
                }
            }
        }
    }
}
