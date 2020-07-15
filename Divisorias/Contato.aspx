<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePagina.master" AutoEventWireup="true" CodeFile="Contato.aspx.cs" Inherits="Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="content">
        <div class="main">
            <div class="container_12">
            	<div class="wrapper">
                	<article class="grid_5">
                    	<h4 class="p10">Contato</h4>
<%--                        <figure class="page5-img1 img-bot1">
                            <iframe width="350" height="333" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed">
                            </iframe>
                        </figure>--%>
                        <div class="clear"></div>
                         <dl class="dl1">                                  
                            <dd><span>Telefone: </span>11 2939 8188</dd> 
                            <dd><span>Celular: </span>11 99746 3144</dd>                                
                            <dd><span>Nextel: </span>11 94798 2900</dd>                                
                            <dd><span>ID: </span>9*27069</dd>                                
                            <dd><span>E-mail: </span><a href="#">contato@lusole.com.br</a></dd>
                        </dl> 
                        <br />
                        <br />
                        <h6>Atendimento</h6>
                        De Segunda a Sexta-Feira das 08:30 às 17:30h
                    </article>
                    <article class="grid_7">
                    	<h4 class="p10">Envie-nos uma mensagem</h4>
                        <div id="form1">    
                            <asp:TextBox ID="txtvalidaCampo" runat="server" Visible="false" placeholder="Não preencher esse campo"></asp:TextBox>             						
				                <label>
                                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>                        
                                <asp:RequiredFieldValidator ID="valName" runat="server" 
                                    ControlToValidate="txtNome" ErrorMessage="Informar o Nome." ForeColor="Red"></asp:RequiredFieldValidator><br />
				                <asp:TextBox ID="txtNome" runat="server" Text="" Width="370px"></asp:TextBox><br />
				                </label>

				                <label>
                                <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                                    <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informar o E-mail." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="valExMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail Inválido." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator><br />
					                <asp:TextBox ID="txtEmail" runat="server" Width="370px"></asp:TextBox><br />
				                </label>

				                <label>
                                    <asp:Label ID="Label3" runat="server" Text="Telefone:"></asp:Label>
                                    <asp:RequiredFieldValidator ID="valTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Informar o Telefone." ForeColor="Red"></asp:RequiredFieldValidator><br />
					                <asp:TextBox ID="txtTelefone" runat="server" Width="164px"></asp:TextBox><br /> 
				                </label>

                                <label>
                                    <asp:Label ID="Label5" runat="server" Text="Assunto"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAssunto" ErrorMessage="Informar o Assunto." ForeColor="Red"></asp:RequiredFieldValidator><br />
					                <asp:TextBox ID="txtAssunto" runat="server" Width="370px"></asp:TextBox><br />
				                </label>

				                <label>
                                    <asp:Label ID="Label4" runat="server" Text="Mensagem:"></asp:Label>
                                    <asp:RequiredFieldValidator ID="valMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Informar Mensagem." ForeColor="Red"></asp:RequiredFieldValidator><br />
					                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="130px" Width="370px"></asp:TextBox><br /><br />
				                </label>
                                <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" cssclass="button-1" OnClick="btnEnviar_Click" ></asp:Button>
                            </div>
                    </article>
                </div>
            </div>
          </div>
        </section>
</asp:Content>

