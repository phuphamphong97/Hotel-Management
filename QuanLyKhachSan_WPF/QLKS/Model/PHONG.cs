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
    
    public partial class PHONG : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PHONG()
        {
            this.CHITIET_HDLT = new HashSet<CHITIET_HDLT>();
        }

        private int _MA_PHONG;
        public int MA_PHONG { get => _MA_PHONG; set { _MA_PHONG = value; OnPropertyChanged(); } }
        private int _MA_LP;
        public int MA_LP { get => _MA_LP; set { _MA_LP = value; OnPropertyChanged(); } }
        private string _TINHTRANG_PHONG;
        public string TINHTRANG_PHONG { get => _TINHTRANG_PHONG; set { _TINHTRANG_PHONG = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIET_HDLT> CHITIET_HDLT { get; set; }
        public virtual LOAIPHONG LOAIPHONG { get; set; }
    }
}
