﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["OnlineShopping"] == null)
            {
                Response.Redirect("~/Admin/LogIn.aspx");
            } 
           
        }

      
        }
    }
