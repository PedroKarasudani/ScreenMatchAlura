package br.com.alura.projetosolo;

import java.util.Scanner;

public class Sistema {
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);

        System.out.print("Qual o limite do cartao: ");
        double limite = input.nextDouble();
        CartaoDeCredito cartao = new CartaoDeCredito(limite);
        

        int sair = 1;
        while(sair != 0){
            System.out.print("Descricao do produto: ");
            String descricao = input.next();

            System.out.print("Valor do produto: ");
            double valor = input.nextDouble();

            boolean compraRealizada = cartao.adicionaLista(descricao, valor);

            if (compraRealizada) {
                System.out.println("Compra realizada!");
                System.out.print("Digite 0 para sair ou 1 para continuar");
                sair = input.nextInt();
            } else {
                System.out.println("Saldo insuficiente!");
                sair = 0;
            }
        }

        System.out.println("***********************");
        System.out.println("COMPRAS REALIZADAS:\n");

        for (Compra c : cartao.getCompra()) {
            System.out.println(c.toString());
        }
        System.out.println("\n***********************");

        System.out.println("\nSaldo do cartão: " +cartao.getSaldo());

    }
}
