using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using WebApplication1.BusinessLayer;


namespace WebApplication1.BusinessLayer
{
    public class ShoppingCart
    {
        public string CategoryName;
        public int CategoryID;
        public string ProductName;
        public string ProductImage;
        public string ProductPrice;
        public string ProductDiscription;

        public void AddNewCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewCategory", parameters);

        }

        public void AddNewProduct()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DataLayer.DataAccess.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 300);
            parameters[1] = DataLayer.DataAccess.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
            parameters[2] = DataLayer.DataAccess.AddParameter("@ProductImage", ProductImage, System.Data.SqlDbType.VarChar, 500);
            parameters[3] = DataLayer.DataAccess.AddParameter("@ProductDiscription", ProductDiscription, System.Data.SqlDbType.VarChar, 1000);
            parameters[4] = DataLayer.DataAccess.AddParameter("CategoryId", CategoryID, System.Data.SqlDbType.Int, 100);

            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewProduct", parameters);

        }

        public DataTable GetAllProducts()
        {
            
           


        }

        public DataTable GetAllCategories()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllCategories", parameters);
            return dt;


        }

    }
}