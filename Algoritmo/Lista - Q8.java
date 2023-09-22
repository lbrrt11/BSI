package q8vetores;
import javax.swing.JOptionPane;
public class Q8vetores {
    
    public static void main(String[] args) {
        double n[][]= new double[3][30];
        
        for (int i=0;i<30;i++){
            n[0][i]=Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o número da primeira fileira"));
        }
        for (int i=0;i<30;i++){
            n[1][i]=Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o número da segunda fileira"));
        }
        for (int i=0;i<30;i++){
            if (n[0][i] == n[1][i]){
                JOptionPane.showMessageDialog(null, "O número localizado no "+(i+1)+"° lugar dos dois vetores são iguais, portanto, o "+(i+1)+"° lugar do terceiro vetor é igual à 1");
            }
            else JOptionPane.showMessageDialog(null, "O número localizado no "+(i+1)+"° lugar dos dois vetores são diferentes, portanto, o "+(i+1)+"° lugar do terceiro vetor é igual à 0");
        }
    }
}