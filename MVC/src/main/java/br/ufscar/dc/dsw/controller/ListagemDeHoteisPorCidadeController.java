package br.ufscar.dc.dsw.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.bean.ListagemPorCidadeBean;
import br.ufscar.dc.dsw.domain.Hotel;

@WebServlet(urlPatterns = {"/listagemDeHoteisPorCidade"})
public class ListagemDeHoteisPorCidadeController extends HttpServlet{
    private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("cidade");
        String buffer = "<tr>"
        				+ "<td>Hotel</td>"
        				+ "<td><select id='hotel' name='hotel' onchange='apresenta()'>"
        				+ "<option value=''>Selecione o hotel</option>";
        List<Hotel> hoteisEncontrados = new ListagemPorCidadeBean().getHotelPorCidade(nome);
        for (Hotel hotelEncontrado : hoteisEncontrados)
        	buffer += "<option value='" + hotelEncontrado.getNome() + "'>" + hotelEncontrado.getNome() + "</option>";
        buffer += "</select></td>";

        //System.out.println(buffer);
        response.getWriter().println(buffer);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
