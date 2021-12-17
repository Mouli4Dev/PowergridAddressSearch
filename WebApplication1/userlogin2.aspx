<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin2.aspx.cs" Inherits="WebApplication1.userlogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--bootstrap css--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%--datatables css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <%--fontawesome css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%--bootstrap js--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <img width="150px" src="imgs/user-gc291e70e2_640.png" />
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h3>Employee Login</h3>
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label>Employee ID</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Employee ID"></asp:TextBox>
                                        </div>
                                        <label>Password</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
