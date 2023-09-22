package q3vetores;
import javax.swing.JOptionPane;

public class Q3vetores {

    
    public static void main(String[] args) {
        int vet [] = new int [25];
        String mostrar1 = " ", mostrar2 = " ";
        
        for (int i = 1; i < 21; i ++){
            vet [i] = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o valor da " + i + "º posição: "));
            mostrar1 = mostrar1 + vet [i] + " ";
        }
        
        for (int j = 20; j > 0; j --){
            mostrar2 = mostrar2 + vet [j] + " ";
        }
        JOptionPane.showMessageDialog(null,"Sequência: "+ mostrar1 + "\n\n" + "O inverso:" + mostrar2);
    }
    
}
