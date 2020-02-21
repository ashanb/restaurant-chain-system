<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MViewTAO_Records.aspx.cs" Inherits="TAORecords" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register Namespace="Google.API" TagPrefix="GoogleAPI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #TextArea1
        {
            width: 319px;
            height: 68px;
        }
        .style3
        {
            width: 165px;
        }
        .style4
        {}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Width="600px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
     
     <table width="550">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Record Type" Font-Bold="True" 
                    ForeColor="#333333"></asp:Label>
            </td>
            <td >
                <asp:DropDownList ID="RTypeDropDownList" runat="server" Height="32px" 
                    Width="200px">
                     <asp:ListItem Text="Total Number of Sales Done" />
                          <asp:ListItem Text="Total Number of Sales Canceled " />
                           <asp:ListItem Text="Total Sales Amount" />            
                   
                </asp:DropDownList>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</tr>
        <tr>
            <td class="style3" >
                <asp:Label ID="Label2" runat="server" Text="Genarate By" Font-Bold="True" 
                    ForeColor="#333333"></asp:Label>
            </td>
            <td colspan="2" >

                <asp:DropDownList ID="DateDropDownList" runat="server" Height="32px" 
                    Width="200px">
                     <asp:ListItem Text="Daily" />
                          <asp:ListItem Text="Weekly" />
                           <asp:ListItem Text="Monthly" />            
                         <asp:ListItem Text="Yearly" />
                          <asp:ListItem Text="Last Month" />
                           <asp:ListItem Text="Last 7 days" />                          
                         <asp:ListItem Text="Last Year" />
                       

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3" >
                <asp:Label ID="Label3" runat="server" Text="Graph Type" Font-Bold="True" 
                    ForeColor="#333333"></asp:Label>
                <br />
            </td>
            <td >
                <asp:DropDownList ID="GraphDropDownList" runat="server" Height="32px" 
                    Width="200px">
                     <asp:ListItem Text="Pie Chart t1" Value="p" />
                          <asp:ListItem Text="Pie Chart t2" Value="p3" />  
                          <asp:ListItem Text="Bar Chart" Value="bvs"/> 
                          <asp:ListItem Text="Line Chart" Value="lc"/>  



                       
                </asp:DropDownList>
            </td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" >
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
         
        
        <tr>
            <td class="style3" >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button2" runat="server" onclick="Genarate" Text="Genarate" 
                    Width="190px" />
            </td> 
            <td class="style6" style="width: 302px" >
                &nbsp;</td>
        </tr>
        
        
        <tr>
            <td class="style3" >
                <asp:Label ID="StatusLabel" runat="server" ForeColor="Black" Text="Status"></asp:Label>
            </td>
            <td >
                <asp:Label ID="output" runat="server" ForeColor="#990033"></asp:Label>
            </td>
            <td style="width: 302px" >
                &nbsp;</td>
        </tr>
    </table>
             <div ID="div1"  runat ="server" visible=false>
        <table style="width: 100%;">
        <tr>
           <td><asp:Label ID="GenaratedInfoLabel" runat="server" Text="Label" 
                   ForeColor="Black"></asp:Label></td>

        </tr>
            <tr>
                <td class="style4">
               
          
                        <GoogleAPI:Chart runat="server" id="Chart1" Width="400" Height="150" 
                            LineColor="ff0000" BackgroundColor="efefef" 
                            ></GoogleAPI:Chart>
           
                </td>
            </tr>
        </table>
                </div>
        </ContentTemplate>

     </asp:UpdatePanel>
    </asp:Panel>
    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

