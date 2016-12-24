using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BusinessLayer;
using System.Data;

namespace WebApplication1.Admin
{
    public partial class AddNewProduct : System.Web.UI.Page
    {
        public string filename { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCategories();
            }

        }
        private void GetCategories()
        {
            ShoppingCart k = new ShoppingCart();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataValueField = "categoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(uploadProductImage.PostedFile != null)
            {
                SaveProductPhoto();
                ShoppingCart k = new ShoppingCart()
                {
                    ProuductName = txtproductname.Text,
                    ProuductImage = "~/ProductImages/" + uploadProductImage.FileName,
                    ProuductPrice = txtProductPrice.Text,
                    CategoryID = Convert.ToInt32(ddlCategory.SelectedValue)
                };
                k.AddNewProduct();
                ClearText();
            }
            else { }

        }
        private void SaveProductPhoto()
        {
            if(uploadProductImage.PostedFile != null)
            {
                string filename = uploadProductImage.PostedFile.FileName.ToString();
                string fileext = System.IO.Path.GetExtension(uploadProductImage.FileName);
            }
            else
            {
                uploadProductImage.SaveAs(Server.MapPath("`/ProductImages/" + filename));
            }
        }

    }
}