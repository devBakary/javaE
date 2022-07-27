/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inscript;

/**
 *
 * @author bddiakite
 */
public class user {
    private String nom;
    private String prenom;
    private String pseudo;
    private String email;
    private String psw;
    private String psw2;
    
    public user(){
        
    }
    
    //mon constructeur
    public user(String nom, String prenom, String pseudo, String email, String psw, String psw2){
        this.nom = nom;
        this.prenom = prenom;
        this.pseudo = pseudo;
        this.email = email;
        this.psw = psw;
        this.psw2 = psw2;
    }
    
    // l'appelle des fonstions getters et setters
    public String getNom(){
        return nom;
    }
    public void setNom(String nom){
        this.nom = nom;
    }
     public String getPrenom(){
        return prenom;
    }
    public void setPrenom(String prenom){
        this.nom = prenom;
    }
     public String getPseudo(){
        return pseudo;
    }
    public void setPseudo(String pseudo){
        this.pseudo = pseudo;
    }
     public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
     public String getPsw(){
        return psw;
    }
    public void setPsw(String psw){
        this.psw = psw;
    }
     public String getPsw2(){
        return psw2;
    }
    public void setPsw2(String psw2){
        this.psw2 = psw2;
    }
}
