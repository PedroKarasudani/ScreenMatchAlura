package br.com.alura.screenmatch.execao;

public class ErroDeConversaoDeAnoException extends RuntimeException {

    private String mensagem;

    public ErroDeConversaoDeAnoException(String msg) {
        this.mensagem = msg;
    }

    @Override
    public String getMessage() {
        return this.mensagem;
    }
}
