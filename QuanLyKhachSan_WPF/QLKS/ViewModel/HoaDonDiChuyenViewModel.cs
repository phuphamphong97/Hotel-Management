﻿using QLKS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QLKS.ViewModel
{
    class HoaDonDiChuyenViewModel : BaseViewModel
    {
        private int _MaHD;
        public int MaHD { get => _MaHD; set { _MaHD = value; OnPropertyChanged(); } }
        private CHUYENDI _ChuyenDi;
        public CHUYENDI ChuyenDi { get => _ChuyenDi; set { _ChuyenDi = value; OnPropertyChanged(); } }

        public ICommand SaveCommand { get; set; }
        public ICommand CancelCommand { get; set; }

        public HoaDonDiChuyenViewModel()
        {
            CancelCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { p.Close(); });

            SaveCommand = new RelayCommand<Window>((p) => 
            {
                if(p == null)
                    return false;

                var hoadonVM = p.DataContext as HoaDonViewModel;
                if (hoadonVM.ChuyenDi == null)
                    return false;

                return true;
            }, (p) =>
            {
                //lấy thông tin phòng chọn thuê và nhân viên làm hóa đơn
                var hoadonVM = p.DataContext as HoaDonViewModel;
                MaHD = hoadonVM.MaHD;
                ChuyenDi = hoadonVM.ChuyenDi;

                //Thêm chi tiết hóa đơn giặt ủi
                var chitietHDDC = new CHITIET_HDDC() { MA_HD = MaHD, MA_CD = ChuyenDi.MA_CD, TRIGIA_CTHDDC = ChuyenDi.DONGIA_CD, THOIGIANLAP_CTHDDC = DateTime.Now };
                DataProvider.Ins.model.CHITIET_HDDC.Add(chitietHDDC);
                DataProvider.Ins.model.SaveChanges();

                p.Close();
            });
        }
    }
}
