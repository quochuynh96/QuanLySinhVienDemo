using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebDevTest.Controllers
{
    public class HPController : Controller
    {
        QuanLySinhVienEntities db = new QuanLySinhVienEntities();
        // GET: HP
        public ActionResult Index(int MaHP)
        {
            var listDK = (from dk in db.DANGKies
                          where dk.MaHP == MaHP
                          select dk).ToList();
            return View("Detail_HP",listDK);
        }
    }
}