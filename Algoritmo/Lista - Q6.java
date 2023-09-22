package q6vetores;

import javax.swing.JOptionPane;
public class Q6vetores {

    
    public static void main(String[] args) {
        double vet [] = new double [15];
        String mostrar = "", mostrar1 = "";
        
        for (int i = 1; i < 11; i ++){
            
            vet [i] = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o " +i+ "º número"));
            mostrar = mostrar + vet[i] + " // ";
        }
        JOptionPane.showMessageDialog(null, "Receba: " + mostrar);
        
        for (int j = 10; j > 0; j --){
            mostrar1 = mostrar1 + vet [j] + " // ";
        }
        JOptionPane.showMessageDialog(null, "Receba o inverso agora: " + mostrar1);
    }
}
    
    

