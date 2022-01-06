using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.DAL.Registration_DAL.Reg_DALTableAdapters;

namespace WebApplication1.BLL.Registration_BLL
{
    public class User_RegistrationBase
    {
        public void Add_Registration(string stName, string staddress, string stgender, string stphone, string stemail, string stusername, string stpassword)
        {
           

            try
            {
                AddRegistrationTableAdapter obj = new AddRegistrationTableAdapter();

                obj.Add_Registration(stName, staddress, stgender, stphone, stemail, stusername, stpassword);
                 //string msg = "This Data is Successfully Inserted";
                 //return msg;
            }
            catch (Exception e)
            {
                
            }

        }
        public DataTable GetData() //BLL level Method
        {
            try
            {
                userregTableAdapter obj = new userregTableAdapter();//DAL class obj
                return  obj.GetUserData();


            }
            catch(Exception e)
            {
                return new DataTable();
            }
            

        }
        public void DeleteReg(int id)
        {
            DltRgistrnTableAdapter obj = new DltRgistrnTableAdapter();
            try
            {
                obj.DeleteRegistration(id);
            }
            catch(Exception e)
            {

            }
        }
        public DataTable GetUserById(int id)
        {
            GetUserByIdTableAdapter obj = new GetUserByIdTableAdapter();

            try
            {
                return obj.GetUserById(id);
            }
            catch(Exception e)
            {
                return new DataTable();
            }
        }
        public void UpdateUserInfo(int id,string name,string address,string gender,string phone,string email,string username,string  password)
        {
            UpdateRegistrationDataTableAdapter obj = new UpdateRegistrationDataTableAdapter();
            try
            {
                obj.UpdateUserInfo(id,name, address, gender, phone, email, username, password);
            }
            catch(Exception e)
            {

            }
        }
        public DataTable CourseNamebyId(int Intid)
        {
            course_titleTableAdapter obj = new course_titleTableAdapter();
            try
            {
               return obj.course_name_by_id(Intid);
            }
            catch (Exception e)
            {
                return new DataTable();
            }
        }

    }

    
}