<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MStaffHome.aspx.cs" Inherits="MHomePage" %>

<%@ MasterType VirtualPath="MasterPageProp.master" %>
<%@ Register Namespace="Google.API" TagPrefix="GoogleAPI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div style="width: 784px; height: auto; background-color: #FFFFFF;">
       
        <table style="width:100%;">
            <tr>
                <td class="style3" colspan="3">
                <div style="background-color: #C0C0C0">Welcome to the Server Staff Member</div>



                   </td>
            </tr>
             <tr>
                <td colspan="3" style="color: #000000">
                Now you can perform your personal tasks using the menues on the browser window.
                If you have any difficulties in login please <asp:HyperLink ID="HyperLink1"
                        runat="server" NavigateUrl="#">contact us.</asp:HyperLink>
               </td>
            </tr>
          
        </table>
        <div>
        <asp:Accordion   
    ID="Accordion1"   
    CssClass="accordion"  
    HeaderCssClass="accordionHeader"  
    HeaderSelectedCssClass="accordionHeaderSelected"  
    ContentCssClass="accordionContent"  
    SelectedIndex="0"

    AutoSize="None"
    FadeTransitions="true"
    TransitionDuration="350"
    FramesPerSecond="40"
    RequireOpenedPane="false"
    SuppressHeaderPostbacks="true"
     
    runat="server" Font-Bold="True" BackColor="#999999" Width="783px">  
        <Panes>  
    <asp:AccordionPane ID="AccordionPane1" runat="server">  
        <Header>Daily Sales</Header>  
        <Content>  
   <GoogleAPI:Chart runat="server" id="Chart3" Width="400" Height="350" LineColor="0000ff" ShowGridLines="true" ToolTip="Charts" CssClass="lc"></GoogleAPI:Chart>
       
      
       </Content>  
    </asp:AccordionPane>  
    <asp:AccordionPane ID="AccordionPane2" runat="server">  
        <Header>Weekly Sales</Header>  
        <Content>  
             <GoogleAPI:Chart runat="server" id="Chart1" Width="400" Height="150" LineColor="ff0000" BackgroundColor="efefef" ToolTip="Charts"></GoogleAPI:Chart>
    
      </Content>  
    </asp:AccordionPane>  
    <asp:AccordionPane ID="AccordionPane3" runat="server">  
        <Header>Daily Guests</Header>  
        <Content>  
        
      </Content>  
    </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane4" runat="server">  
        <Header>Weekly Guests</Header>  
        <Content>  
      
      </Content>  
    </asp:AccordionPane> 
   
</Panes>  
</asp:Accordion> 

        
        
        </div>
       
        <br />
        <br />
        <br />
        
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style2
        {
            width: 178px;
        }
        .style3
        {
            height: 45px;
        }
        .style4
        {
            height: 45px;
        }
    </style>
</asp:Content>
