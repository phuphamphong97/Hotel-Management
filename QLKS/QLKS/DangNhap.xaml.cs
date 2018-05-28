﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QLKS
{
    /// <summary>
    /// Interaction logic for DangNhap.xaml
    /// </summary>
    public partial class DangNhap : Window
    {
        public DangNhap()
        {
            InitializeComponent();
            tboxUserName.Focus();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Liên hệ với quản lí để được cấp lại mật khẩu.", "Quên mật khẩu", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
