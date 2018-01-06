<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Comp229_TeamAssign.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



   <div class="row">
        <div class="col-sm-3 ">
            <div class="panel panel-default">
            <div class="panel-heading">
                            <h1 class="panel-title"><i class="fa fa-user-plus fa-lg"></i> Login here:</h1>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label">Username:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="userNtxt" placeholder="Username" required="true" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="login"  ID="requn" runat="server" ControlToValidate="userNtxt"  ErrorMessage="Please enter your username" ></asp:RequiredFieldValidator>
                           </div>
                            <div class="form-group">
                            <label class="control-label">Password:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="passtxt" placeholder="Password" required="true" TextMode="Password" ></asp:TextBox>
                       <asp:RequiredFieldValidator ValidationGroup="login" ID="reqpass" runat="server" ControlToValidate="passtxt"  ErrorMessage="Please enter your password" ></asp:RequiredFieldValidator></th></tr>
                        </div>
                         <div class="form-group">
                             <asp:Button ID="logInbtn" ValidationGroup="login" runat="server" Text="Login" class="btn btn-danger" OnClick="logInbtn_Click"  />
                            <asp:Label runat="server" ID="msgtxt"></asp:Label>
                             </div>
                                       <div class="form-group">
                            <h1 class="panel-title">New user ?</h1>
                 
                       
                        <asp:LinkButton id="register" runat="server" Text="Register here" CssClass="btn btn-danger" OnClick="register_Click"/>
            </div>
                </div>
             </div>
        
           </div>
    </div>
</asp:Content>
