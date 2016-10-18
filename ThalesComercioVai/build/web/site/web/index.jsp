<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Produto"%>
<%@include file="cabecalho.jsp" %> 
<%   

   
    plista = pdao.aleatorio();
    if(request.getParameter("codigo")!=null){
    Produto obj = pdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    }
    


%>
      
        </form>
		<div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="col-md-6 banner-grid">
						<h2>Compre</h2>
						<p>compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo compre tudo.</p>
						<a href="produtos.jsp" class="button">  compre tudo </a>
					</div>
				<div class="col-md-6 banner-grid1">
						<img src="images/p2.png" class="img-responsive" alt=""/>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		<div class="banner-bottom">
		<div class="gallery-cursual">
		<!--requried-jsfiles-for owl-->
		<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 3,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
		<!--requried-jsfiles-for owl -->
		<!--start content-slider-->
		<!--sreen-gallery-cursual-->
		</div>
		</div>
		<div class="gallery">
			<div class="container">
			<h3>Produtos em destaque</h3>
			<div class="gallery-grids">
                            <!--Aqui começa meu produto -->
                            <%for(Produto Pitem: plista) { %>
                            <div class="col-md-3 gallery-grid ">
                                    <a href="single.jsp?codigo=<%=Pitem.getCodigo()%>"> <img src="../../imagens/<%=Pitem.getImagem1() %>" width="250" height="265" class="img-responsive" alt=""/>
                                    <div class="gallery-info">
                                    <div class="quick">
                                    <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                                    </div>
                                    </div></a>
                                    <div class="galy-info">
                                           código: <%=Pitem.getCodigo() %>
                                            <p><h3><%=Pitem.getTitulo() %></h3></p>
                                            <div class="galry">
                                            <div class="prices">
                                                <h5 class="item_price">Preço: <font color=green>R$<%=Pitem.getPreco() %></font></h5>
                                            </div>
                                    <div class="rating">
                                                                    <span>1</span>
                                                                    <span>2</span>
                                                                    <span>3</span>
                                                                    <span>4</span>
                                                                    <span>5</span>
                                                            </div>

                                    <div class="clearfix"></div>
                                    </div>
                                    </div>
                            </div>
                            <% } %>
                            <!--Aqui acaba meu produto -->    
                            <div class="clearfix"></div>
			</div>
		</div>
		</div>
		<div class="subscribe">
	 <div class="container">
	 <div class="subscribe1">
		 <h4>the latest from swim wear</h4>
		 </div>
		 <div class="subscribe2">
		 <form>
			 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
			 <input type="submit" value="JOIN">
		 </form>
	 </div>
	 <div class="clearfix"></div>
	 </div>
</div>

<%@include file="rodape.jsp" %>