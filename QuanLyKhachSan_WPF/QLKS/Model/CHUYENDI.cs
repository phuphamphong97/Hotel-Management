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
    
    public partial class CHUYENDI : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CHUYENDI()
        {
            this.CHITIET_HDDC = new HashSet<CHITIET_HDDC>();
        }

        private int _MA_CD;
        public int MA_CD { get => _MA_CD; set { _MA_CD = value; OnPropertyChanged(); } }
        private string _DIEMDEN_CD;
        public string DIEMDEN_CD { get => _DIEMDEN_CD; set { _DIEMDEN_CD = value; OnPropertyChanged(); } }
        private Nullable<decimal> _DONGIA_CD;
        public Nullable<decimal> DONGIA_CD { get => _DONGIA_CD; set { _DONGIA_CD = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIET_HDDC> CHITIET_HDDC { get; set; }
    }
}
