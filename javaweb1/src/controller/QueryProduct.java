package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import vo.Page;
import vo.Product;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@WebServlet(urlPatterns = "/QueryProduct.do")

public class QueryProduct extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        //接收客户端参数
        String queryParams = request.getParameter("queryParams");
        String pageParams = request.getParameter("pageParams");
        System.out.println("查询参数："+pageParams);
        System.out.println("分页参数："+queryParams);
        //将json字符串参数值转换为java对象
        Gson gson = new GsonBuilder().serializeNulls().create();
        HashMap<String, Object> mapPage = gson.fromJson(pageParams, HashMap.class);
        Page page = Page.getPageParams(mapPage); //转换为page对象
        Product product = new Product();
        if (queryParams != null) {
            product = gson.fromJson(queryParams, Product.class);
        }

        //用dao查
        ProductDao dao = new ProductDao();
        ArrayList<Product> rows = dao.query(product, page); //查询
        int total = dao.count(product, page);  //查询记录总数

        //转换为json数据
        HashMap<String, Object> mapReturn = new HashMap<String, Object>();
        mapReturn.put("rows", rows);
        mapReturn.put("total", total);
        String jsonStr = gson.toJson(mapReturn);

        // 字符流输出
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(jsonStr);
        out.print(jsonStr);
        out.flush();
        out.close();
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
