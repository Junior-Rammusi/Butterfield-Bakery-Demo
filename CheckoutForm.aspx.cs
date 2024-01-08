using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Butterfield_Bakery
{
    public partial class CheckoutForm : System.Web.UI.Page
    {

        public String Name;
        public Int64 CardNum;
        public String ExpDate;
        public int Cvv;
        public String CardType;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RdBtnMasterCard_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxNameCard_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            Name = TextBoxNameCard.Text;
            CardNum = int.Parse(TextBoxCardNumber.Text);
            ExpDate = TextBoxExpDate.Text;
            Cvv = int.Parse(TextBoxCVV.Text);


            
                if (RdBtnMasterCard.Checked)
                {
                    CardType = "MasterCard";
                }
                if (RdBtnVisa.Checked)
                {
                    CardType = "Visa";
                }

                Response.Write("Dear" + " " + Name + ", " + "Payment has been made successfully!");

                TextBoxNameCard.Visible = false;
                TextBoxExpDate.Visible = false;
                TextBoxCVV.Visible = false;
                TextBoxCardNumber.Visible = false;

                lblBankingDetails.Visible = false;
                lblCardName.Visible = false;
                lblCardNumber.Visible = false;
                lblCardType.Visible = false;
                lblCVV.Visible = false;
                lblExpDate.Visible = false;

                RdBtnMasterCard.Visible = false;
                RdBtnVisa.Visible = false;
                btnPay.Visible = false;
            if(!RdBtnMasterCard.Checked && !RdBtnMasterCard.Checked)
            {
                Response.Write("Select Card Type !!!");
            }
            
        }
        }
    }