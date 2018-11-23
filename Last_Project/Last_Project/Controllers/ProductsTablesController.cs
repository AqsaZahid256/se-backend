using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Last_Project;

namespace Last_Project.Controllers
{
    public class ProductsTablesController : Controller
    {
        private LastEntities db = new LastEntities();

        // GET: ProductsTables
        public ActionResult Index()
        {
            return View(db.ProductsTables.ToList());
        }

        // GET: ProductsTables/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductsTable productsTable = db.ProductsTables.Find(id);
            if (productsTable == null)
            {
                return HttpNotFound();
            }
            return View(productsTable);
        }

        // GET: ProductsTables/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProductsTables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Product_Name,Product_Description,Minimum_Bid_Amount,Auction_Time,Category")] ProductsTable productsTable)
        {
            if (ModelState.IsValid)
            {
                db.ProductsTables.Add(productsTable);
                db.SaveChanges();
                return RedirectToAction("Create");
            }

            return View(productsTable);
        }

        // GET: ProductsTables/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductsTable productsTable = db.ProductsTables.Find(id);
            if (productsTable == null)
            {
                return HttpNotFound();
            }
            return View(productsTable);
        }

        // POST: ProductsTables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Product_Name,Product_Description,Minimum_Bid_Amount,Auction_Time,Category")] ProductsTable productsTable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productsTable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(productsTable);
        }

        // GET: ProductsTables/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductsTable productsTable = db.ProductsTables.Find(id);
            if (productsTable == null)
            {
                return HttpNotFound();
            }
            return View(productsTable);
        }

        // POST: ProductsTables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            ProductsTable productsTable = db.ProductsTables.Find(id);
            db.ProductsTables.Remove(productsTable);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
