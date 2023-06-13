package br.com.alura.projetosolo;

import java.util.ArrayList;

public class CartaoDeCredito {
    private double limite;
    private double saldo;
    private ArrayList<Compra> compra;


    public CartaoDeCredito(double limite){
        this.limite = limite;
        this.saldo = limite;
        this.compra = new ArrayList<>();
    }

    public boolean adicionarItem(Compra compra){
        if(this.saldo > compra.getValor()){
            this.saldo -= compra.getValor();
            this.compra.add(compra);
            return true;
        }
        return false;        
    }

    public boolean adicionaLista(String descricao, double valor){
        if(this.saldo > valor){
            Compra produto = new Compra(descricao, valor);
            this.compra.add(produto);
            this.saldo -= valor;
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

    public ArrayList<Compra> getCompra() {
        return compra;
    }
}
