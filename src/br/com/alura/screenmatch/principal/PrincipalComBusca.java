package br.com.alura.screenmatch.principal;

import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;
import java.util.ArrayList;
import java.util.IllegalFormatException;
import java.util.List;
import java.util.Scanner;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.alura.screenmatch.execao.ErroDeConversaoDeAnoException;
import br.com.alura.screenmatch.modelos.Titulo;
import br.com.alura.screenmatch.modelos.TituloComIMDB;
import br.com.alura.screenmatch.pratico.ConsomeApi;

public class PrincipalComBusca {
    public static void main(String[] args) throws IOException, InterruptedException {
        Scanner leitura = new Scanner(System.in);
        String busca = ""; 

        while (!busca.equalsIgnoreCase("sair")) {
            try {
                System.out.print("Digite um filme: ");
                busca = leitura.nextLine();

                if (busca.equalsIgnoreCase("sair")) {
                    break;
                }
                ConsomeApi buscador = new ConsomeApi();
                buscador.gerar(busca);
                System.out.println(buscador);
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
        // System.out.println(titulos);
        // FileWriter escrita = new FileWriter("filmes.json");
        // escrita.write(gson.toJson(titulos));
        // escrita.close();
        // System.out.println("Finalizou!!");
    }
}