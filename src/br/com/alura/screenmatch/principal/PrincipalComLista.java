package br.com.alura.screenmatch.principal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;
import br.com.alura.screenmatch.modelos.Titulo;

public class PrincipalComLista {
    public static void main(String[] args) {
        Filme primeiroFilme = new Filme("Veloses Furiosos", 2000);
        Serie primeiraSerie = new Serie("La Casa De Papel", 2018);
        Filme segundoFilme = new Filme("Se beber nao case", 2015);

        ArrayList<Titulo> lista = new ArrayList<>();
        lista.add(primeiroFilme);
        primeiroFilme.avalia(10);
        lista.add(segundoFilme);
        segundoFilme.avalia(9);
        lista.add(primeiraSerie);
        primeiraSerie.avalia(8);

        //System.out.println(lista.get(0));
        //System.out.println(lista.get(1));
        //System.out.println(lista.get(2));
        // lista.forEach(nome -> System.out.println(nome)); //JAVA8 LAMBDA
        // lista.forEach(System.out::println); //JAVA8 LAMBDA
        lista.forEach(System.out::println);
        for (Titulo item : lista) {
            System.out.println(item.getNome());
            if (item instanceof Filme) {
                Filme filme = (Filme) item;
                System.out.println("Classificacao: " + filme.getClassificacao());
            }
           
        }
        ArrayList<String> buscaPorArtista = new ArrayList<>();
        buscaPorArtista.add("Pedro");
        buscaPorArtista.add("Barbara");
        buscaPorArtista.add("Nami");
        System.out.println("Artistas: ");
        System.out.println(buscaPorArtista);
        Collections.sort(buscaPorArtista);
        System.out.println("Artista ordenados: ");
        System.out.println(buscaPorArtista);


        //para fazermos o collections.sort em lista precisamos implementar na Classe titulo,
        //pois ele nao sabe em quem se referenciar, assinando um contrato e mostrando oque fazer
        Collections.sort(lista);
        System.out.println("Filmes ordenados: ");
        System.out.println(lista);

        lista.sort(Comparator.comparing(Titulo::getAnoDeLancamento));
        System.out.println("Ordenando por ano: ");
        System.out.println(lista);
    }
}
