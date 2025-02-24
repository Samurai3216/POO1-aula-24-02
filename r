
package br.ulbra.aula;


public class Veiculo {
    
    private String modelo;
    private String marca;
    private int ano;
    private String cor;
    private double valor;
    private boolean vendido;
    
    public Veiculo(){
        this.modelo= "Fiat 147";
        this.marca= "Fiat";
        this.ano= 1947;
        this.cor= "Azul Calcinha";
        this.valor= 50000.00;
        this.vendido= true;
        
    }
    public Veiculo(String modelo, String marca, int ano, String cor, double valor, boolean vendido){
       this.modelo= modelo;
        this.marca= marca;
        this.ano= ano;
        this.cor= cor;
        this.valor= valor;
        this.vendido= vendido;
        
    }
    public void mostrar(){
        System.out.println("Modelo: "+ modelo);
        System.out.println("Marca: "+ marca);
        System.out.println("Ano: "+ ano);
        System.out.println("Cor: "+ cor);
        System.out.println("Valor: "+ valor);
        System.out.println("Vendido: "+ vendido);
    }
    
    public void setModelo(String  modelo){
        this.modelo=modelo;
        
    }
    public void setMarca(String marca){
        this.marca=marca;
    }
    public void setAno(int ano){
        this.ano=ano;
    }
    public void setCor(String cor){
        this.cor=cor;
    }
    public void setValor(double valor){
        if(valor>0){
        this.valor=valor;
        
        }else{
            System.out.println("Valor invalido zoeirinho da net, informe um VALIDO!!");
        }
    }
    public void setVendido(boolean vendido){
        this.vendido=vendido;
    }
    
    //comandoGet
    
    
    public String getModelo(String  modelo){
        return modelo;
    }
     public String getMarca(String  marca){
        return marca;
    }
      public int getAno(int  ano){
        return ano;
    }
       public String getCor(String  cor){
        return cor;
    }
        public double getValor(double  valor){
        return valor;
    }
        // para boolean nao é GET e sim Is
        public boolean isVendido(){
            return vendido;
        }
}






proj cap


package br.ulbra.aula;

import java.util.Scanner;

/**
 *
 * @author aluno.saolucas
 */
public class ProjetoEncapsula {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
      
      Veiculo car = new Veiculo();
      car.mostrar();
      Veiculo car2 = new Veiculo( "gol", "VW", 2000, "Preto", 8000, false);
      car2.mostrar();
        System.out.println("Informe o Modelo: ");
        car.setModelo(ler.next());
        System.out.println("Informe a Marca:");
        car.setMarca(ler.next());
        System.out.println("Informe a Cor: ");
        car.setCor(ler.next());
        System.out.println("Informe o Ano: ");
        car.setAno(ler.nextInt());
        System.out.println("Informe o Valor:");
        car.setValor(ler.nextDouble());
        System.out.println("Vendido ");
        car.setVendido(ler.nextBoolean());
        car.mostrar();
        
        
      
    }
    
}


