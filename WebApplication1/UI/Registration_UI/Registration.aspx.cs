using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL.Registration_BLL;

namespace WebApplication1.UI.Registration_UI
{
    public partial class Registration : System.Web.UI.Page
    {
        string gender;
        DataTable dt = new DataTable(); // Creating BLL class object


        

        User_RegistrationBase obj = new User_RegistrationBase();

        public string Phone { get; private set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                GetUserData();
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Others";
        }

        protected void txtRegister_Click(object sender, EventArgs e)
        {
            if(txtRegister.Text == "Register")
            { 
                string Name = txtName.Text;
                string Address = txtAddress.Text;
                string Gender = gender;
                string Phone = txtPhone.Text;
                string Email = txtEmail.Text;
                string UserName = txtUsername.Text;
                string Password = txtPassword.Text;
                obj.Add_Registration(Name, Address, Gender, Phone, Email,UserName, Password);
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Registered Successfully ');", true);
                GetUserData();
                Clearmyformdata();
            }
            else
            {
                int id = Convert.ToInt32(Session["id"]);
                string Name = txtName.Text;
                string Address = txtAddress.Text;
                string Gender = gender;
                string Phone = txtPhone.Text;
                string Email = txtEmail.Text;
                string UserName = txtUsername.Text;
                string Password = txtPassword.Text;
                obj.UpdateUserInfo(id,Name, Address, Gender, Phone, Email, UserName, Password);
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Updated Successfully');", true);
                GetUserData();
                Clearmyformdata();
                txtRegister.Text = "Register";
            }

        }

       

        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = int.Parse(btn.CommandArgument.ToString());
            obj.DeleteReg(id);//Calling the DeleteReg Method from BLL level
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Deleted Successfully ');", true);   //GetDataCrud_Op();
            GetUserData(); //Calling load page function
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = int.Parse(btn.CommandArgument.ToString());

            Session["id"] = id;
            dt = obj.GetUserById(id);
            if(dt.Rows.Count>0)
            {

                foreach (DataRow row in dt.Rows)
                {
                    txtName.Text = row["name"].ToString();
                    txtAddress.Text = row["address"].ToString();
                    if(row["gender"].ToString()== "Male")
                    {
                        RadioButton1.Checked = true;
                        RadioButton2.Checked = false;
                        RadioButton3.Checked = false;
                    }
                    else if (row["gender"].ToString() == "Female")
                    {
                        RadioButton1.Checked = false;
                        RadioButton2.Checked = true;
                        RadioButton3.Checked = false;
                    }
                    else
                    {
                        RadioButton1.Checked = false;
                        RadioButton2.Checked = false;
                        RadioButton3.Checked = true;
                    }
                   
                  
                    txtPhone.Text = row["phone"].ToString();
                    txtEmail.Text = row["email"].ToString();
                    txtUsername.Text = row["username"].ToString();
                    txtPassword.Text = row["password"].ToString();

                    txtRegister.Text = "Update";
                }
            }
            else
            {

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Data Not Found');", true);
            }

        }
        protected void GetUserData() //UI level Method
        { 
            dt=obj.GetData(); //Calling BLL class method through Bll Class obj.
            dgvuserdata.DataSource = dt;
            dgvuserdata.DataBind();
                        

        }
        protected void Clearmyformdata()
        {
            txtName.Text = string.Empty;
            txtAddress.Text = string.Empty;
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtPassword.Text= string.Empty;

            


        }

       

        protected void GetCourseById()// calling this method from BLL level 
        {
            int id = Convert.ToInt32(ddlDepartment.SelectedValue);
            dt= obj.CourseNamebyId(id);
            dgvCourseList.DataSource = dt;
            dgvCourseList.DataBind();
        
        }

      

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void dgvuserdata_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetCourseById();
        }

        protected void dgvCourseList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //checkbox
        }
    }
}