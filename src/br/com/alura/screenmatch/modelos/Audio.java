package br.com.alura.screenmatch.modelos;

public class Audio {

    private String titulo;
    private double duracao;
    private int totalDeReproducao;
    private int curtidas;
    private double classificacao;
    private boolean reproduzir;

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setDuracao(double duracao) {
        this.duracao = duracao;
    }

    public double getDuracao() {
        return duracao;
    }

    public int getTotalDeReproducao() {
        return totalDeReproducao;
    }

    public void curtir() {
        this.curtidas += 1;
    }

    public int getCurtidas() {
        return curtidas;
    }

    public void avalia(double nota) {
        this.classificacao += nota;
    }

    public double getClasificacao() {
        return classificacao;
    }

    public void reproduzir() {
        this.reproduzir = true;
        this.totalDeReproducao += 1;
    }

}
