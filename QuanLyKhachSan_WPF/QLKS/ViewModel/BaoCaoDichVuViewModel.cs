﻿using QLKS.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QLKS.ViewModel
{
    class BaoCaoDichVuViewModel : BaseViewModel
    {
        private ObservableCollection<ThongTinBaoCaoDichVu> _ListDichVu;
        public ObservableCollection<ThongTinBaoCaoDichVu> ListDichVu { get => _ListDichVu; set { _ListDichVu = value; OnPropertyChanged(); } }

        private int _TongDoanhThu;
        public int TongDoanhThu { get => _TongDoanhThu; set { _TongDoanhThu = value; OnPropertyChanged(); } }
        private int _LuuTru;
        public int LuuTru { get => _LuuTru; set { _LuuTru = value; OnPropertyChanged(); } }
        private int _AnUong;
        public int AnUong { get => _AnUong; set { _AnUong = value; OnPropertyChanged(); } }
        private int _GiatUi;
        public int GiatUi { get => _GiatUi; set { _GiatUi = value; OnPropertyChanged(); } }
        private int _DiChuyen;
        public int DiChuyen { get => _DiChuyen; set { _DiChuyen = value; OnPropertyChanged(); } }
        private DateTime? _NgayBatDau;
        public DateTime? NgayBatDau { get => _NgayBatDau; set { _NgayBatDau = value; OnPropertyChanged(); } }
        private DateTime? _NgayKetThuc;
        public DateTime? NgayKetThuc { get => _NgayKetThuc; set { _NgayKetThuc = value; OnPropertyChanged(); } }

        public ICommand HienBaoCaoCommand { get; set; }

        public BaoCaoDichVuViewModel()
        {
            HienBaoCaoCommand = new RelayCommand<Object>((p) =>
            {
                if (NgayBatDau != null && NgayKetThuc != null)
                    return true;
                return false;
            }, (p) =>
            {
                try
                {
                    DateTime? NgayKetThucReal = NgayKetThuc.Value.AddDays(1);

                    ListDichVu = new ObservableCollection<ThongTinBaoCaoDichVu>();

                    var tong = (from hd in DataProvider.Ins.model.HOADON
                                where (hd.THOIGIANLAP_HD >= NgayBatDau) && (hd.THOIGIANLAP_HD < NgayKetThucReal)
                                select hd.TRIGIA_HD).Sum();
                    TongDoanhThu = (int)tong;

                    var anuong = (from hd in DataProvider.Ins.model.HOADON
                                  join au in DataProvider.Ins.model.CHITIET_HDAU
                                  on hd.MA_HD equals au.MA_HD
                                  where (hd.THOIGIANLAP_HD >= NgayBatDau) && (hd.THOIGIANLAP_HD < NgayKetThucReal)
                                  select au.TRIGIA_CTHDAU).Sum();
                    AnUong = (int)anuong;

                    var luutru = (from hd in DataProvider.Ins.model.HOADON
                                  join lt in DataProvider.Ins.model.CHITIET_HDLT
                                  on hd.MA_HD equals lt.MA_HD
                                  where (hd.THOIGIANLAP_HD >= NgayBatDau) && (hd.THOIGIANLAP_HD < NgayKetThucReal)
                                  select lt.TRIGIA_CTHDLT).Sum();
                    LuuTru = (int)luutru;

                    var dichuyen = (from hd in DataProvider.Ins.model.HOADON
                                    join dc in DataProvider.Ins.model.CHITIET_HDDC
                                    on hd.MA_HD equals dc.MA_HD
                                    where (hd.THOIGIANLAP_HD >= NgayBatDau) && (hd.THOIGIANLAP_HD < NgayKetThucReal)
                                    select dc.TRIGIA_CTHDDC).Sum();
                    DiChuyen = (int)dichuyen;

                    var giatui = (from hd in DataProvider.Ins.model.HOADON
                                  join gu in DataProvider.Ins.model.CHITIET_HDGU
                                  on hd.MA_HD equals gu.MA_HD
                                  where (hd.THOIGIANLAP_HD >= NgayBatDau) && (hd.THOIGIANLAP_HD < NgayKetThucReal)
                                  select gu.TRIGIA_CTHDGU).Sum();
                    GiatUi = (int)giatui;

                    ListDichVu.Add(new ThongTinBaoCaoDichVu() { TenDichVu = "Lưu trú", DoanhThu = LuuTru });
                    ListDichVu.Add(new ThongTinBaoCaoDichVu() { TenDichVu = "Ăn uống", DoanhThu = AnUong });
                    ListDichVu.Add(new ThongTinBaoCaoDichVu() { TenDichVu = "Giặt ủi", DoanhThu = GiatUi });
                    ListDichVu.Add(new ThongTinBaoCaoDichVu() { TenDichVu = "Di chuyển", DoanhThu = DiChuyen });
                }
                catch (Exception e)
                {
                    // Ngày kết thúc nhỏ hơn (trước) ngày bắt đầu
                    TongDoanhThu = 0;
                }
            });



        }
    }
}