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
    public class UsuariosController : Controller
    {
        public Models.simple_stockEntities db = new Models.simple_stockEntities();
        // GET: Usuarios
        public ActionResult Index()
        {
            return View();
        }

        public string listar()
        {
            try
            {
                var query = (from u in db.users select u).OrderBy(a => a.user_id).ToList<users>();
                List<cUsers> listaUsuarios = new List<cUsers>();
                //ciclo para recorrer los usuarios registrados
                foreach(users users in query)
                {
                    cUsers o = new cUsers();
                    o.user_id = users.user_id;
                    o.firstname = users.firstname;
                    o.lastname = users.lastname;
                    o.user_name = users.user_name;
                    o.user_password_hash = users.user_password_hash;
                    o.user_email = users.user_email;
                    o.date_added = users.date_added;

                    listaUsuarios.Add(o);
                }

                return JsonConvert.SerializeObject(new
                {
                    status = true,
                    mensaje = "Datos cargados",
                    data = listaUsuarios
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

        //public JsonResult editarContrasena(int user_id)
        //{

        //}


        public JsonResult guardar(cUsers objUsuarios)
        {
            users o = new users();
            if (objUsuarios.firstname == null)
            {
                return Json(new { status = false, mensaje = "El nombre es un campo obligatorio" });
            }
            if (objUsuarios.lastname == null)
            {
                return Json(new { status = false, mensaje = "El Apellido es un campo obligatorio" });
            }
            if (objUsuarios.user_name == null)
            {
                return Json(new { status = false, mensaje = "El Nombre de usuario es un campo obligatorio" });
            }
            if (objUsuarios.user_password_hash == null)
            {
                return Json(new { status = false, mensaje = "La contraseña es un campo obligatorio" });
            }
            if (objUsuarios.user_email == null)
            {
                return Json(new { status = false, mensaje = "El Correo electrónico es un campo obligatorio" });
            }

            o.firstname = objUsuarios.firstname;
            o.lastname = objUsuarios.lastname;
            o.user_name = objUsuarios.user_name;
            o.user_password_hash = objUsuarios.user_password_hash;
            o.user_email = objUsuarios.user_email;
            o.date_added = DateTime.Now;

            db.users.Add(o);
            
            db.SaveChanges();
            return Json(new { status = true, mensaje = "Datos guardados", datos = o });
        }

        public JsonResult guardarCambios(cUsers objUsuarios)
        {
            users o = new users();

            o = db.users.Where(a => a.user_id == objUsuarios.user_id).FirstOrDefault();
            if (o == null)
            {
                return Json(new { status = false, mensaje = "No existe el registro" });
            }
            o.firstname = objUsuarios.firstname;
            o.lastname = objUsuarios.lastname;
            o.user_name = objUsuarios.user_name;
            o.user_email = objUsuarios.user_email;
            //o.date_added = DateTime.Now;

            db.users.Attach(o);
            db.Entry(o).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            return Json(new { status = true, mensaje = "Datos guardados", datos = o });
        }

        public JsonResult guardarNuevaContrasena(cUsers objUsuarios)
        {
            users o = new users();

            if (objUsuarios.user_id == 0)
            {
                return Json(new { status = false, mensaje = "El id viene en 0" });
            }

            if (objUsuarios.user_password_hash == null)
            {
                return Json(new { status = false, mensaje = "La contraseña viene en nulo" });
            }

            o = db.users.Where(a => a.user_id == objUsuarios.user_id).FirstOrDefault();
            if (o == null)
            {
                return Json(new { status = false, mensaje = "No existe el registro" });
            }

            o.user_password_hash = objUsuarios.user_password_hash;

            db.users.Attach(o);
            db.Entry(o).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            return Json(new { status = true, mensaje = "Datos guardados", datos = o });
        }

        public JsonResult eliminar(int user_id)
        {
            users o = new users();
            if(user_id == 0)
            {
                return Json(new { status = false, mensaje = "El id esta en 0" });
            }

            o = db.users.Where(a => a.user_id == user_id).FirstOrDefault();
            if(o == null)
            {
                return Json(new { status = false, mensaje = "No existe el registro" });
            }
            else
            {
                db.users.Attach(o);
                db.users.Remove(o);
                db.SaveChanges();

                return Json(new { status = true, mensaje = "Usuario eliminado" });
            }
        }

        //metodo para cargar la informacion del usuario seleccionado para poder editar sus datos
        public JsonResult editar(int user_id)
        {
            users objUsers = new users();
            if(user_id == 0)
            {
                return Json(new { status = false, mensaje = "El id esta en 0" });
            }
            else
            {
                objUsers = db.users.Where(a => a.user_id == user_id).FirstOrDefault();
                if(objUsers == null)
                {
                    return Json(new { status = false, mensaje = "No existe el registro" });
                }
                return Json(new { status = true, mensaje = "Datos cargados", datos = objUsers });
            }
        }
    }
}