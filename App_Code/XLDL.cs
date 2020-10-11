using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using System.Data;
using System.Data.SqlClient;
// thư viện để sử dụng câu lệnh lấy chuỗi kết nối ở file Web.config
using System.Configuration;

#pragma warning disable CS0436 // Type conflicts with imported type
[assembly: OwinStartup(typeof(Safovi.XLDL))]
#pragma warning restore CS0436 // Type conflicts with imported type

namespace Safovi
{
    public class XLDL
    {
        // lấy giá trị chuỗi kết nối khai báo trong file web.config
         public string strCon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        // private string strCon = "Data Source = DESKTOP-5PSSEM5\\SQLEXPRESS; Integrated Security = true; Database= QLSafovi";


        /* GetData(string lenhSQL) nhằm thực hiện câu lệnh truy vấn SQL để
         * trả về dữ liệu là một DataTable 
         */
        public DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /* 
         * Execute(string lenhSQL) nhằm thực hiện câu lệnh Insert, Update, Delete để...
         * ...cập nhật dữ liệu cho SQL
         */
         public void Execute(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }

        /*
         * GetValue() nhằm thực hiện câu lệnh truy vấn SQL trả về dữ liệu là một giá trị đơn.
         */
         public string GetValue(String lenhSQL)
        {
            using(SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                string value = sqlCmd.ExecuteScalar().ToString();
                sqlCon.Close();
                return (value);
            }
        }
    }
}
