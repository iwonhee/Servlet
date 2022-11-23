package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductDTO;

public class ProductInfoCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ProductDAO dao = new ProductDAO();
		int num = Integer.parseInt(request.getParameter("num"));
		ProductDTO pdto = dao.select_product_info(num);
		
		request.setAttribute("pdto", pdto);
	}

}
