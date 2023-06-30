package br.com.alura.screenmatch.modelos;


import br.com.alura.screenmatch.execao.ErroDeConversaoDeAnoException;

public class Titulo implements Comparable<Titulo> {
    private String nome;
    private int anoDeLancamento;
    private boolean incluindoNoPlano;
    private double somaDasAvaliacoes;
    private int totalDeAvaliacoes;
    private int duracaoEmMinutos;

    public Titulo(String nome, int ano) {
        this.nome = nome;
        this.anoDeLancamento = ano;
    }

    // VARIAVEL NOME, ANODELANCAMENTO É IMUTAVEL AGORA, MAS E OBRIGADO A TER COM O
    // CONSTRUTOR
    // public void setNome(String nome) {
    // this.nome = nome;
    // }

    // public void setIncluindoNoPlano(boolean incluindoNoPlano) {
    // this.incluindoNoPlano = incluindoNoPlano;
    // }

    public Titulo(TituloComIMDB tituloComIMDB) {
        this.nome = tituloComIMDB.title();
        if (tituloComIMDB.year().length() > 4) {
            throw new ErroDeConversaoDeAnoException("Nao consegui converter, porque tem mais de 4 caracteres!");
        }
        this.anoDeLancamento = Integer.valueOf(tituloComIMDB.year());
        this.duracaoEmMinutos = Integer.parseInt(tituloComIMDB.runtime().substring(0, 2));
    }

    public void setDuracaoEmMinutos(int duracaoEmMinutos) {
        this.duracaoEmMinutos = duracaoEmMinutos;
    }

    public int getAnoDeLancamento() {
        return anoDeLancamento;
    }

    public boolean isIncluindoNoPlano() {
        return incluindoNoPlano;
    }

    public int getDuracaoEmMinutos() {
        return duracaoEmMinutos;
    }

    public double getSomaDasAvaliacoes() {
        return somaDasAvaliacoes;
    }

    public int getTotalDeAvaliacoes() {
        return totalDeAvaliacoes;
    }

    public String getNome() {
        return nome;
    }

    public void exibeFichaTecnica() {
        System.out.println("Nome do Filme: " + this.getNome());
        System.out.println("Ano de Lancamento: " + this.getAnoDeLancamento());
    }

    public void avalia(double nota) {
        somaDasAvaliacoes += nota;
        totalDeAvaliacoes++;
    }

    public double pegaMedia() {
        return this.somaDasAvaliacoes / this.totalDeAvaliacoes;
    }

    @Override
    public int compareTo(Titulo outroTitulo) {
        return this.getNome().compareTo(outroTitulo.getNome());
    }

    @Override
    public String toString() {
        return "Titulo [nome=" + nome + ", anoDeLancamento=" + anoDeLancamento + ", duracaoEmMinutos="
                + duracaoEmMinutos + "]";
    }

}
