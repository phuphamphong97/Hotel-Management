//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLKS.Model
{
    using QLKS.ViewModel;
    using System;
    using System.Collections.Generic;
    
    public partial class LUOTGIATUI : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LUOTGIATUI()
        {
            this.CHITIET_HDGU = new HashSet<CHITIET_HDGU>();
        }
    
        private int _MA_LUOTGU;
        public int MA_LUOTGU { get => _MA_LUOTGU; set { _MA_LUOTGU = value; OnPropertyChanged(); } }
        private int _MA_LOAIGU;
        public int MA_LOAIGU { get => _MA_LOAIGU; set { _MA_LOAIGU = value; OnPropertyChanged(); } }
        private Nullable<int> _SOKILOGRAM_LUOTGU;
        public Nullable<int> SOKILOGRAM_LUOTGU { get => _SOKILOGRAM_LUOTGU; set { _SOKILOGRAM_LUOTGU = value; OnPropertyChanged(); } }
        private Nullable<System.DateTime> _NGAYBATDAU_LUOTGU;
        public Nullable<System.DateTime> NGAYBATDAU_LUOTGU { get => _NGAYBATDAU_LUOTGU; set { _NGAYBATDAU_LUOTGU = value; OnPropertyChanged(); } }
        private Nullable<System.DateTime> _NGAYKETTHUC_LUOTGU;
        public Nullable<System.DateTime> NGAYKETTHUC_LUOTGU { get => _NGAYKETTHUC_LUOTGU; set { _NGAYKETTHUC_LUOTGU = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIET_HDGU> CHITIET_HDGU { get; set; }
        public virtual LOAIGIATUI LOAIGIATUI { get; set; }
    }
}
