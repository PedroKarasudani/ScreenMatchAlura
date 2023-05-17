package br.com.alura.screenmatch.modelos;

public class Podcast extends Audio {

    private String apresentador;
    private String descricao;

    public String getApresentador() {
        return apresentador;
    }

    public void setApresentador(String apresentador) {
        this.apresentador = apresentador;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @Override
    public int getClasificacao() {
        if (this.getTotalDeReproducao() >= 500) {
            return 10;
        } else if (this.getTotalDeReproducao() >= 300) {
            return 8;
        } else if (this.getTotalDeReproducao() >= 100) {
            return 4;
        } else {
            return 2;
        }
    }

}
