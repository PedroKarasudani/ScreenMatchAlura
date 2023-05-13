import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;

public class Principal {

    public static void main(String[] args) {
        Filme meuFilme = new Filme();
        meuFilme.setNome("Veloses Furiosos");
        meuFilme.setDiretor("Vin Diesel");
        System.out.println(meuFilme.getNome());
        System.out.println(meuFilme.getDiretor());
        
        Serie minhaSerie = new Serie();
        minhaSerie.setNome("La Casa De Papel");
        minhaSerie.setTemporadas(5);
        System.out.println(minhaSerie.getNome());
        System.out.println(minhaSerie.getTemporadas());

    }

}
