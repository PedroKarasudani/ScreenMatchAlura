package br.com.alura.screenmatch.modelos;

public class Audio {

    private String titulo;
    private double duracao;
    private int totalDeReproducao;
    private int curtidas;
    private int classificacao;
    private int totalDeAvaliacao;

  

    
    
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
        this.curtidas++;
    }

    public int getCurtidas() {
        return curtidas;
    }

    public void avalia(int nota) {
        this.classificacao += nota;
        this.totalDeAvaliacao++;

    }

    public int getClasificacao() {
        return classificacao / totalDeAvaliacao;
    }

    public void reproduz() {
        this.totalDeReproducao++;
    }

}
