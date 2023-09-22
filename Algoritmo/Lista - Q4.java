
package q4vetores;

import javax.swing.JOptionPane;
public class Q4vetores {

    
    public static void main(String[] args) {
        float vet [] = new float [35];
        String mostrar = "";
        
        for (int i = 1; i < 31; i ++){
            vet [i] = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite o valor da " + i + "º posição: "));
            
            if (i % 2 != 0){
            mostrar = mostrar + vet [i] + " // ";
            }
        }
        JOptionPane.showMessageDialog(null, "Os valores localizados em posição ímpar são: " + mostrar);
    }
}