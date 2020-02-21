<%@ Page Title="" Language="C#" MasterPageFile="~/FUNC/Done/MasterPageProp.master" AutoEventWireup="true" CodeFile="MDirectAddUser.aspx.cs" Inherits="FUNC_Done_MDirectAddUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ MasterType VirtualPath="MasterPageProp.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 143px;
        }
        .style3
        {
            width: 142px;
        }
          .cssClass1
        {
            background-color: #FF0000;
        }
         .cssClass2
        {
              background-color: #C0C0C0;
        }
         .cssClass3
        {
              background-color: #008000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginInfo" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">



    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove">
  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
     

    <div style="width: 784px; height: auto; color: #000000; font-size: large;">
        <table>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="318px" 
                        AutoPostBack="True" ontextchanged="TextBox1_TextChanged" 
                    ></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:Label ID="ACValidLabel2" runat="server" ForeColor="#009900"></asp:Label>
                    <asp:Label ID="ACValidLabel1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="UserNRequiredFieldValidator" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">UserName Required!</asp:RequiredFieldValidator>
                </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label2" runat="server" Text="AppName"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="318px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label3" runat="server" Text="NIC"></asp:Label>
                    <br />
                </td>
                <td >
                    <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="318px" 
                        AutoPostBack="True" ontextchanged="TextBox3_TextChanged" 
                    ></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="NICRequiredFieldValidator" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">NIC Required!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    <br />
                </td>
                                <asp:PasswordStrength ID="PasswordStrength1" runat="server"
                 TargetControlID="TextBox4"
        DisplayPosition="RightSide"
    StrengthIndicatorType="Text"
    PreferredPasswordLength="12"
    PrefixText="Strength:"
    MinimumNumericCharacters="0"
    MinimumSymbolCharacters="0"
    RequiresUpperAndLowerCaseCharacters="false"
    TextStrengthDescriptions="Poor;Average;Excellent"
    TextStrengthDescriptionStyles="cssClass1;cssClass2;cssClass3"
    CalculationWeightings="50;15;15;20" />
                <td >
                    <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="318px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:Label ID="Label21" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">Password Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label5" runat="server" Text="PasswordQues"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="318px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="PassQRequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5">Password Question Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label6" runat="server" Text="PasswordAns"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="318px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="PassAnsRequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" 
                    ControlToValidate="TextBox6">Password Answer Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label7" runat="server" Text="UserType"></asp:Label>
                    <br />
                </td>
                <td colspan="2" class="style7" height="32px" >
                    <asp:RadioButton ID="AdminRadioButton" runat="server" GroupName="UserType" 
                    Text="Admin" value ="Admin"/>
                    <asp:RadioButton ID="ManagerRadioButton" runat="server" Text="Manager" 
                    GroupName="UserType" value ="Manager" />
                    <asp:RadioButton ID="WorkerRadioButton" runat="server" Text="Staff" 
                    GroupName="UserType" value ="Worker" Checked="True" />
                </td>
            </tr>
            <tr>
                <td class="style3" >
                    <asp:Label ID="Label8" runat="server" Text="Location ID"></asp:Label>
               
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="LOCATION_ID" 
                        DataValueField="LOCATION_ID" Height="32px" Width="169px">
                    </asp:DropDownList>
                </td>
                <td style="width: 302px" >
                    &nbsp;</td>
            </tr>
            </table>
    
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;LOCATION_ID&quot; FROM &quot;BASE_LOCATION&quot;">
        </asp:SqlDataSource>
    
      
        <br /><br />
     
      <div id="hiddendiv">
         <table id ="tabel2" 
            style="border :strong; margin-top:0px;">
        <tr>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" Text="National ID" ForeColor="Black"></asp:Label>
     
            </td>
            <td >
                <asp:TextBox ID="TextBox11" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="NIDRequiredFieldValidator1" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="TextBox11" Display="Dynamic" SetFocusOnError="True">NID Required</asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label13" runat="server" Text="Email" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox12" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator6" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="TextBox12" Display="Dynamic">Email Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" 
                    runat="server" ControlToValidate="TextBox12" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid Email </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label14" runat="server" Text="Conatact No" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox13" runat="server" Height="32px" Width="318px" 
                    ></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="CNRequiredFieldValidator3" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="TextBox13" 
                    Display="Dynamic">Conatct No Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label15" runat="server" Text="Address" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox14" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator7" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="TextBox14" Display="Dynamic">Address Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label16" runat="server" Text="Date of Birth" ForeColor="Black"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="ddTextBox" runat="server"  Width="59px" Height="32px"></asp:TextBox>
                <asp:TextBox ID="monTextBox" runat="server" Width="72px" Height="32px" ></asp:TextBox>
                <asp:TextBox ID="yTextBox" runat="server" Width="56px" Height="32px"></asp:TextBox>
            </td> 
           
              <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="ddTextBox" WatermarkText="dd">
                </asp:TextBoxWatermarkExtender>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                    TargetControlID="monTextBox" WatermarkText="mm">
                </asp:TextBoxWatermarkExtender>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
                    TargetControlID="yTextBox" WatermarkText="yy">
                </asp:TextBoxWatermarkExtender>
            <td class="style6" >
                <asp:RangeValidator ID="ddRangeValidator" runat="server" 
                    ControlToValidate="ddTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="31" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid day format</asp:RangeValidator>
                <asp:RangeValidator ID="yyRangeValidator" runat="server" 
                    ControlToValidate="yTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="99" MinimumValue="00" SetFocusOnError="True" Type="Integer">invalid year format</asp:RangeValidator>
                <asp:RangeValidator ID="mRangeValidator" runat="server" 
                    ControlToValidate="monTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid month format</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label17" runat="server" Text="Gender" ForeColor="Black"></asp:Label>
            </td>
            <td height="32px" >
                <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" 
                    Text="Male" Checked="True" />
                <asp:RadioButton ID="FemaleRadioButton" runat="server" 
                    GroupName="Gender" Text="Female" />
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label18" runat="server" Text="First Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox16" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
                <asp:RequiredFieldValidator ID="FNRequiredFieldValidator5" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="TextBox17" 
                    Display="Dynamic">First Name Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label9" runat="server" Text="Last Name" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td >
                <asp:TextBox ID="TextBox17" runat="server" Height="32px" Width="318px"></asp:TextBox>
            </td>
            <td class="style6" >
            </td>
        </tr>
        <tr>
            <td class="style2">
                Step 1<br />
            </td>
            <td >
                <asp:Button ID="Submit" runat="server" Text="Submit" 
                    Width="309px" onclick="Submit_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <asp:Label ID="Label20" runat="server" Text="OutPut" ForeColor="Black"></asp:Label>
&nbsp;</td>
            <td>
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
    </div>

    </div>
    </ContentTemplate>
       </asp:UpdatePanel>
      </asp:Panel>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
</asp:Content>

