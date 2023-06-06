package br.com.alura.screenmatch.principal;

import java.util.ArrayList;

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

        System.out.println(lista.get(0));
        System.out.println(lista.get(1));
        System.out.println(lista.get(2));
        // lista.forEach(nome -> System.out.println(nome)); //JAVA8 LAMBDA
        // lista.forEach(System.out::println); //JAVA8 LAMBDA
        for (Titulo item : lista) {
            System.out.println(item.getNome());
            if (item instanceof Filme) {
                Filme filme = (Filme) item;
                System.out.println("Classificacao: " + filme.getClassificacao());
            }
        }
    }
}
