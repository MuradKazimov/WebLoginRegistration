<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="LoginWebPage.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="CssLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <form>

                <div class="con">

                    <header class="head-form">
                        <h2>Log In</h2>

                        <p>login here using your username and password</p>
                    </header>

                    <br>
                    <div class="field-set">


                        <span class="input-item">
                            <i class="fa fa-user-circle"></i>
                        </span>

                        
                        <asp:TextBox AutoPostBack="true" CssClass="form-input" ID="UsernameTextBox" placeholder="Username" runat="server"></asp:TextBox>

                        <br/>



                        <span class="input-item">
                            <i class="fa fa-key"></i>
                        </span>

                        
                        <asp:TextBox AutoPostBack="true" CssClass="form-input" ID="PasswordTextBox" type="password" placeholder="Password" runat="server"></asp:TextBox>

                        


                        <br />


                        <asp:Button CssClass="log-in" ID="SignInButton" OnClick="SignInButton_Click" runat="server" Text="Log In" />
                    </div>



                </div>

                    <div class="other">


                        <button class="btn submits sign-up">
                            <a href="RegisterForm.aspx">
                            Sign Up 
                            </a>

      <i class="fa fa-user-plus" aria-hidden="true"></i>
                        </button>

                    </div>


            </form>
        </div>
    </form>
</body>
</html>
