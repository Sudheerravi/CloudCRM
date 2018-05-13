using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CrmMvc.Models;

namespace CrmMvc.Controllers
{
    public class ContactController : Controller
    {
        private ContactDbEntities db = new ContactDbEntities();

        //
        // GET: /Contact/

        public ActionResult Index()
        {
            return View(db.contactDbs.ToList());
        }

        
        public ActionResult Search()
        {
            return View();
        }

        [HttpPost, ActionName("Search")]
        public ActionResult SearchConfirmed(string DomainURL)
        {
            List<contactDb> myList = db.contactDbs.ToList();
            contactDb results = myList.SingleOrDefault(s => s.DomainURL == DomainURL);
            
            //db.contactDbs.Remove(contactdb);
            //db.SaveChanges();
            return RedirectToAction("Details", "Contact", new { ID = results.ID });
        }
        //
        // GET: /Contact/Details/5

        public ActionResult Details(int id = 0)
        {
            contactDb contactdb = db.contactDbs.Find(id);
            if (contactdb == null)
            {
                return HttpNotFound();
            }
            return View(contactdb);
        }

        //
        // GET: /Contact/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Contact/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(contactDb contactdb)
        {
            if (ModelState.IsValid)
            {
                
                contactdb.ID = db.contactDbs.ToList()[db.contactDbs.ToList().Count-1].ID + 1;
                
                db.contactDbs.Add(contactdb);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(contactdb);
        }

        //
        // GET: /Contact/Edit/5

        public ActionResult Edit(int id = 0)
        {
            contactDb contactdb = db.contactDbs.Find(id);
            if (contactdb == null)
            {
                return HttpNotFound();
            }
            return View(contactdb);
        }

        //
        // POST: /Contact/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(contactDb contactdb)
        {
            if (ModelState.IsValid)
            {
                db.Entry(contactdb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(contactdb);
        }

        //
        // GET: /Contact/Delete/5

        public ActionResult Delete(int id = 0)
        {
            contactDb contactdb = db.contactDbs.Find(id);
            if (contactdb == null)
            {
                return HttpNotFound();
            }
            return View(contactdb);
        }

        //
        // POST: /Contact/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            contactDb contactdb = db.contactDbs.Find(id);
            db.contactDbs.Remove(contactdb);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}