using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RealAssigment
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitCom_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("apaapanah95@gmail.com", "apaapanah95@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBodyTxt.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("apaapanah95@gmail.com", "001229goi");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, Mail sent using SMTP with Secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                litResult.Text = "<p> Send Failed!" + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}