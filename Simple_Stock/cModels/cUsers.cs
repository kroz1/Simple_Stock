﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Simple_Stock.cModels
{
    public class cUsers
    {
        public int user_id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string user_name { get; set; }
        public string user_password_hash { get; set; }
        public string user_email { get; set; }
        public System.DateTime date_added { get; set; }
    }
}