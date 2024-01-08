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
    public partial class OrderForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        public double total = 0;
        public double price = 0;
        public String productName;
        protected void Page_Load(object sender, EventArgs e)
        {
            ListBoxBox.Visible = false;
            BttnCheckout.Visible = false;
        }

        protected void BttnAddToCart_Click1(object sender, EventArgs e)
        {
            ListBoxBox.Items.Clear();
            ListBoxBox.Items.Add("Item Price");

            

            //INSERT INTO ORDER TABLE
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Reabetswe Tsotetsi\Documents\Butterfield_Bakery\App_Data\CustomerInfo.mdf;Integrated Security=True;Connect Timeout=30");
           // conn.Open();

            //string INSERT = "INSERT INTO OrderD(ProductName)Values('productName')";

           // SqlCommand cmd = new SqlCommand(INSERT, conn);

            if (CheckBoxPaella.Checked || CheckBoxSteamedBread.Checked)
            {
                if (CheckBoxPaella.Checked)
                {
                    productName = "Paella";
                    AddToDataBase();
                }

                if (CheckBoxSteamedBread.Checked)
                {
                    productName = "Steamed Bread";
                    AddToDataBase();
                }

                price = 25;
                total = total + price;
                ListBoxBox.Items.Add(productName+ "        \tR" + price);
            }
            if (CheckBoxCheeseRolls.Checked || CheckBoxBranMuffins.Checked)
            {
                if (CheckBoxCheeseRolls.Checked)
                {
                    productName = "Cheese Rolls";
                    AddToDataBase();
                }
                if (CheckBoxBranMuffins.Checked)
                {
                    productName = "Bran Muffins";
                    AddToDataBase();
                }
                price = 45;
                total = total + price;
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
           
            }
            if (CheckBoxHotDogRolls.Checked || CheckBoxBurgerBuns.Checked)
            {
                if (CheckBoxHotDogRolls.Checked)
                {
                    productName = "HotDogs Rolls";
                    price = 17;
                    total = total + price;

                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }
                if (CheckBoxBurgerBuns.Checked)
                {
                    productName = "Burger Buns";
                    price = 17;
                    total = total + price;

                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }
            }

            if (CheckBoxCroissants.Checked)
            {
                price = 28;
                total = total + price;
                productName = "Croissants";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxHotCrossBuns.Checked)
            {
                price = 19;
                total = total + price;
                productName = "Hot Cross Buns";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxChelseaBuns.Checked)
            {
                price = 20;
                total = total + price;
                productName = "Chelsea Buns";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxApplePie.Checked || CheckBoxBrioche.Checked)
            {
                if (CheckBoxApplePie.Checked)
                {
                    productName = "Apple Pie";
                }
                if (CheckBoxBrioche.Checked)
                {
                    productName = "Brioche Bun";
                }
                price = 40;
                total = total + price;
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }

            if (CheckBoxDonuts.Checked)
            {
                price = 38;
                total = total + price;
                productName = "Donuts";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxBlueberryScones.Checked)
            {
                price = 170;
                total = total + price;
                productName = "Blueberry Scones";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxPeppermintCrisp.Checked)
            {
                price = 62;
                total = total + price;
                productName = "Peppermint Crisp";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxJamTarts.Checked)
            {
                price = 48;
                total = total + price;
                productName = "Jam Tarts";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxCaramelSwirl.Checked)
            {
                price = 80;
                total = total + price;
                productName = "Caramel Swirls";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxMilkTart.Checked)
            {
                price = 35;
                total = total + price;
                productName = "Milk Tart";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxCupCakes.Checked)
            {
                price = 68;
                total = total + price;
                productName = "Cupcake";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxVanillaCake.Checked || CheckBoxChocolateCake.Checked || CheckBoxCarrotCake.Checked)
            {
                if (CheckBoxVanillaCake.Checked)
                {
                    productName = "Vanilla Cake";
                    price = 109;
                    total = total + price;

                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();

                }
                if (CheckBoxChocolateCake.Checked)
                {
                    productName = "Chocolate Cake";
                    price = 109;
                    total = total + price;

                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }
                if (CheckBoxCarrotCake.Checked)
                {
                    productName = "Carrot Cake";
                    price = 109;
                    total = total + price;

                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }

            }
            if (CheckBoxRedVelvet.Checked || CheckBoxCaramelCake.Checked)
            {
                if (CheckBoxRedVelvet.Checked)
                {
                    productName = "Red Velvet";
                    price = 115;
                    total = total + price;
                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }
                if (CheckBoxCaramelCake.Checked)
                {
                    productName = "Caramel Cake";
                    price = 115;
                    total = total + price;
                    ListBoxBox.Items.Add(productName + "\t\t R" + price);
                    AddToDataBase();
                }


            }
            if (CheckBoxTiramisu.Checked)
            {
                price = 130;
                total = total + price;
                productName = "Tiramisu Cake";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();

            }
            if (CheckBoxDeathbyChocolate.Checked)
            {
                price = 140;
                total = total + price;
                productName = "Death by Chocolate";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxWhiteBread.Checked)
            {
                price = 12;
                total = total + price;
                productName = "White Bread";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxBrownBread.Checked)
            {
                price = 10;
                total = total + price;
                productName = "Brown Bread";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxGarlicBread.Checked)
            {
                price = 23;
                total = total + price;
                productName = "Garlic Bread";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
            }
            if (CheckBoxSourDoughBread.Checked)
            {
                price = 21;
                total = total + price;
                productName = "Sour Bread";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();
            }
            if (CheckBoxFatCakes.Checked)
            {
                price = 14;
                total = total + price;
                productName = "Fat Cakes";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);

                AddToDataBase();

            }
            if (CheckBoxPizzaBread.Checked)
            {
                price = 31;
                total = total + price;
                productName = "Pizza Bread";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);


                AddToDataBase();
            }
            if (CheckBoxPizzaPie.Checked)
            {
                price = 22;
                total = total + price;
                productName = "Pizza Pie";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
                AddToDataBase();

            }


            if (CheckBoxBranMuffins.Checked)
            {

            }
            if (CheckBoxPaella.Checked)
            {

            }

           // string INSERT = "INSERT INTO OrderD(ProductName)Values('"+productName+"')";

            //SqlCommand cmd = new SqlCommand(INSERT, conn);

            //cmd.Parameters.AddWithValue("@productName",productName);

            // cmd.ExecuteNonQuery();

            //conn.Close();

            ListBoxBox.Visible = true;
            BttnCheckout.Visible = true;
 
            ListBoxBox.Items.Add("\n\nTotal: R " + "" + total);
      
            ListBoxBox.Visible = true;
            BttnCheckout.Visible =true;
            HyperLinkBack.Visible = true;


        }

        /*protected void RadbttnApplePie_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadbttnHotcrossBuns_CheckedChanged(object sender, EventArgs e)
        {
             if (CheckBoxHotCrossBuns.Checked)
            {
                price = 19;
                total = total + price;
                productName = "Hot Cross Buns";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
            }
        }

        protected void RadbttnChelseaBuns_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxChelseaBuns.Checked)
            {
                price = 20;
                total = total + price;
                productName = "Chelsea Buns";
                ListBoxBox.Items.Add(productName + "\t\t R" + price);
            }

        }

        protected void RadBttnPaella_CheckedChanged(object sender, EventArgs e)
        {
            productName = "Paella";

            price = 25;
            total = total + price;
            ListBoxBox.Items.Add(productName + "\t\t R" + price);
        }

        protected void RadbttnSteamedBread_CheckedChanged(object sender, EventArgs e)
        {
            productName = "Steamed bread";

            price = 25;
            total = total + price;
            ListBoxBox.Items.Add(productName + "\t\t R" + price);
        }*/

        public void AddToDataBase()
        {
            conn.Open();

            string INSERT = "INSERT INTO OrderD(ProductName)Values('" + productName + "')";

            SqlCommand cmd = new SqlCommand(INSERT, conn);

            cmd.Parameters.AddWithValue("@productName", productName);

            cmd.ExecuteNonQuery();

            conn.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void BttnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckoutForm.aspx");
        }
    }
}