
import br.com.alura.screenmatch.modelos.Audio;

public class MainAudio {

    public static void main(String[] args) {
        Audio podcast = new Audio();
        podcast.curtir();
        podcast.curtir();
        System.out.println(podcast.getCurtidas());
    }
}
