package src.br.ufscar.dc.dsw.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import src.br.ufscar.dc.dsw.domain.Hotel;
import src.br.ufscar.dc.dsw.bean.ListagemPorCidadeBean;


@WebServlet(urlPatterns = {"/ListagemDeHoteisPorCidadeController"})
public class ListagemDeHoteisPorCidadeController extends HttpServlet{
    private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        String nomeCidade = request.getParameter("cidade");
        String buffer = "<tr>"
        		+ "			<td>Hotel</td>"
        		+ "			<td><select id='hotel' name='hotel' onchange='apresenta()'>";
        buffer = buffer + "<option value=''>Selecione o hotel</option>";
        List<Hotel> hoteisEncontrados = new ListagemPorCidadeBean().getHotelPorCidade(nomeCidade);
        for (Hotel hotelEncontrado : hoteisEncontrados) {
            buffer = buffer + "<option value='" + hotelEncontrado.getNomeHotel() + "'>" + hotelEncontrado.getNomeHotel() + "</option>";
        }
        buffer = buffer + "</select></td>";
        
        System.out.println(buffer);
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
