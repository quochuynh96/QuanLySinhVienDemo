//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebDevTest
{
    using System;
    using System.Collections.Generic;
    
    public partial class DANGKY
    {
        public int MaHP { get; set; }
        public int MaSV { get; set; }
        public Nullable<System.DateTime> NgayDK { get; set; }
        public Nullable<double> DiemThi { get; set; }
        public Nullable<double> DiemTP { get; set; }
    
        public virtual HOCPHAN HOCPHAN { get; set; }
        public virtual SINHVIEN SINHVIEN { get; set; }
    }
}
