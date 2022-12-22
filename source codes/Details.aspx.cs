using System;
#pragma warning disable IDE0005 // Using directive is unnecessary.
using System.Collections.Generic;
#pragma warning restore IDE0005 // Using directive is unnecessary.
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
#pragma warning disable IDE0005 // Using directive is unnecessary.
using System.Linq;
using System.Web;
#pragma warning restore IDE0005 // Using directive is unnecessary.
using System.Web.UI;
#pragma warning disable IDE0005 // Using directive is unnecessary.
using System.Web.UI.WebControls;
#pragma warning restore IDE0005 // Using directive is unnecessary.

namespace WebApplication3
{
    public partial class Details : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
                addNewBook();

            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Already Exists, try some other ID');</script>");
            }
            else
            {
                addNewBook();
            }
        }
        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from details where id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void addNewBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO details (id,date,v_a,v_b,v_c,p_t,p_u,w_t,g_t,g_u) values(@id,@date,@v_a,@v_b,@v_c,@p_t,@p_u,@w_t,@g_t,@g_u)", con);

                cmd.Parameters.AddWithValue("@id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@v_a", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@v_b", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@v_c", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@p_t", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@p_u", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@w_t", ListBox1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@g_t", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@g_u", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            updateBookByID();
        }
        void updateBookByID()
        {

         if (checkIfBookExists())
            {
                try
                {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                 con.Open();
}
SqlCommand cmd = new SqlCommand("UPDATE details set date=@date,v_a=@v_a,v_b=@v_b,v_c=@v_c,p_t=@p_t,p_u=@p_u,w_t=@w_t,g_t=@g_t,g_u=@g_u where id ='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@date", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@v_a", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@v_b", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@v_c", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@p_t", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@p_u", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@w_t", ListBox1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@g_t", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@g_u", TextBox9.Text.Trim());



                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
Response.Write("<script>alert('Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                   Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
           else
           {
                 Response.Write("<script>alert('Invalid ID');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }
        void deleteBookByID()
        {
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from details WHERE id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }
    }
}