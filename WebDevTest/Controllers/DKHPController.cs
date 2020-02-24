using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebDevTest.Controllers
{
    public class DKHPController : Controller
    {
        QuanLySinhVienEntities db = new QuanLySinhVienEntities();
        // GET: DKHP
        public ActionResult Index(int MaHP)
        {
            var hp = (from h in db.HOCPHANs
                      where h.MaHP == MaHP
                      select h).FirstOrDefault();
            ViewBag.HocPhan = hp;
            return View();
        }
        [HttpPost]
        public ActionResult AddNewDK(FormCollection form)
        {

            DANGKY dk = new DANGKY();
            dk.MaHP = int.Parse(form["MaHP"]);
            dk.MaSV = int.Parse(form["MaSV"]);
            dk.NgayDK = DateTime.Parse(form["NgayDK"]);
            dk.DiemThi = float.Parse(form["DiemThi"]);
            dk.DiemTP = float.Parse(form["DiemTP"]);

            db.DANGKies.Add(dk);

            db.SaveChanges();

            var listHP = db.HOCPHANs.ToList();
            return View("~/Views/Home/Index_List_HP.cshtml", listHP);
        }
    }
}