<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.UI.Registration_UI.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    </head>
  
<style>
    h1 {
        margin-left: auto;
        margin-right: auto;
        width: 8em
    }
    .auto-style1 {
        height: 9px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <h2>Course Registration</h2>
                <table align="left">
                <tr>
                    <td>FullName</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your FullName"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter Your Address"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" />
                        <br />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged" />
                    </td>
                </tr>

                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="+880-172-557-7802"></asp:TextBox></td>
                </tr>


                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="sample@sample.com"></asp:TextBox></td>
                </tr>


                <tr>
                    <td>username</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" type="Password" runat="server" placeholder="***********"></asp:TextBox></td>
                </tr>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Button ID="txtRegister" runat="server" Text="Register" OnClick="txtRegister_Click" />
                    </td>
                </tr>
              

            </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                        <h1>Course List</h1>
                        <asp:dropdownlist runat="server" id="ddlDepartment" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged" AutoPostBack="True">
                        <asp:listitem text="Select" value="0"></asp:listitem>
                        <asp:listitem text="CSE" value="1"></asp:listitem>
                        <asp:listitem text="EEE" value="2"></asp:listitem>
                        <asp:ListItem Text="ME" Value="3"></asp:ListItem>
                        <asp:listitem text="IPE" value="4"></asp:listitem>
                        <asp:listitem text="CE" value="5"></asp:listitem>
                        <asp:listitem text="BBA" value="5"></asp:listitem>
                        <asp:listitem text="Law & Justice" value="5"></asp:listitem>
                        <asp:listitem text="Social Science" value="5"></asp:listitem>
                        <asp:listitem text="English" value="5"></asp:listitem>
                        </asp:dropdownlist>
                              
                        
                       
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:GridView ID="dgvCourseList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Size="10px" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Left" Width="700px" OnSelectedIndexChanged="dgvCourseList_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>




                                        <%--     <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" ForeColor="Blue" OnClick="Edit_Click" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" ForeColor="Red" OnClick="Delete_Click" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Select Course">
                                            <ItemStyle HorizontalAlign="center" Width="10px" />
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />

                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="SL NO.">
                                             <ItemStyle HorizontalAlign="center" Width="10px" />
                                            <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                                           
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="ID" SortExpression="Date">

                                            <ItemTemplate>
                                                <asp:Label ID="wid" runat="server" Text='<%# Eval("Intid") %>'></asp:Label>
                                            </ItemTemplate>
                                             <ItemStyle HorizontalAlign="center" Width="10px" />
                                           
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Course Name" SortExpression="strCourseName">
                                            <ItemTemplate>
                                                <asp:Label ID="wcoursename" runat="server" Text='<%# Eval("strCourseName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="center" Width="50px" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Department" SortExpression="Date">                            
                                            <ItemTemplate>
                                                <asp:Label ID="waddress" runat="server" Text='<%# Eval("Department_id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="center" Width="50px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Course Code" SortExpression="Date">
                                            <ItemTemplate>
                                                <asp:Label ID="wgender" runat="server" Text='<%# Eval("Course_id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="center" Width="50px" />
                                        </asp:TemplateField>




                                    </Columns>

                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />

                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
            <tr>
                <td>
                     
                </td>
            </tr>
        </table>



                
            
           

                
               
                   
          
                        
               
           
            <div class="col-md-12">
                 <asp:GridView ID="dgvuserdata" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Size="10px" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Left" Width="962px" OnSelectedIndexChanged="dgvuserdata_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="SL NO.">
                        <ItemStyle HorizontalAlign="center" Width="12px" />
                        <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FullName" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wfullname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Address" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="waddress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Gender" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wgender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Phone" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wphone" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="120px" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="120px" />
                    </asp:TemplateField>

                    
                    <asp:TemplateField HeaderText="Department" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wdepartment" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="120px" />
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Seletcted Course" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wselected_course" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="120px" />
                    </asp:TemplateField>


                   <%-- <asp:TemplateField HeaderText="username" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wusername" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>--%>

                  <%--  <asp:TemplateField HeaderText="password" SortExpression="Date">
                        <ItemTemplate>
                            <asp:Label ID="wpassword" TextMode="Password" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" Width="100px" />
                    </asp:TemplateField>--%>


                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" ForeColor="Blue" OnClick="Edit_Click" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" ForeColor="Red" OnClick="Delete_Click" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:GridView>
            </div>

           




       
    </form>
    
</body>
</html>
