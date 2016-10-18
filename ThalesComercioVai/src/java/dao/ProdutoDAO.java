/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Produto;

    
public class ProdutoDAO extends GenericDAO<Produto, Integer> {

      public ProdutoDAO()
    {
        super(Produto.class);
    }
    
    public List<Produto> listar(Integer codigo, String tipo){
        List<Produto> lista;
        try{
            String namedquery;
            if(tipo.equals("M")){
                namedquery = "findByMarca";
            }else{
                namedquery = "findByCategoria";
            }
            lista = em.createNamedQuery("Produto." +namedquery).setParameter("codigo", codigo).getResultList();
        }catch(Exception ex){
            ex.printStackTrace();
            lista = null;
        }
        return lista;
    }
    public List<Produto> aleatorio(){
       List<Produto> o = em.createNativeQuery("Select * from Produto where destaque=true order by random () limit 8 ",Produto.class).getResultList();
       return o;
    }
    

    public List<Produto> listarP(int quant, int categoria, int marca, int codigo) {
        return em.createNativeQuery("Select * from Produto p where (codigo!="+codigo+" AND  p.destaque = true) AND (p.codcategoria ="+categoria+" OR codmarca = "+marca+")  order by random() limit " + quant, Produto.class).getResultList();

    }
}
