package br.com.alura.screenmatch.calculos;

import br.com.alura.screenmatch.modelos.Filme;
import br.com.alura.screenmatch.modelos.Serie;

public class CalculadoraDeTempo {

    private int tempoTotal;

    public void inclui(Filme filme) {
        tempoTotal += filme.getDuracaoEmMinutos();
    }

    public void inclui(Serie serie) {
        tempoTotal += serie.getDuracaoEmMinutos();
    }

    public int getTempoTotal() {
        return this.tempoTotal;
    }

}
