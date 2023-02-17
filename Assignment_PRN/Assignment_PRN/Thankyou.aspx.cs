using System;

namespace Assignment_PRN
{
    public partial class Thankyou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text =
        "<br>Thank you for using our " +
        "service, <br>we will contact "
        + "you as soon as possible. "
        + "<br>Best Regards.";
        }
    }
}