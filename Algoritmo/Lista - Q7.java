package q7vetores;
import javax.swing.JOptionPane;
public class Q7vetores {
    
    public static void main(String[] args) {
        double n [][] = new double [3] [30];
        
        for (int i=0;i<30;i++){
            n[0][i]=Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o número da primeira fileira"));
        }
        for (int i=0;i<30;i++){
            n[1][i]=Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o número da segunda fileira"));
        }
        for (int i=0;i<30;i++){
            n[2][i]=n[0][i]+n[1][i];
        }
        for (int i=0;i<30;i++){
            JOptionPane.showMessageDialog(null, "A soma de "+n[0][i]+" + "+n[1][i]+" é igual à: "+n[2][i]);
        }
    }
    
}
    

