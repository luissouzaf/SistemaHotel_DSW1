package br.ufscar.dc.dsw.domain;

public class Cidade {
	
	private String nomeCidade;
	private String nomeHotelDaCidade;
	
	public Cidade (String nomeCidade) {
		this.nomeCidade = nomeCidade;
		this.nomeHotelDaCidade = null;
	}
	
	public String getNomeCidade() {
		return this.nomeCidade;
	}
	
	public void setCidade(String nomeCidade) {
		this.nomeCidade = nomeCidade;
	}
	
	public void setNomeHotelDaCidade (String nomeHotelDaCidade) {
		this.nomeHotelDaCidade = nomeHotelDaCidade;
	}
	
	public String getNomeHotelDaCidade () {
		return this.nomeHotelDaCidade;
	}
}