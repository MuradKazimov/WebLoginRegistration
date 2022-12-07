<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="LoginWebPage.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CssRegister.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <form>

                <div class="con">

                    <header class="head-form">
                        <h2>Sign Up</h2>

                        <p>Create new user with username and password</p>
                    </header>

                    <br />
                    <div class="field-set">

                        <div>

                            <span class="input-item">
                                <i class="fa fa-user-circle"></i>
                            </span>

                            <asp:TextBox CssClass="form-input" ID="UsernameTextBox"  placeholder="Username" runat="server"></asp:TextBox>
                        </div>



                        <div>

                            <span class="input-item">
                                <i class="fa fa-key"></i>
                            </span>


                            <asp:TextBox CssClass="form-input" ID="PasswordTextBox" type="password" placeholder="Password" runat="server"></asp:TextBox>
                        </div>
                        <div>

                            <span class="input-item">
                                <i class="fa fa-key"></i>
                            </span>

                            <asp:TextBox CssClass="form-input" ID="PasswordRepeatTextBox" type="password" placeholder="Repeat Password" runat="server"></asp:TextBox>
                        </div>

                        <div>

                            <asp:TextBox CssClass="form-input" ID="PhoneTextBox"  type="tel" pattern="{+994} [0-9]{2}-[0-9]{3}-[0-9]{2}-[0-9]{2}" placeholder="+994 XX-XXX-XX-XX" required="+" runat="server"></asp:TextBox>
                        </div>
                        <div>

                            <asp:TextBox CssClass="form-input" ID="MailTextBox" type="email" placeholder="Mail Address" runat="server"></asp:TextBox>
                        </div>



                        <br />


                        <asp:Button OnClick="SignUp_Click" CssClass="sign-up" ID="SignUp" runat="server" Text="Sign Up" />
                    </div>





                    <button class="btn submits sign-up">
                        <a href="LoginForm.aspx">Log In 
                        </a>
                    </button>
                </div>
        </div>


    </form>
    </div>
    </form>
</body>
</html>
