<%@page import="modelo.Cliente"%>
<%@include file="../cabecalho.jsp" %>
<%@page import="java.util.List"%>
<%@page import="dao.ClienteDAO"%>
<%
    ClienteDAO dao = new ClienteDAO();
    List<Cliente> lista;
    if (request.getParameter("txtFiltro") != null) {
        lista = dao.filtrar(request.getParameter("txtFiltro"));
    } else {
        lista = dao.listar();
    }
    %>
    <div class="col-lg-12">
        <h1 class="page-header">
            Gerenciamento de Categorias
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">listagem</a>
            </li>
            <li class="active">
                 <i class="fa fa-github"></i> 
                  <i class="fa fa-ban"></i>             </li>
        </ol>
    </div>

<!-- /.row -->
<div class="row">
    <div class="panel panel-default">

        <div class="panel-body">

            <a  href="add.jsp" class="btn  btn-primary btn-sm fa fa-plus-square-o" >Novo</a>
            
        </div>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <form action="#" method="post">
            <div class="form-group input-group">
                <input type="text" name="txtFiltro" class="form-control" placeholder="digite...">
                <span class="input-group-btn"><button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button></span>
            </div>
        </form>
        <div class="panel-body">
           
        
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>C�digo</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Senha</th>
                        <th>Estado</th>
                        <th>Cidade</th>
                        <th>Endereco</th>
                        <th>Bairro</th>
                        <th>Cep</th>
                      
                        <th >A��es</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        for(Cliente item:lista)
                        {
                            %>
                        
                    <tr>
                        <td><%=item.getCodigo()%></td>
                        <td><%=item.getNome()%></td>
                        <td><%=item.getEmail()%></td>
                        <td><b>*****</b></td>
                        <td><%=item.getEstado()%></td>
                        <td><%=item.getCidade()%></td>
                        <td><%=item.getEndereco()%></td>
                        <td><%=item.getBairro()%></td>
                        <td><%=item.getCep()%></td>
                        
                                                                                                
                        <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Alterar</a>
                            <a href="del.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Excluir</a>  
                         </td>
                    </tr>
                                 <% }
%>
             
                </tbody>
            </table>
   <!-- /.table-responsive -->
            </div>

        </div>
        <!-- /.panel-body -->
    </div>
    <!-- /.panel -->
        </div>
    <%@include file="../rodape.jsp" %>
