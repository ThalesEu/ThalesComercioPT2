package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Itemvenda;
import modelo.Produto;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-10-18T19:51:52")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile SingularAttribute<Categoria, Integer> codigo;
    public static volatile ListAttribute<Categoria, Produto> produtoList;
    public static volatile SingularAttribute<Categoria, String> nome;
    public static volatile ListAttribute<Categoria, Itemvenda> itemvendaList;

}