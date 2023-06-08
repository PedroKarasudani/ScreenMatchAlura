package br.com.alura.projeto;

import java.util.Scanner;

public class Extrato {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        

        System.out.print("Digite valore do limite cartao: ");
        double limiteCartao = scanner.nextDouble();
        Sistema cliente = new Sistema(limiteCartao);
        System.out.println(cliente.getLimiteCartao());
        System.out.print("Digite o produto: ");
        String produto = scanner.nextLine();
        System.out.print("Digite o valor do produto: ");
        Double valorProduto = scanner.nextDouble();
        
    }
    
}
