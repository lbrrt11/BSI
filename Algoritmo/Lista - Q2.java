package q2vetores;
import javax.swing.JOptionPane;
public class Q2vetores {
    
    public static void main(String[] args) {
        int vet [] = new int [25];
        String mostrar = "", mostrar1 = "";
        
        for (int i = 1; i < 21; i ++){
            vet [i] = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o valor da " + i + "º posição: "));
        }
        for (int j = 20; j > 0; j --){
            JOptionPane.showMessageDialog(null, "ordem inversa: " + vet [j]);
        }
            }
}
