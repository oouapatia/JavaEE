package com;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GoodsBean {
    String goods_name = "";
    String goods_price = "";
    
    public void SelectGoods(int id) {
        DBean db = new DBean();
        ResultSet sqlRes = null;
        try {
            String sql_user = "SELECT goods_name,goods_price FROM Goods_info WHERE id = "+id ;
            sqlRes = db.Query(sql_user);
            while(sqlRes.next()) {
                goods_name = sqlRes.getString("goods_name");
                goods_price = sqlRes.getString("goods_price");
            }
        } catch (SQLException ex) {
            Logger.getLogger(GoodsBean.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            db.closeDB(sqlRes);
        }
    }
    
    public String GetName() {
        return goods_name;
    }
    
    public String GetPrice() {
        return goods_price;
    }
}
