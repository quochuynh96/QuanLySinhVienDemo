using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevTest.Helper
{
    public class Helper
    {
        QuanLySinhVienEntities db = new QuanLySinhVienEntities();
        public string GetTenSV(int MaSV)
        {
            var sv = (from s in db.SINHVIENs
                      where s.MaSV == MaSV
                      select s).FirstOrDefault();
            if (sv == null)
            {
                return "Không tìm thấy sinh viên.";
            }
            else
                return sv.Ho + " " + sv.Ten;
        }
        public List<SINHVIEN> getListSV()
        {
            var listSV = db.SINHVIENs.ToList();
            return listSV;
        }
        public List<HOCPHAN> getListHP()
        {
            var listHP = db.HOCPHANs.ToList();
            return listHP;
        }
    }
}