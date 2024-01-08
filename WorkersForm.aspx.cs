using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Butterfield_Bakery
{
    public partial class WorkersForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter adapter = new SqlDataAdapter();
        SqlCommand cmd;
        SqlDataReader reader;
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewOrders.Visible = false;
        }

        protected void btnViewOrder_Click(object sender, EventArgs e)
        {
            GridViewOrders.Visible=true;

            // SELECT FROM DATABASE
            conn.Open();

            String SELECT_ORDER = "SELECT OrderID, ProductName FROM OrderD";

            cmd = new SqlCommand(SELECT_ORDER, conn);

            adapter = new SqlDataAdapter();
            ds = new DataSet();

            adapter.SelectCommand = cmd;
            adapter.Fill(ds, "OrderD");

            GridViewOrders.DataSource = ds;
            GridViewOrders.DataBind();

            conn.Close();
        }

        protected void btnOrderComplete_Click(object sender, EventArgs e)
        {
            int orderID = int.Parse(txtDelete.Text);
            GridViewOrders.Visible = true;

            // SELECT FROM DATABASE
            conn.Open();

            String SELECT_ORDER = "DELETE FROM OrderD WHERE OrderID = '"+orderID+"'";

            cmd = new SqlCommand(SELECT_ORDER, conn);

            adapter = new SqlDataAdapter();
           // ds = new DataSet();

           // adapter.SelectCommand = cmd;
           // adapter.Fill(ds, "OrderD");

            //GridViewOrders.DataSource = ds;
            //GridViewOrders.DataBind();
            adapter.DeleteCommand = cmd;
            adapter.DeleteCommand.ExecuteNonQuery();



            conn.Close();

            Response.Write("A message will be sent to courier guy for order to be dispatched ");
            Reload();

        }

        public void Reload()
        {
            GridViewOrders.Visible = true;

            // SELECT FROM DATABASE
            conn.Open();

            String SELECT_ORDER = "SELECT OrderID, ProductName FROM OrderD";

            cmd = new SqlCommand(SELECT_ORDER, conn);

            adapter = new SqlDataAdapter();
            ds = new DataSet();

            adapter.SelectCommand = cmd;
            adapter.Fill(ds, "OrderD");

            GridViewOrders.DataSource = ds;
            GridViewOrders.DataBind();

            conn.Close();
        }

        protected void ListBoxOrderAvail_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}