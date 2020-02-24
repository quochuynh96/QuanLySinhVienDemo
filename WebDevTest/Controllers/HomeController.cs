using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebDevTest.Controllers
{
    public class HomeController : Controller
    {
        QuanLySinhVienEntities db = new QuanLySinhVienEntities();
        public ActionResult Index()
        {
            var listHP = db.HOCPHANs.ToList();
            return View("Index_List_HP",listHP);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Create()
        {
            return View("Create_New_HP");
        }
        public ActionResult Edit(int MaHP)
        {
            var hp = (from h in db.HOCPHANs
                      where h.MaHP == MaHP
                      select h).FirstOrDefault();
            return View("Update_HP",hp);
        }
        public ActionResult Delete(int MaHP)
        {
            var hp = (from h in db.HOCPHANs
                      where h.MaHP == MaHP
                      select h).FirstOrDefault();
            db.HOCPHANs.Remove(hp);
            db.SaveChanges();
            var listHP = db.HOCPHANs.ToList();
            return View("Index_List_HP", listHP);
        }
        public ActionResult DKHP(int MaHP)
        {
            var hp = (from h in db.HOCPHANs
                      where h.MaHP == MaHP
                      select h).FirstOrDefault();
            ViewBag.HocPhan = hp;
            return View("~/Views/DKHP/Index.cshtml");
        }

        [HttpPost]
        public ActionResult AddNewHP(FormCollection form)
        {
            HOCPHAN hp = new HOCPHAN();
            hp.TenHP = form["TenHP"];
            hp.SoTC = int.Parse(form["SoTC"]);
            hp.HSDiemThi = Math.Round(float.Parse(form["HSDiemThi"]),1);
            db.HOCPHANs.Add(hp);
            db.SaveChanges();

            var listHP = db.HOCPHANs.ToList();
            return View("Index_List_HP", listHP);
        }

        [HttpPost]
        public ActionResult UpdateHP(FormCollection form)
        {
            int ma = int.Parse(form["MaHP"]);
            HOCPHAN hp = (from h in db.HOCPHANs
                          where h.MaHP == ma
                          select h).FirstOrDefault();
            hp.TenHP = form["TenHP"];
            hp.SoTC = int.Parse(form["SoTC"]);
            hp.HSDiemThi = Math.Round(float.Parse(form["HSDiemThi"]), 1);
           
            db.SaveChanges();

            var listHP = db.HOCPHANs.ToList();
            return View("Index_List_HP", listHP);
        }
    }
}