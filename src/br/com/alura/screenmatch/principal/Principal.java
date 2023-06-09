package br.com.alura.screenmatch.principal;
 
import java.util.ArrayList;

import br.com.alura.screenmatch.calculos.CalculadoraDeTempo;
import br.com.alura.screenmatch.calculos.FiltroRecomendacao;
import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;

public class Principal {

    public static void main(String[] args) {
        Filme primeiroFilme = new Filme("Veloses Furiosos", 2000);
        primeiroFilme.setDiretor("Vin Diesel");
        primeiroFilme.setDuracaoEmMinutos(210);
        primeiroFilme.avalia(9);
        primeiroFilme.avalia(2);
        System.out.println("Nome do filme: " + primeiroFilme.getNome());
        System.out.println("Diretor do filme: " + primeiroFilme.getDiretor());
        System.out.println("Duração do filme: " + primeiroFilme.getDuracaoEmMinutos());
        System.out.println(primeiroFilme.pegaMedia());

        Serie primeiraSerie = new Serie("La Casa De Papel", 2018);
        primeiraSerie.setTemporadas(5);
        primeiraSerie.setMinutosPorEpisodio(45);
        primeiraSerie.setEpisodiosPorTemporada(10);
        System.out.println(primeiraSerie.getNome());
        System.out.println(primeiraSerie.getTemporadas());
        System.out.println("Duração do serie(total): " + primeiraSerie.getDuracaoEmMinutos());

        Filme segundoFilme = new Filme("Se beber nao case", 2015);
        segundoFilme.setDuracaoEmMinutos(300);

        CalculadoraDeTempo calculadora = new CalculadoraDeTempo();
        calculadora.inclui(primeiroFilme);
        calculadora.inclui(segundoFilme);
        calculadora.inclui(primeiraSerie);
        System.out.println("Calculando o tempo total foi de: " + calculadora.getTempoTotal());
        
        
        FiltroRecomendacao filtro = new FiltroRecomendacao();
        filtro.filtra(primeiroFilme);

        ArrayList<Filme> listaDeFilmes = new ArrayList<>();
        listaDeFilmes.add(primeiroFilme);
        listaDeFilmes.add(segundoFilme);
        System.out.println("Quantidade de filmes: " + listaDeFilmes.size());
        System.out.println(listaDeFilmes.get(0).toString());
        System.out.println(listaDeFilmes);
    }   
        
}
