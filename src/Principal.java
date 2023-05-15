
import br.com.alura.screenmatch.calculos.CalculadoraDeTempo;
import br.com.alura.screenmatch.calculos.FiltroRecomendacao;
import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;

public class Principal {

    public static void main(String[] args) {
        Filme primeiroFilme = new Filme();
        primeiroFilme.setNome("Veloses Furiosos");
        primeiroFilme.setDiretor("Vin Diesel");
        primeiroFilme.setDuracaoEmMinutos(210);
        primeiroFilme.avalia(9);
        primeiroFilme.avalia(2);
        System.out.println("Nome do filme: " + primeiroFilme.getNome());
        System.out.println("Diretor do filme: " + primeiroFilme.getDiretor());
        System.out.println("Duração do filme: " + primeiroFilme.getDuracaoEmMinutos());
        System.out.println(primeiroFilme.pegaMedia());

        Serie primeiraSerie = new Serie();
        primeiraSerie.setNome("La Casa De Papel");
        primeiraSerie.setTemporadas(5);
        primeiraSerie.setMinutosPorEpisodio(45);
        primeiraSerie.setEpisodiosPorTemporada(10);
        System.out.println(primeiraSerie.getNome());
        System.out.println(primeiraSerie.getTemporadas());
        System.out.println("Duração do serie(total): " + primeiraSerie.getDuracaoEmMinutos());

        Filme segundoFilme = new Filme();
        segundoFilme.setDuracaoEmMinutos(300);

        CalculadoraDeTempo calculadora = new CalculadoraDeTempo();
        calculadora.inclui(primeiroFilme);
        calculadora.inclui(segundoFilme);
        calculadora.inclui(primeiraSerie);
        System.out.println("Calculando o tempo total foi de: " + calculadora.getTempoTotal());
        
        
        FiltroRecomendacao filtro = new FiltroRecomendacao();
        filtro.filtra(primeiroFilme);
    }
        
}
