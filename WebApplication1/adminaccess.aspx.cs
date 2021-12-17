using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminaccess2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        static string global_filepath;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["access"] == null)
                {
                    Response.Redirect("adminlogin.aspx", true);
                }
            }
            catch (Exception ex)
            {

            }
            GridView1.DataBind();
        }

        // go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getAddressByName();
        }

        // update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateAddress();
        }
        // delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {

            deleteAddress();
        }
        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkIfAddressExists())
            {
                Response.Write("<script>alert('Substation Address Already Exists, if you want to Update, go to Update');</script>");
            }
            else
            {
                addNewAddress();
            }
        }



        // user defined functions

        void deleteAddress()
        {
            if (checkIfAddressExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from master_address_tbl where ss_name='" + TextBox2.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Address Deleted Successfully');</script>");
                    GridView1.DataBind();



                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Address');</script>");
            }
        }

        void updateAddress()
        {

            if (checkIfAddressExists())
            {
                try
                {
                    string filepath = "~/addressinventory/";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("addressinventory/" + filename));
                        filepath = "~/addressinventory/" + filename;
                    }
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE master_address_tbl set region=@region,est_type=@est_type,contact_no=@contact_no,email_id=@email_id,state=@state,city=@city,pincode=@pincode,full_address=@full_address,ss_imglink=@ss_imglink where ss_name='" + TextBox2.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@region", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@est_type", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email_id", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@full_address", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@ss_imglink", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Address Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Address');</script>");
            }
        }


        void getAddressByName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from master_address_tbl WHERE ss_name='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0]["city"].ToString();
                    TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
                    TextBox4.Text = dt.Rows[0]["email_id"].ToString();
                    TextBox6.Text = dt.Rows[0]["full_address"].ToString().Trim();
                    TextBox11.Text = dt.Rows[0]["pincode"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["region"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["est_type"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                    global_filepath = dt.Rows[0]["ss_imglink"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid SS Name');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        bool checkIfAddressExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from master_address_tbl where ss_name='" + TextBox2.Text.Trim() + "' OR email_id='" + TextBox4.Text.Trim() + "' OR contact_no='" + TextBox3.Text.Trim() + "' OR full_address='" + TextBox6.Text.Trim() + "';", con);
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

        void addNewAddress()
        {
            try
            {

                string filepath = "~/addressinventory/database-gc66d49ada_640.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("addressinventory/" + filename));
                filepath = "~/addressinventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO master_address_tbl(ss_name,region,est_type,contact_no,email_id,state,city,pincode,full_address,ss_imglink) values(@ss_name, @region, @est_type, @contact_no, @email_id, @state, @city, @pincode, @full_address, @ss_imglink)", con);

                cmd.Parameters.AddWithValue("@ss_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@region", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@est_type", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@ss_imglink", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Address added successfully.');</script>");
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}