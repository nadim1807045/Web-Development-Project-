<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Diet.aspx.cs" Inherits="WebApplication3.Diet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .c1{
            background-color:rgba(0,0,0,0.07)
        }
        .c2{
           color:aliceblue
        }
        body{
             background-image:url("imgs/dr.jpeg");
             background-size:cover;
        }
    </style>
</asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
     <!-- <div class="row">  -->
         <div class="col-md-6">
            <div class="card c1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="imgs/adminuser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3 style="color:blue">Dietitian Login</h3>
                        </center>
                     </div>
                  </div>
           <!--       <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div> -->
                  <div class="row">
                     <div class="col">
                        <label>Dietitian ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="d_id"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" PostBackUrl="diet_contrl.aspx" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
        <br/><br/>

      </div>
   </div>   <br/><br/>   <br/><br/>   <br/><br/>   <br/><br/>   <br/><br/>   <br/><br />
</asp:Content>
