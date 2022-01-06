using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.DAL.Registration_DAL.Reg_DALTableAdapters;

namespace WebApplication1.BLL.Login_BLL
{
    public class Login_BLL
    {

        public DataTable LogIN(string username, string password)
        {
            try
            {
                UserLoginTableAdapter obj = new UserLoginTableAdapter();
                return  obj.UserLogin(username, password);

            }
            catch(Exception e)
            {
                return new DataTable(); 
            }
            
        }
       
    }
}