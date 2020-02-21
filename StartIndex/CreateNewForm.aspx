<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNewForm.aspx.cs" Inherits="CreateNewForm" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .style2
        {
            width: 79px;
        }
        .style5
        {
            width: 287px;
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

        .style6
        {
            width: 78px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server" submitdisabledcontrols="False">
    <div style="width: 620px; height: 800px;">

        <asp:Panel ID="Panel1" runat="server">
     
    <table  id ="tabel1" style="border :strong; margin-top:0px;">

 
            
    <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
 <asp:DropShadowExtender ID="dse" runat="server"  TargetControlID="Panel1"  Opacity="0.8"   Rounded="true" TrackPosition="true" />
     
    
         
            <tr>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" 
                        ToolTip="*"></asp:Label>
                    <asp:Label ID="Label22" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                  
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="200px" 
                        AutoPostBack="True" ontextchanged="TextBox1_TextChanged" MaxLength="10" 
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
                <td class="style5" >
                    <asp:Label ID="Label3" runat="server" Text="NIC" Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label23" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <br />
                </td>
                <td >
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="200px" 
                        AutoPostBack="True" ontextchanged="TextBox3_TextChanged" MaxLength="10" 
                    ></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="NICRequiredFieldValidator" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="UserNRequiredValidator" SetFocusOnError="True">NIC Required!</asp:RequiredFieldValidator>
                    <asp:Label ID="vali" runat="server" ForeColor="Maroon" Text="Incorrect NIC" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                    <asp:Label ID="Label4" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label24" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <br />
                </td>
                <asp:PasswordStrength ID="PasswordStrength1" runat="server"
                 TargetControlID="TextBox4"
        DisplayPosition="RightSide"
    StrengthIndicatorType="Text"
    PreferredPasswordLength="6"
    PrefixText="Strength:"
    MinimumNumericCharacters="0"
    MinimumSymbolCharacters="0"
    RequiresUpperAndLowerCaseCharacters="false"
    TextStrengthDescriptions="Poor;Average;Excellent"
    TextStrengthDescriptionStyles="cssClass1;cssClass2;cssClass3"
    CalculationWeightings="50;15;15;20" />

             
                <td >
                    <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="200px" 
                        MaxLength="7" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4">Password Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Repeat Password"></asp:Label>
                    <asp:Label ID="Label25" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="RepeatPTextBox" runat="server" Height="22px" Width="200px" 
                        MaxLength="10" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="RepeatPTextBox" 
                        ErrorMessage="CompareValidator">Password Not Matched</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                    <asp:Label ID="Label5" runat="server" Text="PasswordQues" Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label26" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="275px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="PassQRequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5">Password Question Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                    <asp:Label ID="Label6" runat="server" Text="PasswordAns" Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label27" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="200px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    <asp:RequiredFieldValidator ID="PassAnsRequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" 
                    ControlToValidate="TextBox6">Password Answer Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="style5" >
                <asp:Label ID="Label12" runat="server" Text="National ID" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
     
                    <asp:Label ID="Label28" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
     
                </td>
                <td >
                <asp:TextBox ID="TextBox11" runat="server" Height="22px" Width="200px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="NIDRequiredFieldValidator1" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="TextBox11" Display="Dynamic" SetFocusOnError="True">NID Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label13" runat="server" Text="Email" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label29" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="TextBox12" runat="server" Height="22px" Width="275px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
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
                <td class="style5" >
                <asp:Label ID="Label14" runat="server" Text="Conatact No" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label30" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="TextBox13" runat="server" Height="22px" Width="225px" 
                    ></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="CNRequiredFieldValidator3" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="TextBox13" 
                    Display="Dynamic">Conatct No Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label15" runat="server" Text="Address" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label31" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="TextBox14" runat="server" Height="22px" Width="275px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator7" runat="server" 
                    ErrorMessage="This Field should not be null" 
                    ControlToValidate="TextBox14" Display="Dynamic">Address Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label16" runat="server" Text="Date of Birth" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="ddTextBox" runat="server"  Width="59px" Height="22px">dd</asp:TextBox>
                <asp:TextBox ID="monTextBox" runat="server" Width="72px" Height="22px" >mm</asp:TextBox>
                <asp:TextBox ID="yTextBox" runat="server" Width="56px" Height="22px">yy</asp:TextBox>
                </td>

                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="ddTextBox" WatermarkText="dd">
                </asp:TextBoxWatermarkExtender>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                    TargetControlID="monTextBox" WatermarkText="mm">
                </asp:TextBoxWatermarkExtender>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
                    TargetControlID="yTextBox" WatermarkText="yy">
                </asp:TextBoxWatermarkExtender>

                <td class="style6" style="width: 302px" >
                <asp:RangeValidator ID="ddRangeValidator" runat="server" 
                    ControlToValidate="ddTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="31" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid day format</asp:RangeValidator>
                <asp:RangeValidator ID="mRangeValidator" runat="server" 
                    ControlToValidate="monTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">invalid month format</asp:RangeValidator>
                <asp:RangeValidator ID="yyRangeValidator" runat="server" 
                    ControlToValidate="yTextBox" Display="Dynamic" ErrorMessage="RangeValidator" 
                    MaximumValue="99" MinimumValue="00" SetFocusOnError="True" Type="Integer">invalid year format</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label17" runat="server" Text="Gender" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                </td>
                <td >
                <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" 
                    Text="Male" Checked="True" />
                <asp:RadioButton ID="FemaleRadioButton" runat="server" 
                    GroupName="Gender" Text="Female" />
                </td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label18" runat="server" Text="First Name" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                    <asp:Label ID="Label33" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="TextBox16" runat="server" Height="22px" Width="200px"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                <asp:RequiredFieldValidator ID="FNRequiredFieldValidator5" runat="server" 
                    ErrorMessage="This Field should not be null" ControlToValidate="TextBox16" 
                    Display="Dynamic">First Name Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label9" runat="server" Text="Last Name" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                </td>
                <td >
                <asp:TextBox ID="TextBox17" runat="server" Height="22px" Width="250px" 
                    MaxLength="30"></asp:TextBox>
                </td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                    &nbsp;</td>
                <td >
                <asp:Button ID="Submit" runat="server" Text="Submit" 
                    Width="119px" onclick="Submit_Click" />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Clear" 
                        UseSubmitBehavior="False" Width="119px" ValidationGroup="a" />
                </td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                <asp:Label ID="Label20" runat="server" Text="OutPut" ForeColor="Black" 
                    Font-Bold="True"></asp:Label>
                </td>
                <td >
                <asp:Label ID="output" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style6" style="width: 302px" >
                    &nbsp;</td>
            </tr>
            
       </table>
     
    </asp:Panel>
        <br /><br />
    
       
    </div>
    </form>
</body>
</html>
