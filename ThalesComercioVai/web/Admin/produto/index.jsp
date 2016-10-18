<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.MarcaDAO"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@include file="../cabecalho.jsp" %>
<%
    ProdutoDAO dao = new ProdutoDAO();
    CategoriaDAO Categoriadao = new CategoriaDAO();
    MarcaDAO Marcadao = new MarcaDAO();
    List<Produto> lista;
     if (request.getParameter("txtFiltro") != null) {
        lista = dao.filtrar(request.getParameter("txtFiltro"));
        
    } else{ 
   
    //verifico se � excluir
        if(request.getParameter("codigo") != null){
            Produto obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
            if(obj != null){
                Boolean funcionou = dao.excluir(obj);
                if(funcionou){
                }
            }
        }
        
        lista = dao.listar();
    }
    
%>
    <div class="col-lg-12">
        <h1 class="page-header">
            Gerenciamento de Produtos
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
                <input type="text"  name="txtFiltro" class="form-control" placeholder="digite...">
                                <span class="input-group-btn"><button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button></span>
                            </div>
        </form>
        <div class="panel-body">
           
        
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>C�digo</th>
                            <th>Titulo</th>
                            <th>Descri��o</th>
                            <th>Quantidade</th>
                            <th>Pre�o</th>
                            <th>Categoria</th>
                            <th>Marca</th>
                            <th>Destaque</th>
                            <th>Imagem(1)</th>
                            <th>Imagem(2)</th>
                            <th>Imagem(3)</th>
                            <th>A��es</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Produto item : lista) {
                        %>
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            
                            <td><%=item.getTitulo()%></td>
                            <td><%=item.getDescricao()%></td>
                            <td><%=item.getQuant()%></td>
                            <td><%=item.getPreco()%></td>
                            <%
                                if (item.getCodcategoria() != null) {
                            %>
                            <td><%=item.getCodcategoria().getNome()%></td>
                            <%
                                }
                                if (item.getCodmarca() != null) {
                            %>
                            <td><%=item.getCodmarca().getNome()%></td>
                            <%
                                }
                            %>
                            <td><%=item.getDestaque()%></td>

                            <td><img src="../../imagens/<%=item.getImagem1()%>" width="65" height="65" /></td>
                            <td><img src="../../imagens/<%=item.getImagem2()%>" width="65" height="65" /></td>
                            <td><img src="../../imagens/<%=item.getImagem3()%>" width="65" height="65" /></td>

                            <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Alterar</a>
                            <button class="btn  btn-danger btn-sm" data-toggle="modal" data-target="#myModal" onclick="codigo=<%=item.getCodigo()%>">Excluir</button>  
                            </td>
                        </tr>
                        <%
                            }
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
                           <%@include file="../modals.jsp" %>
<%@include file="../rodape.jsp"%>




