/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal.order;

import dal.DBContext;
import dal.product.PodDBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.order.OrderDetail;
import model.order.OrderState;
import model.product.Pod;

/**
 *
 * @author giaki
 */
public class OrderDetailDBContext extends DBContext<OrderDetail> {
    
     public ArrayList<OrderDetail> findByOrderId(int orderId) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        PodDBContext podDB = new PodDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[podId]\n"
                + "      ,[orderId]\n"
                + "  FROM [order_detail]\n"
                + " WHERE orderId = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(result.getInt("id"));
                orderDetail.setOrderId(result.getInt("orderId"));
                orderDetail.setPodId(result.getInt("podId"));
                orderDetail.setQuantity(result.getInt("quantity"));
                orderDetail.setDiscount(result.getInt("discount"));
                orderDetail.setPrice(result.getDouble("price"));
                Pod pod = podDB.get(orderDetail.getPodId());
                orderDetail.setPod(pod);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetails;
    }

    @Override
    public ArrayList<OrderDetail> list() {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        PodDBContext podDB = new PodDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[podId]\n"
                + "      ,[orderId]\n"
                + "  FROM [order_detail]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(result.getInt("id"));
                orderDetail.setOrderId(result.getInt("orderId"));
                orderDetail.setPodId(result.getInt("podId"));
                orderDetail.setQuantity(result.getInt("quantity"));
                orderDetail.setDiscount(result.getInt("discount"));
                orderDetail.setPrice(result.getDouble("price"));
                Pod pod = podDB.get(orderDetail.getPodId());
                orderDetail.setPod(pod);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetails;
    }

    @Override
    public OrderDetail get(int id) {
        PodDBContext podDB = new PodDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[podId]\n"
                + "      ,[orderId]\n"
                + "  FROM [order_detail]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(result.getInt("id"));
                orderDetail.setOrderId(result.getInt("orderId"));
                orderDetail.setPodId(result.getInt("podId"));
                orderDetail.setQuantity(result.getInt("quantity"));
                orderDetail.setDiscount(result.getInt("discount"));
                orderDetail.setPrice(result.getDouble("price"));
                Pod pod = podDB.get(orderDetail.getPodId());
                orderDetail.setPod(pod);
                return orderDetail;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public OrderDetail getLast() {
        PodDBContext podDB = new PodDBContext();
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[podId]\n"
                + "      ,[orderId]\n"
                + "  FROM [order_detail] ORDER BY [id] DESC";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(result.getInt("id"));
                orderDetail.setOrderId(result.getInt("orderId"));
                orderDetail.setPodId(result.getInt("podId"));
                orderDetail.setQuantity(result.getInt("quantity"));
                orderDetail.setDiscount(result.getInt("discount"));
                orderDetail.setPrice(result.getDouble("price"));
                Pod pod = podDB.get(orderDetail.getPodId());
                orderDetail.setPod(pod);
                return orderDetail;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public OrderDetail insert(OrderDetail model) {
        String sql = "INSERT INTO [order_detail]\n"
                + "           ([quantity]\n"
                + "           ,[price]\n"
                + "           ,[discount]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[podId]\n"
                + "           ,[orderId])\n"
                + "     VALUES(?,?,?,?,?,?,?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getQuantity());
            statement.setDouble(2, model.getPrice());
            statement.setInt(3, model.getDiscount());
            statement.setTimestamp(4, model.getCreated_at());
            statement.setTimestamp(5, model.getUpdated_at());
            statement.setInt(6, model.getPodId());
            statement.setInt(7, model.getOrderId());
            statement.executeUpdate();
            return getLast();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    @Override
    public void update(OrderDetail model) {
        String sql = "UPDATE [order_detail]\n"
                + "        SET [quantity]=?\n"
                + "           ,[price]=?\n"
                + "           ,[discount]=?\n"
                + "           ,[created_at]=?\n"
                + "           ,[updated_at]=?\n"
                + "           ,[podId]=?\n"
                + "           ,[orderId]=?\n"
                + "     WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getQuantity());
            statement.setDouble(2, model.getPrice());
            statement.setInt(3, model.getDiscount());
            statement.setTimestamp(4, model.getCreated_at());
            statement.setTimestamp(5, model.getUpdated_at());
            statement.setInt(6, model.getPodId());
            statement.setInt(7, model.getOrderId());
            statement.setInt(8, model.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    @Override
    public void delete(int id) {
        try {
            String sql = "DELETE FROM [order_detail]\n"
                    + "WHERE id = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
