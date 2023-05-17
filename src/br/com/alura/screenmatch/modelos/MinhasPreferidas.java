package br.com.alura.screenmatch.modelos;

public class MinhasPreferidas {

    public void inclui(Audio audio) {
        if (audio.getClasificacao() >= 9) {
            System.out.println(audio.getTitulo() + "É considerado sucesso"
                    + " abosluto!");
        } else if (audio.getClasificacao() >= 5) {
            System.out.println(audio.getTitulo() + "Tambem é um dos mais ouvidos");
        } else {
            System.out.println("Ouve mais tarde que voce vai gostar");
        }
    }

}
