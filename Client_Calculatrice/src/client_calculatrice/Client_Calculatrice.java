/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package client_calculatrice;

import java.util.Scanner;

/**
 *
 * @author user
 */
public class Client_Calculatrice {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("A = ");
        int a = sc.nextInt();
        
        System.out.print("B = ");
        int b = sc.nextInt();
        
        System.out.println(addition(a, b));
        
        
        
    }

    private static String addition(int a, int b) {
        webservice.CalculatriceWebservice_Service service = new webservice.CalculatriceWebservice_Service();
        webservice.CalculatriceWebservice port = service.getCalculatriceWebservicePort();
        return port.addition(a, b);
    }

    

    
}
