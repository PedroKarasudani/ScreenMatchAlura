package br.com.alura.projeto;

import java.util.ArrayList;

public class CartaoDeCredito {
    private double limite;
    private double saldo;
    private ArrayList<Compras> compra;

    public CartaoDeCredito(double limite) {
        this.limite = limite;
        this.saldo = limite;
        this.compra = new ArrayList<>();
    }

    public boolean lancaCompra(Compras compra){
        if(this.saldo > compra.getValorProduto()){
            this.saldo -= compra.getValorProduto();
            this.compra.add(compra);
            return true;        
        }
        return false;
    }

    public double getLimite() {
        return limite;
    }

    public double getSaldo() {
        return saldo;
    }

    public ArrayList<Compras> getCompra() {
        return compra;
    }
    
    
}
