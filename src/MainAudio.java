
import br.com.alura.screenmatch.modelos.Musica;
import br.com.alura.screenmatch.modelos.Podcast;
import br.com.alura.screenmatch.modelos.MinhasPreferidas;

public class MainAudio {

    public static void main(String[] args) {
        Musica minhaMusica = new Musica();
        minhaMusica.setTitulo("It`s my life");
        minhaMusica.setCantor("Jon Bon Jovi");
        minhaMusica.curtir();
        minhaMusica.curtir();
        System.out.println(minhaMusica + " Curtidas: " + minhaMusica.getCurtidas());
        minhaMusica.avalia(10);
        System.out.println(minhaMusica + " Nota: " + minhaMusica.getClasificacao());

        Podcast meuPodcast = new Podcast();
        meuPodcast.setTitulo(meuPodcast + "Java");
        meuPodcast.setApresentador(meuPodcast + "Paulo Silveira");
        meuPodcast.avalia(10);
        for (int i = 0; i < 10; i++) {
            meuPodcast.reproduz();
        }
        System.out.println(meuPodcast + " Nota: " + meuPodcast.getClasificacao());

        MinhasPreferidas preferida = new MinhasPreferidas();
        preferida.inclui(minhaMusica);
        preferida.inclui(meuPodcast);

    }
}
