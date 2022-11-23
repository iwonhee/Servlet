package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductDTO;

public class ProductComCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ProductDAO dao = new ProductDAO();
		List<ProductDTO> list = dao.select_product_com(request.getParameter("com"));
		
		request.setAttribute("list", list);
	}

}
