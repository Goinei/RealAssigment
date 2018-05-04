using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace RealAssigment
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnComfirmPurchase_Click(object sender, EventArgs e)
        {
            var clientId = "ATO5xfDxWdCmVydQywCtf9oquYRM01C3umQk2KVMVAFhM-37Pa5febjQDN2C7TiUQDcc2_AH9ovWHeb8";
            var clientSecret = "EOjAZEoK37JRbJ_Ph1B-TgFVgrdxWA0xH9CFslS4fjr55qGketY8DKKkg0FipOuPMyLfdNoWYWG_dktQ";
            var sdkConfig = new Dictionary<string, string>
            {
                {"mode","sandbox" },
                {"clientId",clientId },
                {"clientSecret",clientSecret }
            };
            // Authenticate with PayPal
            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            //Get APIContext Object
            apiContext.Config = sdkConfig;

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            { 

            var payment = new Payment() { id = paymentId };

            var payerId = Request.QueryString["PayerID"].ToString();
            var paymentExecution = new PaymentExecution() { payer_id = payerId };

            var executedPayment = payment.Execute(apiContext, paymentExecution);

            litInformation.Text = "<p> Your Order are Compelete </p>";
            btnComfirmPurchase.Visible = false;
        }
}
          

        }
    }
