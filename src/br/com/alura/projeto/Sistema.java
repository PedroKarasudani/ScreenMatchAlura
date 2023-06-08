package br.com.alura.projeto;

public class Sistema {
    private double limiteCartao;
    private String produto;
    private double valorProduto;

    public Sistema(double limiteCartao) {
        this.limiteCartao = limiteCartao;
    }

    public double getLimiteCartao(){
        return this.limiteCartao;
    }
}
