package br.com.alura.projeto;

public class Compras {
    private String descricao;
    private double valorProduto;

        public Compras(String descricao, double valorProduto) {
        this.descricao = descricao;
        this.valorProduto = valorProduto;
    }

    

        public String getDescricao() {
            return descricao;
        }



        public double getValorProduto() {
            return valorProduto;
        }



        @Override
        public String toString() {
            return "Compras [descricao=" + descricao + ", valorProduto=" + valorProduto + "]";
        }
    
    
}
