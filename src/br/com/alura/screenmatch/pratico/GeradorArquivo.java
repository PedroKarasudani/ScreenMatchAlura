package br.com.alura.screenmatch.pratico;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.alura.screenmatch.modelos.Titulo;

public class GeradorArquivo {
        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        public void gerar(List<Titulo> titulo) throws IOException{
            FileWriter escrita = new FileWriter("filmes.json");
            escrita.write(gson.toJson(titulo));
            escrita.close();
            System.out.println("Finalizou!!");

        }
}
