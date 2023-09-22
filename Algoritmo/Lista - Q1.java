package q1vetores;
import javax.swing.JOptionPane;
public class Q1vetores {

    
    public static void main(String[] args) {
        int j [] = new int [30];
        int r;
        
        for (int i = 1; i < 31; i ++){
            r = i*i;
            JOptionPane.showMessageDialog(null, "Posição do vetor = " + i + "\n\n" + "Elemento (quadrado da posição) = " + r);
        }
    }
}
