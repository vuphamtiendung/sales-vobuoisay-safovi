using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Safovi
{
    public partial class Default : System.Web.UI.Page
    {
        //GIO_HANG x = new GIO_HANG();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "chonmua")
            {
                // tính tiền & gán session số tiền
                // mở giỏ hàng
                ArrayList giocu = (ArrayList)Session["gio_hang"];

                // tính tiền
                Label gia = (Label)e.Item.FindControl("lblTongThanhTien");
                int dongia = Convert.ToInt32(gia.Text);
                Session["so_tien"] = (int)Session["so_tien"] + dongia;


                // thêm vào giỏ, tạo giỏ mới
                //GIO_HANG hangmoi = new GIO_HANG();

            }
            
        }
        */
    }
}