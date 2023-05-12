
package screenmatchalura;


public class Filme {
    String nome;
    int anoDeLancamento;
    boolean incluindoNoPlano;
    double somaDasAvaliacoes;
    int totalDeAvaliacoes; 
    
    
    
    void exibeFichaTecnica(){
        System.out.println("Nome do Filme: " + nome);
        System.out.println("Ano de Lancamento: " + anoDeLancamento);
    }
    
    void avalia(double nota){
        somaDasAvaliacoes += nota;
        totalDeAvaliacoes++;
    }
    
    double pegaMedia(){
        return somaDasAvaliacoes/totalDeAvaliacoes;
    }
}
