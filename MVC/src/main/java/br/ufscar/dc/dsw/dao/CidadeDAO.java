package br.ufscar.dc.dsw.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.ufscar.dc.dsw.domain.Cidade;

public class CidadeDAO extends GenericDAO{
	// getAll retorna uma lista com todas as cidades
	public List<Cidade> getAll(){
		List<Cidade> listaCidades = new ArrayList<>();
		
		String sql = "SELECT * from Hotel order by cidade";;
		
		try {
            Connection conn = this.getConnection();
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
            	String nomeCidade = resultSet.getString("cidade");
                Cidade cidade = new Cidade(nomeCidade);

                cidade.setNomeHotelDaCidade(resultSet.getString("nome"));

                listaCidades.add(cidade);
            }
            
            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
		return listaCidades;
	}
}