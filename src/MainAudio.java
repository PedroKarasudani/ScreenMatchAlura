
import br.com.alura.screenmatch.modelos.Musica;
import br.com.alura.screenmatch.modelos.Podcast;

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
        System.out.println(meuPodcast + " Nota: " + meuPodcast.getClasificacao());

    }
}
