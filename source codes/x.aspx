<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="x.aspx.cs" Inherits="WebApplication3.x" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .c1{
            background-color:rgba(0,0,0,0.2)
        }
        .c2{
           color:aliceblue
        }
        body{
             background-image:url("imgs/chocolate-cherry-muffins-3-500x500.jpg");
             background-repeat:repeat-x;
             background-size: 1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div class="col">
                         <div class="col-md-8" align:"center">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nutrition_careConnectionString %>" SelectCommand="SELECT * FROM [advice]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                             <Columns>
                                 <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                 <asp:BoundField DataField="sug" HeaderText="sug" SortExpression="sug" />
                             </Columns>
                             
                         </asp:GridView>
                     </div>

       <br />
                         <br />
                         <br />
                         <br />
       <br />
                         <br />
                         <br />
                         <br />

       <br />
                         <br />
                         <br />
                         <br />

       <br />
                         <br />
                         <br />
                         <br />

       <br />
                         <br />   <br />
                         <br />
                         <br />

       <br />
                         <br />
                         <br />
                         <br />
 <br />
                         <br />
                         <br />

</asp:Content>
