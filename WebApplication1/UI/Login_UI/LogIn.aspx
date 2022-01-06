<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebApplication1.UI.LogIn" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form1 {
            border: 3px solid #f1f1f1;
            
        }

        #txtName, #txtPassword {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        #txtLogin {
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            #txtLogin_Click:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }


        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>



<form id="form1" runat="server">
      
                    <h2>Log In</h2>
                        <asp:Label ID="lbl"  runat="server">Username</asp:Label> 
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your FullName"></asp:TextBox>
                
                    <asp:Label ID="Label1"  runat="server">Password</asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Your Address"></asp:TextBox>
                
                        <br />
                        <asp:Button ID="txtLogin" runat="server" Text="Login" OnClick="txtLogin_Click" />

   

  
    </form>

</body>
</html>
