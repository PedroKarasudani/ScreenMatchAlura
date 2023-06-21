package br.com.alura.screenmatch.principal;

import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;
import java.util.IllegalFormatException;
import java.util.Scanner;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.alura.screenmatch.execao.ErroDeConversaoDeAnoException;
import br.com.alura.screenmatch.modelos.Titulo;
import br.com.alura.screenmatch.modelos.TituloComIMDB;

public class PrincipalComBusca {
    public static void main(String[] args) throws IOException, InterruptedException {
        try {
            Scanner leitura = new Scanner(System.in);
            System.out.print("Digite um filme: ");
            var busca = leitura.nextLine();

            String endereco = "https://www.omdbapi.com/?t=" + busca.replace(" ", "+") + "&apikey=f94aab4b";

            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(endereco))
                    .build();
            HttpResponse<String> response = client
                    .send(request, BodyHandlers.ofString());

            String json = response.body();
            System.out.println(json);

            Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.UPPER_CAMEL_CASE).create();
            TituloComIMDB tituloComIMDB = gson.fromJson(json, TituloComIMDB.class);
            // System.out.println(tituloComIMDB);

            Titulo meuTitulo = new Titulo(tituloComIMDB);
            System.out.println(meuTitulo);

            FileWriter escrita = new FileWriter("filmes.txt");
            escrita.write(meuTitulo.toString());
            escrita.close();

        } catch (NumberFormatException e) {
            System.out.print("Deu um erro em: ");
            System.out.println(e.getMessage());
        } catch (IllegalArgumentException e) {
            System.out.println("Erro!! verificar a sintax");
            System.out.println(e.getMessage());
        } catch (ErroDeConversaoDeAnoException e) {
            System.out.println(e.getMessage());
        } finally {
            System.out.println("Finalizou");
        }
    }
}