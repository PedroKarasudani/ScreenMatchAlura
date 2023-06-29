package br.com.alura.screenmatch.pratico;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.alura.screenmatch.modelos.Titulo;
import br.com.alura.screenmatch.modelos.TituloComIMDB;

public class ConsomeApi {
    List<Titulo> titulos = new ArrayList<>();
    Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.UPPER_CAMEL_CASE).setPrettyPrinting().create();
            

    public void gerar(String busca){
        String endereco = "https://www.omdbapi.com/?t=" + busca.replace(" ", "+") + "&apikey=f94aab4b";                
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder().uri(URI.create(endereco)).build();
        try {
            HttpResponse<String> response = client.send(request, BodyHandlers.ofString());
            String json = response.body();
            TituloComIMDB tituloComIMDB = gson.fromJson(json, TituloComIMDB.class);
            Titulo meuTitulo = new Titulo(tituloComIMDB);
            titulos.add(meuTitulo);
        } catch (Exception e) {
            throw new RuntimeException("Erro ao buscar o filme");
        }
    }


    @Override
    public String toString() {
        return "ConsomeApi [titulos=" + titulos + "]";
    }

    
}
