using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Assignment_PRN
{
    public partial class UploadFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                GetFile();
                Image1.ImageUrl = "~/images/" + LstFile.SelectedItem.Text;
                imgProduct1.ImageUrl = "~/Images/up01.png";
                imgProduct2.ImageUrl = "~/Images/error.png";
                Label1.Text = "~/images/" + LstFile.SelectedItem.Text;
                lblMess.Text = "";
                lblData.Text = "";
            }
        }

        protected void BtnUpload_Click1(object sender, EventArgs e)
        {
            HttpPostedFile file = fuData.PostedFile;
            if (fuData.HasFile == false && file.ContentLength > 900000)
            {
                lblData.Text = "File doesn't greater than 900 KB";
            }
            else
            {
                imgProduct2.ImageUrl = "~/Images/error.png";
                lblMess.Text = "";
                string strImagePath = Server.MapPath("~/images/" + fuData.FileName);
                fuData.SaveAs(strImagePath);
                Image1.ImageUrl = "~/images/" + fuData.FileName;
                imgProduct1.ImageUrl = "~/images/indicator.gif ";
                Label1.Text = "~/images/" + fuData.FileName;
                lblData.Text = "Upload success!";
                GetFile();
            }
        }

        public void GetFile()
        {
            String[] files = null;
            files = Directory.GetFiles(Server.MapPath("~/images"));
            for (int i = 0; i < files.Length; i++)
            {
                files[i] = new FileInfo(files[i]).Name;
            }
            LstFile.DataSource = files;
            LstFile.DataBind();
            LstFile.SelectedIndex = 0;
        }

        protected void BtnDel_Click1(object sender, EventArgs e)
        {
            try
            {
                File.Delete(MapPath("images") + "\\" + LstFile.SelectedItem.Text);
                GetFile();
                Image1.ImageUrl = "~/images/" + LstFile.SelectedItem.Text;
                Label1.Text = "~/images/" + LstFile.SelectedItem.Text;
                imgProduct2.ImageUrl = "~/images/indicator.gif ";
                lblMess.Text = "Delete success!";
            }
            catch (Exception err)
            {
                lblMess.Text = err.Message;
            }
        }

        protected void LstFile_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/images/" + LstFile.SelectedItem.Text;
            imgProduct1.ImageUrl = "~/Images/up01.png";
            imgProduct2.ImageUrl = "~/Images/error.png";
            Label1.Text = "~/images/" + LstFile.SelectedItem.Text;
            lblMess.Text = "";
            lblData.Text = "";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GetFile();
            lblData.Text = "";
            imgProduct1.ImageUrl = "~/Images/up01.png";
            lblMess.Text = "";
            imgProduct2.ImageUrl = "~/Images/error.png";
            Image1.ImageUrl = "~/images/" + LstFile.SelectedItem.Text;
        }
    }
}