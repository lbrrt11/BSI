package q10vetores;
import javax.swing.JOptionPane;
public class Q10vetores {
    
    public static void main(String[] args) {
        int n[]=new int[100];
        String m[]= new String [100];
        
        for (int i=0;i<100;i++){
            
            n[i]=Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o "+(i+1)+"° número"));
            
            if (n[i]%2==0){m[i]="P";}
            
            else if (n[i]%2==1){m[i]="I";}
        }
        for (int i=0;i<100;i++){
        JOptionPane.showMessageDialog(null, "Os números são respectivamente:\n"+m[i]);
        }
    }
}
    
    

