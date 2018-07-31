package com.monPanierBio.entities;

public class Produit {
	
	private String Code;
	private String Categorie;
	private String Nom;
	private String Prix;
	private String Poids;
	private String Date;
	private String Description;
	
	public Produit() {
		
	}
	
	
	public String getCode() {
		return Code;
	}
	public void setCode(String code) {
		Code = code;
	}
	public String getCategorie() {
		return Categorie;
	}
	public void setCategorie(String categorie) {
		Categorie = categorie;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrix() {
		return Prix;
	}
	public void setPrix(String prix) {
		Prix = prix;
	}
	public String getPoids() {
		return Poids;
	}
	public void setPoids(String poids) {
		Poids = poids;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}


	@Override
	public String toString() {
		return "Produit [Code=" + Code + ", Categorie=" + Categorie + ", Nom=" + Nom + ", Prix=" + Prix + ", Poids="
				+ Poids + ", Date=" + Date + ", Description=" + Description + "]";
	}
	
	
}


