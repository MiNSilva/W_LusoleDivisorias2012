<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePagina.master" AutoEventWireup="true" CodeFile="Orcamento.aspx.cs" Inherits="Orcamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="content">
        <div class="main">
            <div class="container_12">
                <div class="wrapper">
                    <article class="grid_5">
                        <h4 class="p10">Orçamento</h4>
                        <p>Preencha o formulário ao lado com os dados do seu projeto e data para que possamos 
                            montar seu orçamento o mais rápido possível.</p>
                        <div class="page1-box3 margin-bot">
                            <img src="images/orcamento.jpg" alt="" />
                        </div>
                    	<h4 class="p10">Contato</h4>
<%--                        <figure class="page5-img1 img-bot1">
                            <iframe width="350" height="333" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed">
                            </iframe>
                        </figure>--%>
                        <div class="clear"></div>
                         <dl class="dl1">                                  
                            <dd><span>Telefone: </span>11  2939 8188</dd> 
                            <dd><span>Celular: </span>11 99746 3144</dd>                                
                            <dd><span>Nextel: </span>11 94798 2900</dd>                                
                            <dd><span>ID: </span>9*27069</dd>                                
                            <dd><span>E-mail: </span><a href="#">contato@lusole.com.br</a></dd>
                        </dl> 
                    </article>
                    <article class="grid_7">
                        <h4 class="p10">Solicite Agora</h4>
                        <div id="form1">
                            <label>
                                Nome:
                                <asp:RequiredFieldValidator ID="valName" runat="server"
                                    ControlToValidate="txtNome" ErrorMessage="Informar o Nome." ForeColor="Red" Display="Dynamic" 
                                    ValidationGroup="Orcamento"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtNome" runat="server" Text="" Width="370px"></asp:TextBox><br />
                            </label>
                            <label>
                                Empresa:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtEmpresa" ErrorMessage="Informar a Empresa." ForeColor="Red" Display="Dynamic"
                                    ValidationGroup="Orcamento"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtEmpresa" runat="server" Text="" Width="370px"></asp:TextBox><br />
                            </label>
                            <label>
                                E-mail:
                                <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informar o E-mail." 
                                    ForeColor="Red" Display="Dynamic" ValidationGroup="Orcamento"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="valExMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail Inválido." 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator><br />
                                <asp:TextBox ID="txtEmail" runat="server" Width="370px"></asp:TextBox><br />
                            </label>
                            <label>
                                Telefone:
                                <asp:RequiredFieldValidator ID="valTelefone" runat="server" ControlToValidate="txtTelefone" 
                                    ErrorMessage="Informar o Telefone." ForeColor="Red" Display="Dynamic" ValidationGroup="Orcamento"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtTelefone" runat="server" Width="164px"></asp:TextBox><br />
                            </label>
                            <label>
                                Cidade/UF:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="txtCidade" ErrorMessage="Informar a Cidade/UF." ForeColor="Red"
                                    Display="Dynamic" ValidationGroup="Orcamento"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtCidade" runat="server" Text="" Width="370px"></asp:TextBox><br />
                            </label>
                            <label>
                                Endereço:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEndereco" 
                                    ErrorMessage="Informar o Endereço." ForeColor="Red" ValidationGroup="Orcamento" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                <asp:TextBox ID="txtEndereco" runat="server" Width="370px"></asp:TextBox><br />
                            </label>
                            <label>
                                Descriçao do Projeto:
                                <asp:RequiredFieldValidator ID="valMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Informar Descriçao do Projeto." 
                                    ForeColor="Red"  ValidationGroup="Orcamento" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="130px" Width="370px"> </asp:TextBox><br />                                
                            </label>
                            <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="button-1" ValidationGroup="Orcamento" OnClick="btnEnviar_Click"></asp:Button>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

