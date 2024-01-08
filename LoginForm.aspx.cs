using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Butterfield_Bakery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataReader reader;
        DataSet ds = new DataSet();

        public String username;
        public String password;
        public int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Visible = false;
            lblNewCustomer.Visible = false;
            lblPassword.Visible = false;
            btnLogin.Visible = false;
            TextBoxPassword.Visible = false;
            TextBoxUsername.Visible = false;
            HyperLinkRegister.Visible = false;
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            lblUsername.Visible = true;
            lblNewCustomer.Visible = true;
            lblPassword.Visible = true;
            btnLogin.Visible = true;
            TextBoxPassword.Visible = true;
            TextBoxUsername.Visible = true;
            HyperLinkRegister.Visible = true;

            btnPlaceOrder.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            username = TextBoxUsername.Text;
            password = TextBoxPassword.Text;


            // SELECT FROM BAKERY WORKER TABLE
            conn.Open();

            String passwordVeri = "";

            if (username.Substring(0, 2) == "wo")
            {
                String SELECT_PASSWORD = "SELECT Password FROM BakeryWorker Where Username = '" + username + "'";

                SqlCommand cmd = new SqlCommand(SELECT_PASSWORD, conn);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    passwordVeri = passwordVeri + reader.GetValue(0);
                }
                reader.Close();
                cmd.Dispose();

                conn.Close();

                if (passwordVeri != password)
                {
                    Response.Write("Password incorrect");

                    lblUsername.Visible = true;
                    lblPassword.Visible = true;
                    btnPlaceOrder.Visible = false;
                    btnLogin.Visible = true;
                    TextBoxPassword.Visible = true;
                    TextBoxUsername.Visible = true;

                    TextBoxPassword.Text = "";
                    TextBoxPassword.Focus();
                }
                else if (username.Substring(0, 2) == "wo")
                {
                    if (passwordVeri == password)
                    {
                        Response.Redirect("WorkersForm.aspx");
                    }
                }
            }
            else
            {
                String SELECT_PASSWORD = "SELECT Password FROM CustomerDet Where UserName = '"+username+"'";

                SqlCommand cmd = new SqlCommand(SELECT_PASSWORD, conn);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    passwordVeri = passwordVeri + reader.GetValue(0);
                }
                reader.Close();
                cmd.Dispose();

          
                Response.Redirect("OrderForm.aspx");
        

                conn.Close();
                
            }

                conn.Close();
            
        }

        protected void TextBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}