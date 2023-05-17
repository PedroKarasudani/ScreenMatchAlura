[33mcommit 5a2841b9fe2301e35c61468df0c54f1162e1712e[m[33m ([m[1;36mHEAD -> [m[1;32mdevelop[m[33m, [m[1;31morigin/develop[m[33m)[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Sat May 13 21:29:50 2023 -0300

    Polimorfismo
    
    modifiquei a classe CalculadoraDeTempo, com isso existindo somente um inclui

[1mdiff --git a/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java b/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java[m
[1mindex 73980e1..b13a8ab 100644[m
[1m--- a/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java[m
[1m+++ b/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java[m
[36m@@ -1,20 +1,24 @@[m
 package br.com.alura.screenmatch.calculos;[m
 [m
[31m-import br.com.alura.screenmatch.modelos.Filme;[m
[31m-import br.com.alura.screenmatch.modelos.Serie;[m
[32m+[m[32mimport br.com.alura.screenmatch.modelos.Titulo;[m
[32m+[m
 [m
 public class CalculadoraDeTempo {[m
 [m
     private int tempoTotal;[m
 [m
[31m-    public void inclui(Filme filme) {[m
[31m-        tempoTotal += filme.getDuracaoEmMinutos();[m
[31m-    }[m
[32m+[m[32m//    public void inclui(Filme filme) {[m
[32m+[m[32m//        tempoTotal += filme.getDuracaoEmMinutos();[m
[32m+[m[32m//    }[m
[32m+[m[32m//[m
[32m+[m[32m//    public void inclui(Serie serie) {[m
[32m+[m[32m//        tempoTotal += serie.getDuracaoEmMinutos();[m
[32m+[m[32m//    }[m
 [m
[31m-    public void inclui(Serie serie) {[m
[31m-        tempoTotal += serie.getDuracaoEmMinutos();[m
[32m+[m[32m    public void inclui(Titulo titulo){[m
[32m+[m[32m        tempoTotal += titulo.getDuracaoEmMinutos();[m
     }[m
[31m-[m
[32m+[m[41m    [m
     public int getTempoTotal() {[m
         return this.tempoTotal;[m
     }[m

[33mcommit 842d8d1786e9e2912e297bad3217050a7bb6e8e7[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Sat May 13 21:26:14 2023 -0300

    Polimorfismo
    
    criamos a classe CalculadoraDeTempo, e no principal o uso dela

[1mdiff --git a/src/Principal.java b/src/Principal.java[m
[1mindex 2a02706..539b65e 100644[m
[1m--- a/src/Principal.java[m
[1m+++ b/src/Principal.java[m
[36m@@ -1,28 +1,36 @@[m
[32m+[m
[32m+[m[32mimport br.com.alura.screenmatch.calculos.CalculadoraDeTempo;[m
 import br.com.alura.screenmatch.modelos.Filme;[m
 import br.com.alura.screenmatch.modelos.Serie;[m
 [m
 public class Principal {[m
 [m
     public static void main(String[] args) {[m
[31m-        Filme meuFilme = new Filme();[m
[31m-        meuFilme.setNome("Veloses Furiosos");[m
[31m-        meuFilme.setDiretor("Vin Diesel");[m
[31m-        meuFilme.setDuracaoEmMinutos(210);[m
[31m-        System.out.println("Nome do filme: " + meuFilme.getNome());[m
[31m-        System.out.println("Diretor do filme: " + meuFilme.getDiretor());[m
[31m-        System.out.println("Duração do filme: " + meuFilme.getDuracaoEmMinutos());[m
[31m-        [m
[31m-        Serie minhaSerie = new Serie();[m
[31m-        minhaSerie.setNome("La Casa De Papel");[m
[31m-        minhaSerie.setTemporadas(5);[m
[31m-        minhaSerie.setMinutosPorEpisodio(45);[m
[31m-        minhaSerie.setEpisodiosPorTemporada(10);[m
[31m-        System.out.println(minhaSerie.getNome());[m
[31m-        System.out.println(minhaSerie.getTemporadas());[m
[31m-        System.out.println("Duração do serie(total): " + minhaSerie.getDuracaoEmMinutos());[m
[31m-        [m
[31m-        [m
[32m+[m[32m        Filme primeiroFilme = new Filme();[m
[32m+[m[32m        primeiroFilme.setNome("Veloses Furiosos");[m
[32m+[m[32m        primeiroFilme.setDiretor("Vin Diesel");[m
[32m+[m[32m        primeiroFilme.setDuracaoEmMinutos(210);[m
[32m+[m[32m        System.out.println("Nome do filme: " + primeiroFilme.getNome());[m
[32m+[m[32m        System.out.println("Diretor do filme: " + primeiroFilme.getDiretor());[m
[32m+[m[32m        System.out.println("Duração do filme: " + primeiroFilme.getDuracaoEmMinutos());[m
[32m+[m
[32m+[m[32m        Serie primeiraSerie = new Serie();[m
[32m+[m[32m        primeiraSerie.setNome("La Casa De Papel");[m
[32m+[m[32m        primeiraSerie.setTemporadas(5);[m
[32m+[m[32m        primeiraSerie.setMinutosPorEpisodio(45);[m
[32m+[m[32m        primeiraSerie.setEpisodiosPorTemporada(10);[m
[32m+[m[32m        System.out.println(primeiraSerie.getNome());[m
[32m+[m[32m        System.out.println(primeiraSerie.getTemporadas());[m
[32m+[m[32m        System.out.println("Duração do serie(total): " + primeiraSerie.getDuracaoEmMinutos());[m
[32m+[m
[32m+[m[32m        Filme segundoFilme = new Filme();[m
[32m+[m[32m        segundoFilme.setDuracaoEmMinutos(300);[m
 [m
[32m+[m[32m        CalculadoraDeTempo calculadora = new CalculadoraDeTempo();[m
[32m+[m[32m        calculadora.inclui(primeiroFilme);[m
[32m+[m[32m        calculadora.inclui(segundoFilme);[m
[32m+[m[32m        calculadora.inclui(primeiraSerie);[m
[32m+[m[32m        System.out.println("Calculando o tempo total foi de: " + calculadora.getTempoTotal());[m
     }[m
 [m
 }[m
[1mdiff --git a/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java b/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..73980e1[m
[1m--- /dev/null[m
[1m+++ b/src/br/com/alura/screenmatch/calculos/CalculadoraDeTempo.java[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32mpackage br.com.alura.screenmatch.calculos;[m
[32m+[m
[32m+[m[32mimport br.com.alura.screenmatch.modelos.Filme;[m
[32m+[m[32mimport br.com.alura.screenmatch.modelos.Serie;[m
[32m+[m
[32m+[m[32mpublic class CalculadoraDeTempo {[m
[32m+[m
[32m+[m[32m    private int tempoTotal;[m
[32m+[m
[32m+[m[32m    public void inclui(Filme filme) {[m
[32m+[m[32m        tempoTotal += filme.getDuracaoEmMinutos();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void inclui(Serie serie) {[m
[32m+[m[32m        tempoTotal += serie.getDuracaoEmMinutos();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getTempoTotal() {[m
[32m+[m[32m        return this.tempoTotal;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Filme.java b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[1mindex 8d4d4cd..e5cd18c 100644[m
[1m--- a/src/br/com/alura/screenmatch/modelos/Filme.java[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[36m@@ -1,6 +1,7 @@[m
 package br.com.alura.screenmatch.modelos;[m
 [m
[31m-public class Filme extends Titulo{[m
[32m+[m[32mpublic class Filme extends Titulo {[m
[32m+[m
     private String diretor;[m
 [m
     public void setDiretor(String diretor) {[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Serie.java b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[1mindex 918f7e6..b3e1c31 100644[m
[1m--- a/src/br/com/alura/screenmatch/modelos/Serie.java[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[36m@@ -1,7 +1,7 @@[m
[31m-[m
 package br.com.alura.screenmatch.modelos;[m
 [m
 public class Serie extends Titulo {[m
[32m+[m
     private int temporadas;[m
     private int episodiosPorTemporada;[m
     private boolean ativa;[m
[36m@@ -43,7 +43,5 @@[m [mpublic class Serie extends Titulo {[m
     public int getDuracaoEmMinutos() {[m
         return minutosPorEpisodio * temporadas * episodiosPorTemporada;[m
     }[m
[31m-    [m
[31m-    [m
[31m-    [m
[32m+[m
 }[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Titulo.java b/src/br/com/alura/screenmatch/modelos/Titulo.java[m
[1mindex df6ac87..481c588 100644[m
[1m--- a/src/br/com/alura/screenmatch/modelos/Titulo.java[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Titulo.java[m
[36m@@ -1,7 +1,7 @@[m
[31m-[m
 package br.com.alura.screenmatch.modelos;[m
 [m
 public class Titulo {[m
[32m+[m
     private String nome;[m
     private int anoDeLancamento;[m
     private boolean incluindoNoPlano;[m

[33mcommit 996538382879c208c6a39f156139b2e6f1b0d44b[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Sat May 13 20:33:41 2023 -0300

    Herança na classe Serie
    
    Puxamos o getDuracaoEmMinutos(), atribuindo mais dados para retorno

[1mdiff --git a/src/Principal.java b/src/Principal.java[m
[1mindex b3ecb89..2a02706 100644[m
[1m--- a/src/Principal.java[m
[1m+++ b/src/Principal.java[m
[36m@@ -7,14 +7,21 @@[m [mpublic class Principal {[m
         Filme meuFilme = new Filme();[m
         meuFilme.setNome("Veloses Furiosos");[m
         meuFilme.setDiretor("Vin Diesel");[m
[31m-        System.out.println(meuFilme.getNome());[m
[31m-        System.out.println(meuFilme.getDiretor());[m
[32m+[m[32m        meuFilme.setDuracaoEmMinutos(210);[m
[32m+[m[32m        System.out.println("Nome do filme: " + meuFilme.getNome());[m
[32m+[m[32m        System.out.println("Diretor do filme: " + meuFilme.getDiretor());[m
[32m+[m[32m        System.out.println("Duração do filme: " + meuFilme.getDuracaoEmMinutos());[m
         [m
         Serie minhaSerie = new Serie();[m
         minhaSerie.setNome("La Casa De Papel");[m
         minhaSerie.setTemporadas(5);[m
[32m+[m[32m        minhaSerie.setMinutosPorEpisodio(45);[m
[32m+[m[32m        minhaSerie.setEpisodiosPorTemporada(10);[m
         System.out.println(minhaSerie.getNome());[m
         System.out.println(minhaSerie.getTemporadas());[m
[32m+[m[32m        System.out.println("Duração do serie(total): " + minhaSerie.getDuracaoEmMinutos());[m
[32m+[m[41m        [m
[32m+[m[41m        [m
 [m
     }[m
 [m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Serie.java b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[1mindex d16a15f..918f7e6 100644[m
[1m--- a/src/br/com/alura/screenmatch/modelos/Serie.java[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[36m@@ -38,6 +38,12 @@[m [mpublic class Serie extends Titulo {[m
     public void setMinutosPorEpisodio(int minutosPorEpisodio) {[m
         this.minutosPorEpisodio = minutosPorEpisodio;[m
     }[m
[32m+[m
[32m+[m[32m    @Override[m
[32m+[m[32m    public int getDuracaoEmMinutos() {[m
[32m+[m[32m        return minutosPorEpisodio * temporadas * episodiosPorTemporada;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
     [m
     [m
 }[m

[33mcommit e83ee4ca126aba26574c739e044c1217bbbca2af[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Sat May 13 17:17:33 2023 -0300

    Herança
    
    Criamos a classe titulo, para ter a heranca com a classe Filme e Serie..

[1mdiff --git a/src/Principal.java b/src/Principal.java[m
[1mindex cf3fb72..b3ecb89 100644[m
[1m--- a/src/Principal.java[m
[1m+++ b/src/Principal.java[m
[36m@@ -1,18 +1,20 @@[m
 import br.com.alura.screenmatch.modelos.Filme;[m
[32m+[m[32mimport br.com.alura.screenmatch.modelos.Serie;[m
 [m
 public class Principal {[m
 [m
     public static void main(String[] args) {[m
         Filme meuFilme = new Filme();[m
[31m-        meuFilme.setAnoDeLancamento(1970);[m
[31m-        meuFilme.setNome("Top Gun");[m
[31m-[m
[31m-        meuFilme.exibeFichaTecnica();[m
[31m-        meuFilme.avalia(8);[m
[31m-        meuFilme.avalia(5);[m
[31m-        meuFilme.avalia(10);[m
[31m-        System.out.println("Total de avaliações: " + meuFilme.getTotalDeAvaliacoes());[m
[31m-        System.out.println(meuFilme.pegaMedia());[m
[32m+[m[32m        meuFilme.setNome("Veloses Furiosos");[m
[32m+[m[32m        meuFilme.setDiretor("Vin Diesel");[m
[32m+[m[32m        System.out.println(meuFilme.getNome());[m
[32m+[m[32m        System.out.println(meuFilme.getDiretor());[m
[32m+[m[41m        [m
[32m+[m[32m        Serie minhaSerie = new Serie();[m
[32m+[m[32m        minhaSerie.setNome("La Casa De Papel");[m
[32m+[m[32m        minhaSerie.setTemporadas(5);[m
[32m+[m[32m        System.out.println(minhaSerie.getNome());[m
[32m+[m[32m        System.out.println(minhaSerie.getTemporadas());[m
 [m
     }[m
 [m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Filme.java b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[1mindex 054fcdd..8d4d4cd 100644[m
[1m--- a/src/br/com/alura/screenmatch/modelos/Filme.java[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[36m@@ -1,65 +1,13 @@[m
 package br.com.alura.screenmatch.modelos;[m
 [m
[31m-public class Filme {[m
[32m+[m[32mpublic class Filme extends Titulo{[m
[32m+[m[32m    private String diretor;[m
 [m
[31m-    private String nome;[m
[31m-    private int anoDeLancamento;[m
[31m-    private boolean incluindoNoPlano;[m
[31m-    private double somaDasAvaliacoes;[m
[31m-    private int totalDeAvaliacoes;[m
[31m-    private int duracaoEmMinutos;[m
[31m-[m
[31m-    public void setNome(String nome) {[m
[31m-        this.nome = nome;[m
[31m-    }[m
[31m-[m
[31m-    public void setAnoDeLancamento(int anoDeLancamento) {[m
[31m-        this.anoDeLancamento = anoDeLancamento;[m
[31m-    }[m
[31m-[m
[31m-    public void setIncluindoNoPlano(boolean incluindoNoPlano) {[m
[31m-        this.incluindoNoPlano = incluindoNoPlano;[m
[31m-    }[m
[31m-[m
[31m-    public void setDuracaoEmMinutos(int duracaoEmMinutos) {[m
[31m-        this.duracaoEmMinutos = duracaoEmMinutos;[m
[31m-    }[m
[31m-[m
[31m-    public int getAnoDeLancamento() {[m
[31m-        return anoDeLancamento;[m
[31m-    }[m
[31m-[m
[31m-    public boolean isIncluindoNoPlano() {[m
[31m-        return incluindoNoPlano;[m
[31m-    }[m
[31m-[m
[31m-    public int getDuracaoEmMinutos() {[m
[31m-        return duracaoEmMinutos;[m
[31m-    }[m
[31m-[m
[31m-    public double getSomaDasAvaliacoes() {[m
[31m-        return somaDasAvaliacoes;[m
[31m-    }[m
[31m-[m
[31m-    public int getTotalDeAvaliacoes() {[m
[31m-        return totalDeAvaliacoes;[m
[31m-    }[m
[31m-[m
[31m-    public String getNome() {[m
[31m-        return nome;[m
[31m-    }[m
[31m-[m
[31m-    public void exibeFichaTecnica() {[m
[31m-        System.out.println("Nome do Filme: " + this.getNome());[m
[31m-        System.out.println("Ano de Lancamento: " + this.getAnoDeLancamento());[m
[31m-    }[m
[31m-[m
[31m-    public void avalia(double nota) {[m
[31m-        somaDasAvaliacoes += nota;[m
[31m-        totalDeAvaliacoes++;[m
[32m+[m[32m    public void setDiretor(String diretor) {[m
[32m+[m[32m        this.diretor = diretor;[m
     }[m
 [m
[31m-    public double pegaMedia() {[m
[31m-        return this.getTotalDeAvaliacoes() / this.getSomaDasAvaliacoes();[m
[32m+[m[32m    public String getDiretor() {[m
[32m+[m[32m        return diretor;[m
     }[m
 }[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Serie.java b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[1mnew file mode 100644[m
[1mindex 0000000..d16a15f[m
[1m--- /dev/null[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Serie.java[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m
[32m+[m[32mpackage br.com.alura.screenmatch.modelos;[m
[32m+[m
[32m+[m[32mpublic class Serie extends Titulo {[m
[32m+[m[32m    private int temporadas;[m
[32m+[m[32m    private int episodiosPorTemporada;[m
[32m+[m[32m    private boolean ativa;[m
[32m+[m[32m    private int minutosPorEpisodio;[m
[32m+[m
[32m+[m[32m    public int getTemporadas() {[m
[32m+[m[32m        return temporadas;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setTemporadas(int temporadas) {[m
[32m+[m[32m        this.temporadas = temporadas;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getEpisodiosPorTemporada() {[m
[32m+[m[32m        return episodiosPorTemporada;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setEpisodiosPorTemporada(int episodiosPorTemporada) {[m
[32m+[m[32m        this.episodiosPorTemporada = episodiosPorTemporada;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public boolean isAtiva() {[m
[32m+[m[32m        return ativa;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setAtiva(boolean ativa) {[m
[32m+[m[32m        this.ativa = ativa;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getMinutosPorEpisodio() {[m
[32m+[m[32m        return minutosPorEpisodio;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setMinutosPorEpisodio(int minutosPorEpisodio) {[m
[32m+[m[32m        this.minutosPorEpisodio = minutosPorEpisodio;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Titulo.java b/src/br/com/alura/screenmatch/modelos/Titulo.java[m
[1mnew file mode 100644[m
[1mindex 0000000..df6ac87[m
[1m--- /dev/null[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Titulo.java[m
[36m@@ -0,0 +1,65 @@[m
[32m+[m
[32m+[m[32mpackage br.com.alura.screenmatch.modelos;[m
[32m+[m
[32m+[m[32mpublic class Titulo {[m
[32m+[m[32m    private String nome;[m
[32m+[m[32m    private int anoDeLancamento;[m
[32m+[m[32m    private boolean incluindoNoPlano;[m
[32m+[m[32m    private double somaDasAvaliacoes;[m
[32m+[m[32m    private int totalDeAvaliacoes;[m
[32m+[m[32m    private int duracaoEmMinutos;[m
[32m+[m
[32m+[m[32m    public void setNome(String nome) {[m
[32m+[m[32m        this.nome = nome;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setAnoDeLancamento(int anoDeLancamento) {[m
[32m+[m[32m        this.anoDeLancamento = anoDeLancamento;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setIncluindoNoPlano(boolean incluindoNoPlano) {[m
[32m+[m[32m        this.incluindoNoPlano = incluindoNoPlano;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setDuracaoEmMinutos(int duracaoEmMinutos) {[m
[32m+[m[32m        this.duracaoEmMinutos = duracaoEmMinutos;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getAnoDeLancamento() {[m
[32m+[m[32m        return anoDeLancamento;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public boolean isIncluindoNoPlano() {[m
[32m+[m[32m        return incluindoNoPlano;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getDuracaoEmMinutos() {[m
[32m+[m[32m        return duracaoEmMinutos;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double getSomaDasAvaliacoes() {[m
[32m+[m[32m        return somaDasAvaliacoes;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getTotalDeAvaliacoes() {[m
[32m+[m[32m        return totalDeAvaliacoes;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public String getNome() {[m
[32m+[m[32m        return nome;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void exibeFichaTecnica() {[m
[32m+[m[32m        System.out.println("Nome do Filme: " + this.getNome());[m
[32m+[m[32m        System.out.println("Ano de Lancamento: " + this.getAnoDeLancamento());[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void avalia(double nota) {[m
[32m+[m[32m        somaDasAvaliacoes += nota;[m
[32m+[m[32m        totalDeAvaliacoes++;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double pegaMedia() {[m
[32m+[m[32m        return this.getTotalDeAvaliacoes() / this.getSomaDasAvaliacoes();[m
[32m+[m[32m    }[m
[32m+[m[32m}[m

[33mcommit f9503ef499b011cc88c77a274be995bc90f47eda[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Fri May 12 22:02:52 2023 -0300

    criou pacotes, filme separando do projeto principal
    
    implementou os gets e sets, e modo de visualização das variáveis

[1mdiff --git a/src/screenmatchalura/Principal.java b/src/Principal.java[m
[1msimilarity index 57%[m
[1mrename from src/screenmatchalura/Principal.java[m
[1mrename to src/Principal.java[m
[1mindex bd35612..cf3fb72 100644[m
[1m--- a/src/screenmatchalura/Principal.java[m
[1m+++ b/src/Principal.java[m
[36m@@ -1,18 +1,17 @@[m
[31m-package screenmatchalura;[m
[32m+[m[32mimport br.com.alura.screenmatch.modelos.Filme;[m
 [m
 public class Principal {[m
 [m
     public static void main(String[] args) {[m
         Filme meuFilme = new Filme();[m
[31m-        meuFilme.anoDeLancamento = 1970;[m
[31m-        meuFilme.nome = "Top Gun";[m
[32m+[m[32m        meuFilme.setAnoDeLancamento(1970);[m
[32m+[m[32m        meuFilme.setNome("Top Gun");[m
 [m
         meuFilme.exibeFichaTecnica();[m
         meuFilme.avalia(8);[m
         meuFilme.avalia(5);[m
         meuFilme.avalia(10);[m
[31m-        System.out.println(meuFilme.somaDasAvaliacoes);[m
[31m-        System.out.println(meuFilme.totalDeAvaliacoes);[m
[32m+[m[32m        System.out.println("Total de avaliações: " + meuFilme.getTotalDeAvaliacoes());[m
         System.out.println(meuFilme.pegaMedia());[m
 [m
     }[m
[1mdiff --git a/src/br/com/alura/screenmatch/modelos/Filme.java b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[1mnew file mode 100644[m
[1mindex 0000000..054fcdd[m
[1m--- /dev/null[m
[1m+++ b/src/br/com/alura/screenmatch/modelos/Filme.java[m
[36m@@ -0,0 +1,65 @@[m
[32m+[m[32mpackage br.com.alura.screenmatch.modelos;[m
[32m+[m
[32m+[m[32mpublic class Filme {[m
[32m+[m
[32m+[m[32m    private String nome;[m
[32m+[m[32m    private int anoDeLancamento;[m
[32m+[m[32m    private boolean incluindoNoPlano;[m
[32m+[m[32m    private double somaDasAvaliacoes;[m
[32m+[m[32m    private int totalDeAvaliacoes;[m
[32m+[m[32m    private int duracaoEmMinutos;[m
[32m+[m
[32m+[m[32m    public void setNome(String nome) {[m
[32m+[m[32m        this.nome = nome;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setAnoDeLancamento(int anoDeLancamento) {[m
[32m+[m[32m        this.anoDeLancamento = anoDeLancamento;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setIncluindoNoPlano(boolean incluindoNoPlano) {[m
[32m+[m[32m        this.incluindoNoPlano = incluindoNoPlano;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void setDuracaoEmMinutos(int duracaoEmMinutos) {[m
[32m+[m[32m        this.duracaoEmMinutos = duracaoEmMinutos;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getAnoDeLancamento() {[m
[32m+[m[32m        return anoDeLancamento;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public boolean isIncluindoNoPlano() {[m
[32m+[m[32m        return incluindoNoPlano;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getDuracaoEmMinutos() {[m
[32m+[m[32m        return duracaoEmMinutos;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double getSomaDasAvaliacoes() {[m
[32m+[m[32m        return somaDasAvaliacoes;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public int getTotalDeAvaliacoes() {[m
[32m+[m[32m        return totalDeAvaliacoes;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public String getNome() {[m
[32m+[m[32m        return nome;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void exibeFichaTecnica() {[m
[32m+[m[32m        System.out.println("Nome do Filme: " + this.getNome());[m
[32m+[m[32m        System.out.println("Ano de Lancamento: " + this.getAnoDeLancamento());[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void avalia(double nota) {[m
[32m+[m[32m        somaDasAvaliacoes += nota;[m
[32m+[m[32m        totalDeAvaliacoes++;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double pegaMedia() {[m
[32m+[m[32m        return this.getTotalDeAvaliacoes() / this.getSomaDasAvaliacoes();[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/src/screenmatchalura/Filme.java b/src/screenmatchalura/Filme.java[m
[1mdeleted file mode 100644[m
[1mindex b534cc0..0000000[m
[1m--- a/src/screenmatchalura/Filme.java[m
[1m+++ /dev/null[m
[36m@@ -1,27 +0,0 @@[m
[31m-[m
[31m-package screenmatchalura;[m
[31m-[m
[31m-[m
[31m-public class Filme {[m
[31m-    String nome;[m
[31m-    int anoDeLancamento;[m
[31m-    boolean incluindoNoPlano;[m
[31m-    double somaDasAvaliacoes;[m
[31m-    int totalDeAvaliacoes; [m
[31m-    [m
[31m-    [m
[31m-    [m
[31m-    void exibeFichaTecnica(){[m
[31m-        System.out.println("Nome do Filme: " + nome);[m
[31m-        System.out.println("Ano de Lancamento: " + anoDeLancamento);[m
[31m-    }[m
[31m-    [m
[31m-    void avalia(double nota){[m
[31m-        somaDasAvaliacoes += nota;[m
[31m-        totalDeAvaliacoes++;[m
[31m-    }[m
[31m-    [m
[31m-    double pegaMedia(){[m
[31m-        return somaDasAvaliacoes/totalDeAvaliacoes;[m
[31m-    }[m
[31m-}[m

[33mcommit c65d9bb5fe6f339ac80dd622e4dd478d79575cdb[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Fri May 12 20:52:27 2023 -0300

    Foi criado a classe filme, e dicionado 3 metodos incompletos mas que funciona

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..84c048a[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/build/[m
[1mdiff --git a/src/screenmatchalura/Filme.java b/src/screenmatchalura/Filme.java[m
[1mindex 942b3d0..b534cc0 100644[m
[1m--- a/src/screenmatchalura/Filme.java[m
[1m+++ b/src/screenmatchalura/Filme.java[m
[36m@@ -6,9 +6,22 @@[m [mpublic class Filme {[m
     String nome;[m
     int anoDeLancamento;[m
     boolean incluindoNoPlano;[m
[31m-    double avaliacao;[m
[31m-    int totalDeAvalicoes; [m
[32m+[m[32m    double somaDasAvaliacoes;[m
[32m+[m[32m    int totalDeAvaliacoes;[m[41m [m
     [m
     [m
     [m
[32m+[m[32m    void exibeFichaTecnica(){[m
[32m+[m[32m        System.out.println("Nome do Filme: " + nome);[m
[32m+[m[32m        System.out.println("Ano de Lancamento: " + anoDeLancamento);[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    void avalia(double nota){[m
[32m+[m[32m        somaDasAvaliacoes += nota;[m
[32m+[m[32m        totalDeAvaliacoes++;[m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m    double pegaMedia(){[m
[32m+[m[32m        return somaDasAvaliacoes/totalDeAvaliacoes;[m
[32m+[m[32m    }[m
 }[m
[1mdiff --git a/src/screenmatchalura/Principal.java b/src/screenmatchalura/Principal.java[m
[1mnew file mode 100644[m
[1mindex 0000000..bd35612[m
[1m--- /dev/null[m
[1m+++ b/src/screenmatchalura/Principal.java[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32mpackage screenmatchalura;[m
[32m+[m
[32m+[m[32mpublic class Principal {[m
[32m+[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Filme meuFilme = new Filme();[m
[32m+[m[32m        meuFilme.anoDeLancamento = 1970;[m
[32m+[m[32m        meuFilme.nome = "Top Gun";[m
[32m+[m
[32m+[m[32m        meuFilme.exibeFichaTecnica();[m
[32m+[m[32m        meuFilme.avalia(8);[m
[32m+[m[32m        meuFilme.avalia(5);[m
[32m+[m[32m        meuFilme.avalia(10);[m
[32m+[m[32m        System.out.println(meuFilme.somaDasAvaliacoes);[m
[32m+[m[32m        System.out.println(meuFilme.totalDeAvaliacoes);[m
[32m+[m[32m        System.out.println(meuFilme.pegaMedia());[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m}[m
[1mdiff --git a/src/screenmatchalura/ScreenMatchAlura.java b/src/screenmatchalura/ScreenMatchAlura.java[m
[1mdeleted file mode 100644[m
[1mindex c2a4282..0000000[m
[1m--- a/src/screenmatchalura/ScreenMatchAlura.java[m
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-[m
[31m-package screenmatchalura;[m
[31m-[m
[31m-public class ScreenMatchAlura {[m
[31m-[m
[31m-    public static void main(String[] args) {[m
[31m-         [m
[31m-        [m
[31m-        [m
[31m-    }[m
[31m-    [m
[31m-}[m

[33mcommit 28b1cf666b329ad5e9479c9e939f2ed34bb96021[m[33m ([m[1;31morigin/main[m[33m, [m[1;32mmain[m[33m)[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Wed May 10 23:27:33 2023 -0300

    iniciando main

[1mdiff --git a/src/screenmatchalura/Filme.java b/src/screenmatchalura/Filme.java[m
[1mindex 82cfe50..942b3d0 100644[m
[1m--- a/src/screenmatchalura/Filme.java[m
[1m+++ b/src/screenmatchalura/Filme.java[m
[36m@@ -10,4 +10,5 @@[m [mpublic class Filme {[m
     int totalDeAvalicoes; [m
     [m
     [m
[32m+[m[41m    [m
 }[m
[1mdiff --git a/src/screenmatchalura/ScreenMatchAlura.java b/src/screenmatchalura/ScreenMatchAlura.java[m
[1mindex ebcde77..c2a4282 100644[m
[1m--- a/src/screenmatchalura/ScreenMatchAlura.java[m
[1m+++ b/src/screenmatchalura/ScreenMatchAlura.java[m
[36m@@ -4,6 +4,7 @@[m [mpackage screenmatchalura;[m
 public class ScreenMatchAlura {[m
 [m
     public static void main(String[] args) {[m
[32m+[m[41m         [m
         [m
         [m
     }[m

[33mcommit fadc09b9d07989e2f76fa40e4ee972f48a9f83ae[m
Author: Pedro K. L <pedro.karasudani@hotmail.com>
Date:   Wed May 10 22:24:06 2023 -0300

    iniciando

[1mdiff --git a/build.xml b/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..438f8a9[m
[1m--- /dev/null[m
[1m+++ b/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="ScreenMatchAlura" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project ScreenMatchAlura.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="ScreenMatchAlura-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/manifest.mf b/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/nbproject/build-impl.xml b/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..10607ff[m
[1m--- /dev/null[m
[1m+++ b/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1771 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:if="ant:if" xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" xmlns:unless="ant:unless" basedir=".." default="default" name="ScreenMatchAlura-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.8"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.8"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-modules-supported">[m
[32m+[m[32m        <condition property="modules.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-8](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-modules-supported" if="modules.supported.internal" name="-init-macrodef-modulename">[m
[32m+[m[32m        <macrodef name="modulename" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute name="property"/>[m
[32m+[m[32m            <attribute name="sourcepath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <loadresource property="@{property}" quiet="true">[m
[32m+[m[32m                    <javaresource classpath="@{sourcepath}" name="module-info.java" parentFirst="false"/>[m
[32m+[m[32m                    <filterchain>[m
[32m+[m[32m                        <stripjavacomments/>[m
[32m+[m[32m                        <linecontainsregexp>[m
[32m+[m[32m                            <regexp pattern="module .* \{"/>[m
[32m+[m[32m                        </linecontainsregexp>[m
[32m+[m[32m                        <tokenfilter>[m
[32m+[m[32m                            <linetokenizer/>[m
[32m+[m[32m                            <replaceregex flags="s" pattern="(\s*module\s+)(\S*)(\s*\{.*)" replace="\2"/>[m
[32m+[m[32m                        </tokenfilter>[m
[32m+[m[32m                        <striplinebreaks/>[m
[32m+[m[32m                    </filterchain>[m
[32m+[m[32m                </loadresource>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-modules-supported,-init-macrodef-modulename" if="modules.supported.internal" name="-init-source-module-properties">[m
[32m+[m[32m        <fail message="Java 9 support requires Ant 1.10.0 or higher.">[m
[32m+[m[32m            <condition>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <antversion atleast="1.10.0"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </condition>[m
[32m+[m[32m        </fail>[m
[32m+[m[32m        <j2seproject3:modulename property="module.name" sourcepath="${src.dir}"/>[m
[32m+[m[32m        <condition property="named.module.internal">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="module.name"/>[m
[32m+[m[32m                <length length="0" string="${module.name}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="unnamed.module.internal">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <isset property="named.module.internal"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.modulepath" value=""/>[m
[32m+[m[32m        <property name="run.modulepath" value="${javac.modulepath}"/>[m
[32m+[m[32m        <property name="module.build.classes.dir" value="${build.classes.dir}"/>[m
[32m+[m[32m        <property name="debug.modulepath" value="${run.modulepath}"/>[m
[32m+[m[32m        <property name="javac.upgrademodulepath" value=""/>[m
[32m+[m[32m        <property name="run.upgrademodulepath" value="${javac.upgrademodulepath}"/>[m
[32m+[m[32m        <condition else="" property="javac.systemmodulepath.cmd.line.arg" value="--system '${javac.systemmodulepath}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.systemmodulepath"/>[m
[32m+[m[32m                <length length="0" string="${javac.systemmodulepath}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="dist.jlink.dir" value="${dist.dir}/jlink"/>[m
[32m+[m[32m        <property name="dist.jlink.output" value="${dist.jlink.dir}/${application.title}"/>[m
[32m+[m[32m        <property name="module.name" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property,-init-modules-supported" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <matches pattern="1\.[0-7](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-source-module-properties" if="modules.supported.internal" name="-init-macrodef-javac-with-module">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${javac.upgrademodulepath}" name="upgrademodulepath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${javac.processormodulepath}" name="processormodulepath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath" unless:set="named.module.internal"/>[m
[32m+[m[32m            <attribute default="${src.dir}" if:set="named.module.internal" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition property="warn.excludes.internal">[m
[32m+[m[32m                    <and>[m
[32m+[m[32m                        <isset property="named.module.internal"/>[m
[32m+[m[32m                        <length length="0" string="@{excludes}" trim="true" when="greater"/>[m
[32m+[m[32m                    </and>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <echo if:set="warn.excludes.internal" level="warning" message="The javac excludes are not supported in the JDK 9 Named Module."/>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <condition property="processormodulepath.set">[m
[32m+[m[32m                    <resourcecount count="0" when="greater">[m
[32m+[m[32m                        <path>[m
[32m+[m[32m                            <pathelement path="@{processormodulepath}"/>[m
[32m+[m[32m                        </path>[m
[32m+[m[32m                    </resourcecount>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <modulepath>[m
[32m+[m[32m                        <path path="@{modulepath}"/>[m
[32m+[m[32m                    </modulepath>[m
[32m+[m[32m                    <upgrademodulepath>[m
[32m+[m[32m                        <path path="@{upgrademodulepath}"/>[m
[32m+[m[32m                    </upgrademodulepath>[m
[32m+[m[32m                    <compilerarg line="${javac.systemmodulepath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg if:set="processormodulepath.set" value="--processor-module-path"/>[m
[32m+[m[32m                    <compilerarg if:set="processormodulepath.set" path="@{processormodulepath}"/>[m
[32m+[m[32m                    <compilerarg unless:set="processormodulepath.set" value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}" unless:set="processormodulepath.set"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-source-module-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors" unless="modules.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${javac.upgrademodulepath}" name="upgrademodulepath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-source-module-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${javac.upgrademodulepath}" name="upgrademodulepath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-module,-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-modules-supported" if="modules.supported.internal" name="-init-macrodef-junit-prototype-with-module">[m
[32m+[m[32m        <macrodef name="junit-prototype" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <element name="customizePrototype" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.test.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <modulepath>[m
[32m+[m[32m                        <path path="${run.test.modulepath}"/>[m
[32m+[m[32m                    </modulepath>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${run.test.jvmargs}"/>[m
[32m+[m[32m                    <customizePrototype/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-modules-supported" name="-init-macrodef-junit-prototype-without-module" unless="modules.supported.internal">[m
[32m+[m[32m        <macrodef name="junit-prototype" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <element name="customizePrototype" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.test.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customizePrototype/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties,-init-macrodef-junit-prototype-with-module,-init-macrodef-junit-prototype-without-module" if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-prototype>[m
[32m+[m[32m                    <customizePrototype>[m
[32m+[m[32m                        <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </customizePrototype>[m
[32m+[m[32m                </j2seproject3:junit-prototype>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties,-init-macrodef-junit-prototype-with-module,-init-macrodef-junit-prototype-without-module" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-prototype>[m
[32m+[m[32m                    <customizePrototype>[m
[32m+[m[32m                        <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                            <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                                <filename name="@{testincludes}"/>[m
[32m+[m[32m                            </fileset>[m
[32m+[m[32m                            <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                                <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                            </fileset>[m
[32m+[m[32m                        </batchtest>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </customizePrototype>[m
[32m+[m[32m                </j2seproject3:junit-prototype>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="ScreenMatchAlura" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.test.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customizeDebuggee" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <jvmarg value="-agentlib:jdwp=transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                        <customizeDebuggee/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename ScreenMatchAlura -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customizeDebuggee>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customizeDebuggee>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customizeDebuggee>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customizeDebuggee>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <modulepath>[m
[32m+[m[32m                        <path path="@{modulepath}"/>[m
[32m+[m[32m                    </modulepath>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${module.name}" name="modulename"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customizeDebuggee" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject1:java classname="@{classname}" classpath="@{classpath}" modulename="@{modulename}" modulepath="@{modulepath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <jvmarg value="-agentlib:jdwp=transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                        <customizeDebuggee/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject1:java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" if="named.module.internal" name="-init-macrodef-java-with-module">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${module.name}" name="modulename"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${run.upgrademodulepath}" name="upgrademodulepath"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true" module="@{modulename}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <modulepath>[m
[32m+[m[32m                        <pathelement path="@{modulepath}"/>[m
[32m+[m[32m                        <pathelement location="${module.build.classes.dir}"/>[m
[32m+[m[32m                    </modulepath>[m
[32m+[m[32m                    <upgrademodulepath>[m
[32m+[m[32m                        <path path="@{upgrademodulepath}"/>[m
[32m+[m[32m                    </upgrademodulepath>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" if="unnamed.module.internal" name="-init-macrodef-java-with-unnamed-module">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="" name="modulename"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.modulepath}" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${run.upgrademodulepath}" name="upgrademodulepath"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <modulepath>[m
[32m+[m[32m                        <path path="@{modulepath}"/>[m
[32m+[m[32m                    </modulepath>[m
[32m+[m[32m                    <upgrademodulepath>[m
[32m+[m[32m                        <path path="@{upgrademodulepath}"/>[m
[32m+[m[32m                    </upgrademodulepath>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" name="-init-macrodef-java-without-module" unless="modules.supported.internal">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="" name="modulename"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="" name="modulepath"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-java-with-module, -init-macrodef-java-with-unnamed-module, -init-macrodef-java-without-module" name="-init-macrodef-java"/>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: ScreenMatchAlura was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean">[m
[32m+[m[32m            <param name="no.dependencies" value="true"/>[m
[32m+[m[32m        </antcall>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}, module-info.java" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-check-module-main-class">[m
[32m+[m[32m        <pathconvert property="main.class.file">[m
[32m+[m[32m            <string value="${main.class}"/>[m
[32m+[m[32m            <unpackagemapper from="*" to="*.class"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition property="do.module.main.class">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <available file="${build.classes.dir}/module-info.class"/>[m
[32m+[m[32m                <available file="${build.classes.dir}/${main.class.file}"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <available classname="org.netbeans.modules.java.j2seproject.moduletask.ModuleMainClass" classpath="${libs.CopyLibs.classpath}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-module-main-class" if="do.module.main.class" name="-set-module-main-class">[m
[32m+[m[32m        <taskdef classname="org.netbeans.modules.java.j2seproject.moduletask.ModuleMainClass" classpath="${libs.CopyLibs.classpath}" name="modulemainclass"/>[m
[32m+[m[32m        <modulemainclass failonerror="false" mainclass="${main.class}" moduleinfo="${build.classes.dir}/module-info.class"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-check-do-mkdist">[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <available file="${build.classes.dir}/module-info.class"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-check-do-mkdist" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-check-do-mkdist" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <condition else="${dist.jar.resolved}" property="jar.usage.message.class.path.replacement" value="">[m
[32m+[m[32m            <isset property="named.module.internal"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${jar.usage.message.class.path.replacement}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <pathconvert property="run.modulepath.with.dist.jar">[m
[32m+[m[32m            <path location="${dist.jar.resolved}"/>[m
[32m+[m[32m            <path path="${run.modulepath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="${run.modulepath}" property="jar.usage.message.run.modulepath.with.dist.jar" value="${run.modulepath.with.dist.jar}">[m
[32m+[m[32m            <isset property="named.module.internal"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="jar.usage.message.module.path" value=" -p ${jar.usage.message.run.modulepath.with.dist.jar}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="modules.supported.internal"/>[m
[32m+[m[32m                <length length="0" string="${jar.usage.message.run.modulepath.with.dist.jar}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="jar.usage.message.class.path" value=" -cp ${run.classpath.with.dist.jar}">[m
[32m+[m[32m            <length length="0" string="${run.classpath.with.dist.jar}" when="greater"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="/${main.class}" property="jar.usage.message.main.class.class.selector" value="">[m
[32m+[m[32m            <isset property="do.module.main.class"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else=" ${main.class}" property="jar.usage.message.main.class" value=" -m ${module.name}${jar.usage.message.main.class.class.selector}">[m
[32m+[m[32m            <isset property="named.module.internal"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java}${jar.usage.message.module.path}${jar.usage.message.class.path}${jar.usage.message.main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-set-module-main-class,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar,deploy" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEPLOY SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-deploy">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-check-jlink">[m
[32m+[m[32m        <condition property="do.jlink.internal">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${do.jlink}"/>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="named.module.internal"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar,-post-jar,-pre-deploy,-check-jlink" if="do.jlink.internal" name="-do-deploy">[m
[32m+[m[32m        <delete dir="${dist.jlink.dir}" failonerror="false" quiet="true"/>[m
[32m+[m[32m        <property name="jlink.launcher.name" value="${application.title}"/>[m
[32m+[m[32m        <condition else="${module.name}" property="jlink.add.modules" value="${module.name},${jlink.additionalmodules}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="jlink.additionalmodules"/>[m
[32m+[m[32m                <length length="0" string="${jlink.additionalmodules}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="jlink.do.strip.internal">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="jlink.strip"/>[m
[32m+[m[32m                <istrue value="${jlink.strip}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="jlink.do.additionalparam.internal">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="jlink.additionalparam"/>[m
[32m+[m[32m                <length length="0" string="${jlink.additionalparam}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="jlink.do.launcher.internal">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${jlink.launcher}"/>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="platform.jlink" value="${jdk.home}/bin/jlink"/>[m
[32m+[m[32m        <property name="jlink.systemmodules.internal" value="${jdk.home}/jmods"/>[m
[32m+[m[32m        <exec executable="${platform.jlink}">[m
[32m+[m[32m            <arg value="--module-path"/>[m
[32m+[m[32m            <arg path="${jlink.systemmodules.internal}:${run.modulepath}:${dist.jar}"/>[m
[32m+[m[32m            <arg value="--add-modules"/>[m
[32m+[m[32m            <arg value="${jlink.add.modules}"/>[m
[32m+[m[32m            <arg if:set="jlink.do.strip.internal" value="--strip-debug"/>[m
[32m+[m[32m            <arg if:set="jlink.do.launcher.internal" value="--launcher"/>[m
[32m+[m[32m            <arg if:set="jlink.do.launcher.internal" value="${jlink.launcher.name}=${module.name}/${main.class}"/>[m
[32m+[m[32m            <arg if:set="jlink.do.additionalparam.internal" line="${jlink.additionalparam}"/>[m
[32m+[m[32m            <arg value="--output"/>[m
[32m+[m[32m            <arg value="${dist.jlink.output}"/>[m
[32m+[m[32m        </exec>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-deploy">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar,-post-jar,-pre-deploy,-do-deploy,-post-deploy" name="deploy"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customizeDebuggee>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customizeDebuggee>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit,profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <j2seproject3:junit excludes="${excludes}" includes="${includes}" testincludes="${profile.class}" testmethods="">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <jvmarg value="-agentlib:jdwp=transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                <classpath>[m
[32m+[m[32m                    <path path="${run.test.classpath}"/>[m
[32m+[m[32m                </classpath>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-test-single-pre72" description="Profile a selected test in the IDE." name="profile-test-single"/>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected test in the IDE." if="profiler.configured" name="profile-test" unless="profiler.info.jvmargs">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="test-single"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-test-with-main"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-applet-pre72" if="profiler.configured" name="profile-applet" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run-applet"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                JAVADOC SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.sources" name="-javadoc-build">[m
[32m+[m[32m        <mkdir dir="${dist.javadoc.dir}"/>[m
[32m+[m[32m        <condition else="" property="javadoc.endorsed.classpath.cmd.line.arg" value="-J${endorsed.classpath.cmd.line.arg}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath.cmd.line.arg"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath.cmd.line.arg}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="bug5101868workaround" value="*.java">[m
[32m+[m[32m            <matches pattern="1\.[56](\..*)?" string="${java.version}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javadoc.html5.cmd.line.arg" value="-html5">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.html5"/>[m
[32m+[m[32m                <available file="${jdk.home}${file.separator}lib${file.separator}jrt-fs.jar"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <javadoc additionalparam="-J-Dfile.encoding=${file.encoding} ${javadoc.additionalparam}" author="${javadoc.author}" charset="UTF-8" destdir="${dist.javadoc.dir}" docencoding="UTF-8" encoding="${javadoc.encoding.used}" failonerror="true" noindex="${javadoc.noindex}" nonavbar="${javadoc.nonavbar}" notree="${javadoc.notree}" private="${javadoc.private}" source="${javac.source}" splitindex="${javadoc.splitindex}" use="${javadoc.use}" useexternalfile="true" version="${javadoc.version}" windowtitle="${javadoc.windowtitle}">[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${javac.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${bug5101868workaround},${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/*.java"/>[m
[32m+[m[32m                <exclude name="*.java"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <arg line="${javadoc.endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m            <arg line="${javadoc.html5.cmd.line.arg}"/>[m
[32m+[m[32m        </javadoc>[m
[32m+[m[32m        <copy todir="${dist.javadoc.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${excludes}" includes="${includes}">[m
[32m+[m[32m                <filename name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m            <fileset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="**/doc-files/**"/>[m
[32m+[m[32m            </fileset>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build" if="netbeans.home" name="-javadoc-browse" unless="no.javadoc.preview">[m
[32m+[m[32m        <nbbrowse file="${dist.javadoc.dir}/index.html"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-javadoc-build,-javadoc-browse" description="Build Javadoc." name="javadoc"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                TEST COMPILATION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" if="have.tests" name="-pre-pre-compile-test">[m
[32m+[m[32m        <mkdir dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" if="named.module.internal" name="-init-test-javac-module-properties-with-module">[m
[32m+[m[32m        <j2seproject3:modulename property="test.module.name" sourcepath="${test.src.dir}"/>[m
[32m+[m[32m        <condition else="${empty.dir}" property="javac.test.sourcepath" value="${test.src.dir}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="test.module.name"/>[m
[32m+[m[32m                <length length="0" string="${test.module.name}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="--patch-module ${module.name}=${test.src.dir} --add-reads ${module.name}=ALL-UNNAMED" property="javac.test.compilerargs" value="--add-reads ${test.module.name}=ALL-UNNAMED">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="test.module.name"/>[m
[32m+[m[32m                <length length="0" string="${test.module.name}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" if="named.module.internal" name="-init-test-run-module-properties">[m
[32m+[m[32m        <condition else="${module.name}" property="run.test.addexport.source.module.internal" value="${test.module.name}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="test.module.name"/>[m
[32m+[m[32m                <length length="0" string="${test.module.name}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <fileset dir="${build.test.classes.dir}" id="run.test.packages.internal" includes="**/*.class"/>[m
[32m+[m[32m        <property location="${build.test.classes.dir}" name="build.test.classes.dir.abs.internal"/>[m
[32m+[m[32m        <pathconvert pathsep=" " property="run.test.addexports.internal" refid="run.test.packages.internal">[m
[32m+[m[32m            <chainedmapper>[m
[32m+[m[32m                <regexpmapper from="^(.*)\Q${file.separator}\E.*\.class$$" to="\1"/>[m
[32m+[m[32m                <filtermapper>[m
[32m+[m[32m                    <uniqfilter/>[m
[32m+[m[32m                    <replacestring from="${build.test.classes.dir.abs.internal}" to=""/>[m
[32m+[m[32m                </filtermapper>[m
[32m+[m[32m                <cutdirsmapper dirs="1"/>[m
[32m+[m[32m                <packagemapper from="*" to="--add-exports ${run.test.addexport.source.module.internal}/*=ALL-UNNAMED"/>[m
[32m+[m[32m            </chainedmapper>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="--patch-module ${module.name}=${build.test.classes.dir} --add-modules ${module.name} --add-reads ${module.name}=ALL-UNNAMED ${run.test.addexports.internal}" property="run.test.jvmargs" value="--add-modules ${test.module.name} --add-reads ${test.module.name}=ALL-UNNAMED ${run.test.addexports.internal}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="test.module.name"/>[m
[32m+[m[32m                <length length="0" string="${test.module.name}" when="greater"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-source-module-properties" name="-init-test-module-properties-without-module" unless="named.module.internal">[m
[32m+[m[32m        <property name="javac.test.sourcepath" value="${empty.dir}"/>[m
[32m+[m[32m        <property name="javac.test.compilerargs" value=""/>[m
[32m+[m[32m        <property name="run.test.jvmargs" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-javac-module-properties-with-module,-init-test-module-properties-without-module" name="-init-test-module-properties"/>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-test-depend">[m
[32m+[m[32m        <j2seproject3:depend classpath="${javac.test.classpath}" destdir="${build.test.classes.dir}" srcdir="${test.src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-init-test-module-properties,-pre-pre-compile-test,-pre-compile-test,-compile-test-depend" if="have.tests" name="-do-compile-test">[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" modulepath="${javac.test.modulepath}" processorpath="${javac.test.processorpath}" sourcepath="${javac.test.sourcepath}" srcdir="${test.src.dir}">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <compilerarg line="${javac.test.compilerargs}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:javac>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test,-do-compile-test,-post-compile-test" name="compile-test"/>[m
[32m+[m[32m    <target name="-pre-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,compile,-init-test-module-properties,-pre-pre-compile-test,-pre-compile-test-single" if="have.tests" name="-do-compile-test-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile destdir="${build.test.classes.dir}"/>[m
[32m+[m[32m        <j2seproject3:javac apgeneratedsrcdir="${build.test.classes.dir}" classpath="${javac.test.classpath}" debug="true" destdir="${build.test.classes.dir}" excludes="" includes="${javac.includes}, module-info.java" modulepath="${javac.test.modulepath}" processorpath="${javac.test.processorpath}" sourcepath="${test.src.dir}" srcdir="${test.src.dir}">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <compilerarg line="${javac.test.compilerargs}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:javac>[m
[32m+[m[32m        <copy todir="${build.test.classes.dir}">[m
[32m+[m[32m            <fileset dir="${test.src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-test-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-compile-test,-pre-compile-test-single,-do-compile-test-single,-post-compile-test-single" name="compile-test-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST EXECUTION SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-init-test-run-module-properties,-pre-test-run" if="have.tests" name="-do-test-run">[m
[32m+[m[32m        <j2seproject3:test includes="${includes}" testincludes="**/*Test.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run" if="have.tests" name="-post-test-run">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="test-report"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home+have.tests" name="-test-browse"/>[m
[32m+[m[32m    <target depends="init,compile-test,-pre-test-run,-do-test-run,test-report,-post-test-run,-test-browse" description="Run unit tests." name="test"/>[m
[32m+[m[32m    <target depends="init" if="have.tests" name="-pre-test-run-single">[m
[32m+[m[32m        <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-init-test-run-module-properties,-pre-test-run-single" if="have.tests" name="-do-test-run-single">[m
[32m+[m[32m        <fail unless="test.includes">Must select some files in the IDE or set test.includes</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${test.includes}" testincludes="${test.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single" if="have.tests" name="-post-test-run-single">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-init-test-run-module-properties,-pre-test-run-single,-do-test-run-single,-post-test-run-single" description="Run single unit test." name="test-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-do-test-run-single-method">[m
[32m+[m[32m        <fail unless="test.class">Must select some files in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test excludes="" includes="${javac.includes}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single,-do-test-run-single-method" if="have.tests" name="-post-test-run-single-method">[m
[32m+[m[32m        <fail if="tests.failed" unless="ignore.failing.tests">Some tests failed; see details above.</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-init-test-run-module-properties,-pre-test-run-single,-do-test-run-single-method,-post-test-run-single-method" description="Run single unit test." name="test-single-method"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =======================[m
[32m+[m[32m                TEST DEBUGGING SECTION[m
[32m+[m[32m                =======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testincludes="${javac.includes}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-pre-test-run-single" if="have.tests" name="-debug-start-debuggee-test-method">[m
[32m+[m[32m        <fail unless="test.class">Must select one file in the IDE or set test.class</fail>[m
[32m+[m[32m        <fail unless="test.method">Must select some method in the IDE or set test.method</fail>[m
[32m+[m[32m        <j2seproject3:test-debug excludes="" includes="${javac.includes}" testClass="${test.class}" testMethod="${test.method}" testincludes="${test.class}" testmethods="${test.method}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test" if="netbeans.home+have.tests" name="-debug-start-debugger-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${test.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-init-test-run-module-properties,-debug-start-debugger-test,-debug-start-debuggee-test" name="debug-test"/>[m
[32m+[m[32m    <target depends="init,compile-test-single,-init-test-run-module-properties,-debug-start-debugger-test,-debug-start-debuggee-test-method" name="debug-test-method"/>[m
[32m+[m[32m    <target depends="debug-test-method" name="debug-single-method"/>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-test-single" if="netbeans.home" name="-do-debug-fix-test">[m
[32m+[m[32m        <j2seproject1:nbjpdareload dir="${build.test.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix-test" if="netbeans.home" name="debug-fix-test"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET EXECUTION SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" name="run-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject1:java classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =========================[m
[32m+[m[32m                APPLET DEBUGGING  SECTION[m
[32m+[m[32m                =========================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-applet">[m
[32m+[m[32m        <fail unless="applet.url">Must select one file in the IDE or set applet.url</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customizeDebuggee>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customizeDebuggee>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-applet" if="netbeans.home" name="debug-applet"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===============[m
[32m+[m[32m                CLEANUP SECTION[m
[32m+[m[32m                ===============[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-clean-init" unless="built-clean.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-clean.properties" name="built-clean.properties"/>[m
[32m+[m[32m        <delete file="${built-clean.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.clean.${basedir}" name="-warn-already-built-clean">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: ScreenMatchAlura was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-clean-init" name="deps-clean" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-clean.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-clean.properties}" prefix="already.built.clean."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-clean"/>[m
[32m+[m[32m        <propertyfile file="${built-clean.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" name="-do-clean">[m
[32m+[m[32m        <delete dir="${build.dir}"/>[m
[32m+[m[32m        <delete dir="${dist.jlink.output}"/>[m
[32m+[m[32m        <delete dir="${dist.dir}" followsymlinks="false" includeemptydirs="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-clean">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-clean,-do-clean,-post-clean" description="Clean build products." name="clean"/>[m
[32m+[m[32m    <target name="-check-call-dep">[m
[32m+[m[32m        <property file="${call.built.properties}" prefix="already.built."/>[m
[32m+[m[32m        <condition property="should.call.dep">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="already.built.${call.subproject}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${call.script}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-check-call-dep" if="should.call.dep" name="-maybe-call-dep">[m
[32m+[m[32m        <ant antfile="${call.script}" inheritall="false" target="${call.target}">[m
[32m+[m[32m            <propertyset>[m
[32m+[m[32m                <propertyref prefix="transfer."/>[m
[32m+[m[32m                <mapper from="transfer.*" to="*" type="glob"/>[m
[32m+[m[32m            </propertyset>[m
[32m+[m[32m        </ant>[m
[32m+[m[32m    </target>[m
[32m+[m[32m</project>[m
[1mdiff --git a/nbproject/genfiles.properties b/nbproject/genfiles.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..c87e52a[m
[1m--- /dev/null[m
[1m+++ b/nbproject/genfiles.properties[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mbuild.xml.data.CRC32=d3f59a09[m
[32m+[m[32mbuild.xml.script.CRC32=664794fe[m
[32m+[m[32mbuild.xml.stylesheet.CRC32=f85dc8f2@1.106.0.48[m
[32m+[m[32m# This file is used by a NetBeans-based IDE to track changes in generated files such as build-impl.xml.[m
[32m+[m[32m# Do not edit this file. You may delete it but then the IDE will never regenerate such files for you.[m
[32m+[m[32mnbproject/build-impl.xml.data.CRC32=d3f59a09[m
[32m+[m[32mnbproject/build-impl.xml.script.CRC32=4f238a48[m
[32m+[m[32mnbproject/build-impl.xml.stylesheet.CRC32=12e0a6c2@1.106.0.48[m
[1mdiff --git a/nbproject/private/private.properties b/nbproject/private/private.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..d16e7eb[m
[1m--- /dev/null[m
[1m+++ b/nbproject/private/private.properties[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mcompile.on.save=true[m
[32m+[m[32muser.properties.file=C:\\Users\\pedro\\AppData\\Roaming\\NetBeans\\17\\build.properties[m
[1mdiff --git a/nbproject/private/private.xml b/nbproject/private/private.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..a0a2de5[m
[1m--- /dev/null[m
[1m+++ b/nbproject/private/private.xml[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project-private xmlns="http://www.netbeans.org/ns/project-private/1">[m
[32m+[m[32m    <editor-bookmarks xmlns="http://www.netbeans.org/ns/editor-bookmarks/2" lastBookmarkId="0"/>[m
[32m+[m[32m    <open-files xmlns="http://www.netbeans.org/ns/projectui-open-files/2">[m
[32m+[m[32m        <group>[m
[32m+[m[32m            <file>file:/C:/Users/pedro/OneDrive/ONEDRIVE%20ANTIGO/Documentos/ALURa/ScreenMatchAlura/src/screenmatchalura/ScreenMatchAlura.java</file>[m
[32m+[m[32m        </group>[m
[32m+[m[32m    </open-files>[m
[32m+[m[32m</project-private>[m
[1mdiff --git a/nbproject/project.properties b/nbproject/project.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..356d63d[m
[1m--- /dev/null[m
[1m+++ b/nbproject/project.properties[m
[36m@@ -0,0 +1,95 @@[m
[32m+[m[32mannotation.processing.enabled=true[m
[32m+[m[32mannotation.processing.enabled.in.editor=false[m
[32m+[m[32mannotation.processing.processor.options=[m
[32m+[m[32mannotation.processing.processors.list=[m
[32m+[m[32mannotation.processing.run.all.processors=true[m
[32m+[m[32mannotation.processing.source.output=${build.generated.sources.dir}/ap-source-output[m
[32m+[m[32mbuild.classes.dir=${build.dir}/classes[m
[32m+[m[32mbuild.classes.excludes=**/*.java,**/*.form[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mbuild.dir=build[m
[32m+[m[32mbuild.generated.dir=${build.dir}/generated[m
[32m+[m[32mbuild.generated.sources.dir=${build.dir}/generated-sources[m
[32m+[m[32m# Only compile against the classpath explicitly listed here:[m
[32m+[m[32mbuild.sysclasspath=ignore[m
[32m+[m[32mbuild.test.classes.dir=${build.dir}/test/classes[m
[32m+[m[32mbuild.test.results.dir=${build.dir}/test/results[m
[32m+[m[32m# Uncomment to specify the preferred debugger connection transport:[m
[32m+[m[32m#debug.transport=dt_socket[m
[32m+[m[32mdebug.classpath=\[m
[32m+[m[32m    ${run.classpath}[m
[32m+[m[32mdebug.modulepath=\[m
[32m+[m[32m    ${run.modulepath}[m
[32m+[m[32mdebug.test.classpath=\[m
[32m+[m[32m    ${run.test.classpath}[m
[32m+[m[32mdebug.test.modulepath=\[m
[32m+[m[32m    ${run.test.modulepath}[m
[32m+[m[32m# Files in build.classes.dir which should be excluded from distribution jar[m
[32m+[m[32mdist.archive.excludes=[m
[32m+[m[32m# This directory is removed when the project is cleaned:[m
[32m+[m[32mdist.dir=dist[m
[32m+[m[32mdist.jar=${dist.dir}/ScreenMatchAlura.jar[m
[32m+[m[32mdist.javadoc.dir=${dist.dir}/javadoc[m
[32m+[m[32mdist.jlink.dir=${dist.dir}/jlink[m
[32m+[m[32mdist.jlink.output=${dist.jlink.dir}/ScreenMatchAlura[m
[32m+[m[32mexcludes=[m
[32m+[m[32mincludes=**[m
[32m+[m[32mjar.compress=false[m
[32m+[m[32mjavac.classpath=[m
[32m+[m[32m# Space-separated list of extra javac options[m
[32m+[m[32mjavac.compilerargs=[m
[32m+[m[32mjavac.deprecation=false[m
[32m+[m[32mjavac.external.vm=true[m
[32m+[m[32mjavac.modulepath=[m
[32m+[m[32mjavac.processormodulepath=[m
[32m+[m[32mjavac.processorpath=\[m
[32m+[m[32m    ${javac.classpath}[m
[32m+[m[32mjavac.source=11[m
[32m+[m[32mjavac.target=11[m
[32m+[m[32mjavac.test.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32mjavac.test.modulepath=\[m
[32m+[m[32m    ${javac.modulepath}[m
[32m+[m[32mjavac.test.processorpath=\[m
[32m+[m[32m    ${javac.test.classpath}[m
[32m+[m[32mjavadoc.additionalparam=[m
[32m+[m[32mjavadoc.author=false[m
[32m+[m[32mjavadoc.encoding=${source.encoding}[m
[32m+[m[32mjavadoc.html5=false[m
[32m+[m[32mjavadoc.noindex=false[m
[32m+[m[32mjavadoc.nonavbar=false[m
[32m+[m[32mjavadoc.notree=false[m
[32m+[m[32mjavadoc.private=false[m
[32m+[m[32mjavadoc.splitindex=true[m
[32m+[m[32mjavadoc.use=true[m
[32m+[m[32mjavadoc.version=false[m
[32m+[m[32mjavadoc.windowtitle=[m
[32m+[m[32m# The jlink additional root modules to resolve[m
[32m+[m[32mjlink.additionalmodules=[m
[32m+[m[32m# The jlink additional command line parameters[m
[32m+[m[32mjlink.additionalparam=[m
[32m+[m[32mjlink.launcher=true[m
[32m+[m[32mjlink.launcher.name=ScreenMatchAlura[m
[32m+[m[32mmain.class=screenmatchalura.ScreenMatchAlura[m
[32m+[m[32mmanifest.file=manifest.mf[m
[32m+[m[32mmeta.inf.dir=${src.dir}/META-INF[m
[32m+[m[32mmkdist.disabled=false[m
[32m+[m[32mplatform.active=default_platform[m
[32m+[m[32mrun.classpath=\[m
[32m+[m[32m    ${javac.classpath}:\[m
[32m+[m[32m    ${build.classes.dir}[m
[32m+[m[32m# Space-separated list of JVM arguments used when running the project.[m
[32m+[m[32m# You may also define separate properties like run-sys-prop.name=value instead of -Dname=value.[m
[32m+[m[32m# To set system properties for unit tests define test-sys-prop.name=value:[m
[32m+[m[32mrun.jvmargs=[m
[32m+[m[32mrun.modulepath=\[m
[32m+[m[32m    ${javac.modulepath}[m
[32m+[m[32mrun.test.classpath=\[m
[32m+[m[32m    ${javac.test.classpath}:\[m
[32m+[m[32m    ${build.test.classes.dir}[m
[32m+[m[32mrun.test.modulepath=\[m
[32m+[m[32m    ${javac.test.modulepath}[m
[32m+[m[32msource.encoding=UTF-8[m
[32m+[m[32msrc.dir=src[m
[32m+[m[32mtest.src.dir=test[m
[1mdiff --git a/nbproject/project.xml b/nbproject/project.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..72d1a5f[m
[1m--- /dev/null[m
[1m+++ b/nbproject/project.xml[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://www.netbeans.org/ns/project/1">[m
[32m+[m[32m    <type>org.netbeans.modules.java.j2seproject</type>[m
[32m+[m[32m    <configuration>[m
[32m+[m[32m        <data xmlns="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <name>ScreenMatchAlura</name>[m
[32m+[m[32m            <source-roots>[m
[32m+[m[32m                <root id="src.dir"/>[m
[32m+[m[32m            </source-roots>[m
[32m+[m[32m            <test-roots>[m
[32m+[m[32m                <root id="test.src.dir"/>[m
[32m+[m[32m            </test-roots>[m
[32m+[m[32m        </data>[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m</project>[m
[1mdiff --git a/src/screenmatchalura/Filme.java b/src/screenmatchalura/Filme.java[m
[1mnew file mode 100644[m
[1mindex 0000000..82cfe50[m
[1m--- /dev/null[m
[1m+++ b/src/screenmatchalura/Filme.java[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m
[32m+[m[32mpackage screenmatchalura;[m
[32m+[m
[32m+[m
[32m+[m[32mpublic class Filme {[m
[32m+[m[32m    String nome;[m
[32m+[m[32m    int anoDeLancamento;[m
[32m+[m[32m    boolean incluindoNoPlano;[m
[32m+[m[32m    double avaliacao;[m
[32m+[m[32m    int totalDeAvalicoes;[m[41m [m
[32m+[m[41m    [m
[32m+[m[41m    [m
[32m+[m[32m}[m
[1mdiff --git a/src/screenmatchalura/ScreenMatchAlura.java b/src/screenmatchalura/ScreenMatchAlura.java[m
[1mnew file mode 100644[m
[1mindex 0000000..ebcde77[m
[1m--- /dev/null[m
[1m+++ b/src/screenmatchalura/ScreenMatchAlura.java[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m
[32m+[m[32mpackage screenmatchalura;[m
[32m+[m
[32m+[m[32mpublic class ScreenMatchAlura {[m
[32m+[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[41m        [m
[32m+[m[41m        [m
[32m+[m[32m    }[m
[32m+[m[41m    [m
[32m+[m[32m}[m
