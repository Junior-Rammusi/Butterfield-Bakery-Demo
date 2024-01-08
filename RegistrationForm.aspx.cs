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
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        
        

        

        public String fName;
        public String lName;
        public String cellNumb;
        public String StrName;
        public String TownName;
        public int postalCode;
        public String username;
        public String password;
        public String passConfirm;
        public int customerId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAcc_Click(object sender, EventArgs e)
        {
            customerId = customerId + 1;
            fName = TextBoxFName.Text;
            lName = TextBoxLName.Text;
            cellNumb = TextBoxCellNumbers.Text;

            StrName = TextBoxStreetName.Text;   
            TownName = TextBoxTownName.Text;
            postalCode = int.Parse(TextBoxPostalCode.Text);
            username = TextBoxCreateUsername.Text;
            password = TextBoxCreatePassword.Text;
            passConfirm = TextBoxConfirmPassword.Text;

            //INSERT INTO 
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
            conn.Open();

            string INSERT = "INSERT INTO CustomerDet(FirstName ,LastName,CellphoneNum,StreeName,TownName,PostCode,UserName,Password)Values('"+fName+"','"+lName+"','"+cellNumb+"','"+StrName+"','"+TownName+"','"+postalCode+"','"+username+ "','"+password+"')";

            SqlCommand cmd = new SqlCommand(INSERT,conn);

            
            cmd.Parameters.AddWithValue("@FirstName",fName);
            cmd.Parameters.AddWithValue("@LastName", lName);
            cmd.Parameters.AddWithValue("@CellphoneNum",cellNumb);
            
            cmd.Parameters.AddWithValue("@StreeName",StrName);
            cmd.Parameters.AddWithValue("@TownName", TownName);
            cmd.Parameters.AddWithValue("@PostCode",postalCode);

            cmd.Parameters.AddWithValue("@UserName",username);
            cmd.Parameters.AddWithValue("@Password", password);

            cmd.ExecuteNonQuery();
            conn.Close();



            if (password == passConfirm)
            {
                TextBoxFName.Visible = false;
                TextBoxLName.Visible = false;
                TextBoxCellNumbers.Visible = false;
                TextBoxStreetName.Visible = false;
                TextBoxTownName.Visible = false;
                TextBoxPostalCode.Visible = false;
                TextBoxCreateUsername.Visible = false;
                TextBoxCreatePassword.Visible = false;
                TextBoxConfirmPassword.Visible = false;
                lblCellphoneNum.Visible = false;
                lblConfirmPassword.Visible = false;
                lblCreateAcc.Visible = false;   
                lblCreatePassword.Visible = false;
                lblCreateUsername.Visible = false;
                lblFName.Visible = false;
                lblLName.Visible = false;
                lblPostCode.Visible = false;
                lblResAddress.Visible = false;
                lblStreetName.Visible = false;
                lbTownName.Visible = false;
                btnCreateAcc.Visible = false;
             
                Response.Write("Account created successfully!!\nGo back to login to your account");
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void TextBoxTownName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}