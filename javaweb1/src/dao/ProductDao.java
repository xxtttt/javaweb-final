package dao;

import java.sql.*;
import java.util.ArrayList;

import com.sun.scenario.effect.impl.prism.PrDrawable;
import tools.DatabaseConnection;
import vo.Page;
import vo.Product;

public class ProductDao {
    public Product get(String id) {
        Product product = null;
        try
        {
           DatabaseConnection databaseConnection=new DatabaseConnection();
            Connection con = databaseConnection.getConnection();
            String sql = "select * from product where id=?";
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, id);
            // 4.执行语句
            ResultSet rs = pst.executeQuery();
            // 5.结果处理
            if (rs.next()) {
                product = new Product(rs.getString("id"),
                        rs.getString("barcode"), rs.getString("name"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }


    //根据传入的参数查询
    public ArrayList<Product> query(Product product, Page page) {
        ArrayList<Product> list = new ArrayList<Product>(); // 存放查询结果的集合
        StringBuffer condition = new StringBuffer();// 查询条件
        if (product.getId() != null&& !"".equals(product.getId())) { // 判断是否有该查询条件
            condition.append(" and id like '%")
                    .append(product.getId()).append("%'");
        }
        if (product.getBarcode() != null&& !"".equals(product.getBarcode())) { //
            condition.append(" and barcode like '%").append(product.getBarcode())
                    .append("%'");
        }
        int begin = page.getPageSize() * (page.getPageNumber() - 1);
        String sql = "select id,barcode,name,category,reclassify,price,minsaleprice,maxsaleprice,specifications,origin,company";

        sql = sql + " from product ";
        sql = sql + " where  1=1 ";
        sql = sql + condition + " order by " + page.getSort() + " "
                + page.getSortOrder() + " limit " + begin + ","
                + page.getPageSize();

        System.out.println(sql);


        try {
            DatabaseConnection databaseConnection=new DatabaseConnection();
            Connection con = databaseConnection.getConnection();
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Product productResult = new Product();
                productResult.setId(rs.getString("id"));
                productResult.setBarcode(rs.getString("barcode"));
                productResult.setCategory(rs.getString("category"));
                productResult.setCategory(rs.getString("reclassify"));
                productResult.setCompany(rs.getString("company"));
                productResult.setMaxsaleprice(rs.getInt("maxsaleprice"));
                productResult.setMinsaleprice(rs.getInt("minsaleprice"));
                productResult.setName(rs.getString("name"));
                productResult.setOrigin(rs.getString("origin"));
                productResult.setPrice(rs.getInt("price"));
                productResult.setReclassify(rs.getString("reclassify"));
                productResult.setSpecifications(rs.getString("specifications"));
                list.add(productResult);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    //查询记录数
    public int count(Product product, Page page){
        int total=0;

        StringBuffer condition = new StringBuffer();// 查询条件
        if (product.getId() != null && !"".equals(product.getId())) { // 判断是否有该查询条件
            condition.append(" and id like '%")
                    .append(product.getId()).append("%'");
        }
        if (product.getBarcode() != null && !"".equals(product.getBarcode())) { //
            condition.append(" and barcode like '%").append(product.getBarcode())
                    .append("%'");
        }

        String sql = "select count(*) from product";
        sql = sql + " where  1=1 ";
        sql = sql + condition;
        System.out.println(sql);
        DatabaseConnection dbc = new DatabaseConnection();
        Connection con = dbc.getConnection();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            // 6.关闭连接
            dbc.close();
        }

        return total;

    }
}
