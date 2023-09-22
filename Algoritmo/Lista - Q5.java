package q5vetores;
import javax.swing.JOptionPane;
public class Q5vetores {
    
    public static void main(String[] args) {
        float vet [] = new float [55];
        String mostrar1 = " ", mostrar2 = "", mostrar3 = "", mostrar4 = "";
        
        for (int i = 1; i < 11; i ++){
            vet [i] = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite o valor da " + i + "º posição: "));
            
            if (i % 2 != 0){
                mostrar3 = mostrar3 + vet[i] + " // ";
            mostrar1 = mostrar1 + (vet [i] + (vet [i]* 0.05)) + " // ";
            }
            
            if (i % 2 == 0){
                mostrar4 = mostrar4 + vet[i] + " // ";
            mostrar2 = mostrar2 + (vet [i]+ (vet [i]* 0.02)) + " // ";
            }}
        JOptionPane.showMessageDialog(null, "Valores em posição ímpar = " + mostrar3 +"\nValores aumentados em posição ímpar (+5%) = " + mostrar1 + "\n\nValores em posição par = " + mostrar4 + "\nValores aumentados em posição par (+2%) = " + mostrar2);
    }
}
