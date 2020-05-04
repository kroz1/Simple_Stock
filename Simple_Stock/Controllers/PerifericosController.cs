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
    public class PerifericosController : Controller
    {
        public Models.simple_stockEntities db = new Models.simple_stockEntities(); //conexion al modelo de la base de datos
        // GET: Perifericos
        public ActionResult Index()
        {
            List<cCategorias> listaCategorias = null;
            /*mediante entity framework, realizamos la consulta a la tabla que queramos mostrar 
            los datos de la tabla*/
            listaCategorias = (from p in db.categorias
                            select new cCategorias
                            {
                                id_categoria = p.id_categoria,
                                nombre_categoria = p.nombre_categoria
                                                       
                            }).ToList();
            /*
             SelectListItem nos sirve para mostrar que datos mostraran en nuestro dropdownlist de 
             nuestra vista
             */
            List<SelectListItem> items = listaCategorias.ConvertAll(a =>
            {
                return new SelectListItem()
                {
                    Text = a.nombre_categoria.ToString(),
                    Value = a.id_categoria.ToString(),
                    Selected = false
                };
            });

            ViewBag.items = items; //Viewbag se utiliza para enviar datos a la vista

            return View();
        }

        public ActionResult Producto()
        {
            return View();
        }
    }
}