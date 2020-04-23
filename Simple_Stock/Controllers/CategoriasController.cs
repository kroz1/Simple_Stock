using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Simple_Stock.cModels;
using Simple_Stock.Models;
using Newtonsoft.Json;

namespace Simple_Stock.Controllers
{
    public class CategoriasController : Controller
    {
        public Models.simple_stockEntities db = new Models.simple_stockEntities();
        // GET: Categorias
        public ActionResult Index()
        {
            return View();
        }

        public string listar()
        {
            try
            {
                //consulta para mostrarnos los registros existentes en la tabla categorias
                var query = (from c in db.categorias select c).OrderBy(c => c.id_categoria).ToList<categorias>();
                List<cCategorias> listaCategorias = new List<cCategorias>();
                //foreach para recorrer cada unos de los registros
                foreach(categorias registros in query)
                {
                    cCategorias o = new cCategorias();
                    o.id_categoria = registros.id_categoria;
                    o.nombre_categoria = registros.nombre_categoria;
                    o.descripcion_categoria = registros.descripcion_categoria;
                    o.date_added = registros.date_added;

                    listaCategorias.Add(o);
                }

                return JsonConvert.SerializeObject(new
                {
                    status = true,
                    mensaje = "Datos cargados",
                    data = listaCategorias
                });
            }
            catch (Exception error)
            {
                string mensaje = error.Message.ToString();
                if (error.InnerException != null)
                {
                    mensaje += Environment.NewLine + error.InnerException.ToString();
                }
                //return Json(new { status = false, mensaje = mensaje });
                return JsonConvert.SerializeObject(new
                {
                    status = false,
                    mensaje = mensaje
                });
            }
        }


        public JsonResult guardar(cCategorias categorias)
        {
            categorias objCategorias = new categorias();

            if(categorias.nombre_categoria == null)
            {
                return Json(new { status = false, mensaje = "El nombre de la categoria es obligatorio" });
            }

            if (categorias.descripcion_categoria == null)
            {
                return Json(new { status = false, mensaje = "La descripción de la categoria es obligatorio" });
            }

            if (categorias.id_categoria != 0) //editar
            {
                objCategorias = db.categorias.Where(a => a.id_categoria == categorias.id_categoria).FirstOrDefault();
                if(objCategorias == null)
                {
                    return Json(new { status = false, mensaje = "No existe en la base de datos" });
                }
                objCategorias.nombre_categoria = categorias.nombre_categoria;
                objCategorias.descripcion_categoria = categorias.descripcion_categoria;
                objCategorias.date_added = DateTime.Now;

                db.categorias.Attach(objCategorias);
                db.Entry(objCategorias).State = System.Data.Entity.EntityState.Modified;
            }
            else
            {
                //guardar               
                objCategorias.nombre_categoria = categorias.nombre_categoria;
                objCategorias.descripcion_categoria = categorias.descripcion_categoria;
                objCategorias.date_added = DateTime.Now;

                db.categorias.Add(objCategorias);
            }
            db.SaveChanges();
            return Json(new { status = true, mensaje = "Datos guardados", datos = objCategorias });
        }

        public JsonResult eliminar (int id_categoria)
        {
            categorias o = new categorias();
            if(id_categoria == 0)
            {
                return Json(new { status = false, mensaje = "El id viene en null" });
            }
            o = db.categorias.Where(a => a.id_categoria == id_categoria).FirstOrDefault();

            if(o == null)
            {
                return Json(new { status = false, mensaje = "No existe el registro en la base de datos" });
            }

            db.categorias.Attach(o);
            db.categorias.Remove(o);
            db.SaveChanges();

            return Json(new { status = true, mensaje = "se ha eliminado el registro" });
        }

        public JsonResult editar(int id_categoria)
        {
            try
            {
                categorias o = new categorias();
                if (id_categoria == 0)
                {
                    return Json(new { status = false, mensaje = "El id viene en null" });
                }
                else
                {
                    o = db.categorias.Where(a => a.id_categoria == id_categoria).FirstOrDefault();
                    if(o == null)
                    {
                        return Json(new { status = false, mensaje = "No existe el registro en la base de datos" });
                    }
                    return Json(new { status = true, mensaje = "Datos cargados", datos = o });
                }
            }
            catch (Exception error)
            {
                string mensaje = error.Message.ToString();
                if (error.InnerException != null)
                {
                    mensaje += Environment.NewLine + error.InnerException.ToString();
                }
                return Json(new { status = false, mensaje = mensaje });
            }          
        }
    }
}