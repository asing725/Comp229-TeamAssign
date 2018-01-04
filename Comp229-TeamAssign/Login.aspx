<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Comp229_TeamAssign.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

          <div class="col-sm-6 col-md-6">
            <h3>Login here:</h3>           
            <table>  <tr><td> <asp:Label runat="server">Username: </asp:Label> </td>
                <th><asp:TextBox ID="userNtxt" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="requn" runat="server" ControlToValidate="userNtxt"  ErrorMessage="Please enter your username" ></asp:RequiredFieldValidator>  </th></tr>
                 <tr><td><asp:Label runat="server">Password: </asp:Label> </td><th><asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="reqpass" runat="server" ControlToValidate="passtxt"  ErrorMessage="Please enter your password" ></asp:RequiredFieldValidator></th></tr>
                      <tr><td><asp:Button ID="logInbtn" runat="server" Text="Login" class="btn btn-success"  /></td><th> <asp:Label ID="errlbl" runat="server" style="color:red"></asp:Label></th></tr>
              <tr><td><br /></td></tr>
                </table>
            <table>
                <tr><td><h4>New user ?</h4></td><th><asp:LinkButton id="register" runat="server" Text="Register here" CssClass="btn btn-primary" OnClick="register_Click"/></th></tr>
                </table>
     
            </div>
    </div>
</asp:Content>
