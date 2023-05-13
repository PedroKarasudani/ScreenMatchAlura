import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;

public class Principal {

    public static void main(String[] args) {
        Filme meuFilme = new Filme();
        meuFilme.setNome("Veloses Furiosos");
        meuFilme.setDiretor("Vin Diesel");
        meuFilme.setDuracaoEmMinutos(210);
        System.out.println("Nome do filme: " + meuFilme.getNome());
        System.out.println("Diretor do filme: " + meuFilme.getDiretor());
        System.out.println("Duração do filme: " + meuFilme.getDuracaoEmMinutos());
        
        Serie minhaSerie = new Serie();
        minhaSerie.setNome("La Casa De Papel");
        minhaSerie.setTemporadas(5);
        minhaSerie.setMinutosPorEpisodio(45);
        minhaSerie.setEpisodiosPorTemporada(10);
        System.out.println(minhaSerie.getNome());
        System.out.println(minhaSerie.getTemporadas());
        System.out.println("Duração do serie(total): " + minhaSerie.getDuracaoEmMinutos());
        
        

    }

}
