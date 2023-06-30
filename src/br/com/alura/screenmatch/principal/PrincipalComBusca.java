package br.com.alura.screenmatch.principal;

import java.io.IOException;
import java.util.Scanner;


import br.com.alura.screenmatch.execao.ErroDeConversaoDeAnoException;
import br.com.alura.screenmatch.pratico.ConsomeApi;
import br.com.alura.screenmatch.pratico.GeradorArquivo;

public class PrincipalComBusca {
    public static void main(String[] args) throws IOException, InterruptedException {
        Scanner leitura = new Scanner(System.in);
        String busca = "";
        ConsomeApi buscador = new ConsomeApi(); 

        while (!busca.equalsIgnoreCase("sair")) {
            try {
                System.out.print("Digite um filme: ");
                busca = leitura.nextLine();

                if (busca.equalsIgnoreCase("sair")) {
                    break;
                }
                buscador.gerar(busca);

            } catch (NumberFormatException e) {
                System.out.print("Deu um erro em: ");
                System.out.println(e.getMessage());
            } catch (IllegalArgumentException e) {
                System.out.println("Erro!! verificar a sintax");
                System.out.println(e.getMessage());
            } catch (ErroDeConversaoDeAnoException e) {
                System.out.println(e.getMessage());
            }
        
        }

        GeradorArquivo gerador = new GeradorArquivo();
        gerador.gerar(buscador.receba());
    }
}