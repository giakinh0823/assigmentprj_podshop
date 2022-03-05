/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal.order;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.order.Customer;
import model.order.Order;
import model.order.OrderDetail;
import model.order.OrderState;

/**
 *
 * @author giaki
 */
public class OrderDBContext extends DBContext<Order> {
    
    public ArrayList<Order> findByUser(int userId) {
        ArrayList<Order> orders = new ArrayList<>();
        OrderDetailDBContext orderDetailDB = new OrderDetailDBContext();
        OrderStateDBContext orderStateDB = new OrderStateDBContext();
        CustomerDBContext customerDB = new CustomerDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[customerId]\n"
                + "      ,[stateId]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [order]\n"
                + " WHERE userId = ? \n"
                + " ORDER BY id DESC";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setId(result.getInt("id"));
                order.setUserId(result.getInt("userId"));
                order.setCustomerId(result.getInt("customerId"));
                order.setStateId(result.getInt("stateId"));
                order.setCreated_at(result.getTimestamp("created_at"));
                order.setUpdated_at(result.getTimestamp("updated_at"));
                ArrayList<OrderDetail> orderDetails = orderDetailDB.findByOrderId(order.getId());
                order.setOrderDetails(orderDetails);
                OrderState orderState = orderStateDB.get(order.getStateId());
                order.setState(orderState);
                Customer customer = customerDB.get(order.getCustomerId());
                order.setCustomer(customer);
                orders.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }
    
    public ArrayList<Order> getOrders(int pageIndex,int pageSize) {
        ArrayList<Order> orders = new ArrayList<>();
        OrderDetailDBContext orderDetailDB = new OrderDetailDBContext();
        OrderStateDBContext orderStateDB = new OrderStateDBContext();
        CustomerDBContext customerDB = new CustomerDBContext();
        String sql = "SELECT * FROM (SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[customerId]\n"
                + "      ,[stateId]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [order].[id] DESC) as row_index\n"
                + "  FROM [order]) [order]"
                + " WHERE row_index >= (? - 1) * ? + 1 AND row_index <= ? * ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageIndex);
            statement.setInt(2, pageSize);
            statement.setInt(3, pageIndex);
            statement.setInt(4, pageSize);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setId(result.getInt("id"));
                order.setUserId(result.getInt("userId"));
                order.setCustomerId(result.getInt("customerId"));
                order.setStateId(result.getInt("stateId"));
                order.setCreated_at(result.getTimestamp("created_at"));
                order.setUpdated_at(result.getTimestamp("updated_at"));
                ArrayList<OrderDetail> orderDetails = orderDetailDB.findByOrderId(order.getId());
                order.setOrderDetails(orderDetails);
                OrderState orderState = orderStateDB.get(order.getStateId());
                order.setState(orderState);
                Customer customer = customerDB.get(order.getCustomerId());
                order.setCustomer(customer);
                orders.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    @Override
    public ArrayList<Order> list() {
        ArrayList<Order> orders = new ArrayList<>();
        OrderDetailDBContext orderDetailDB = new OrderDetailDBContext();
        OrderStateDBContext orderStateDB = new OrderStateDBContext();
        CustomerDBContext customerDB = new CustomerDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[customerId]\n"
                + "      ,[stateId]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [order]\n"
                + " ORDER BY id DESC";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setId(result.getInt("id"));
                order.setUserId(result.getInt("userId"));
                order.setCustomerId(result.getInt("customerId"));
                order.setStateId(result.getInt("stateId"));
                order.setCreated_at(result.getTimestamp("created_at"));
                order.setUpdated_at(result.getTimestamp("updated_at"));
                ArrayList<OrderDetail> orderDetails = orderDetailDB.findByOrderId(order.getId());
                order.setOrderDetails(orderDetails);
                OrderState orderState = orderStateDB.get(order.getStateId());
                order.setState(orderState);
                Customer customer = customerDB.get(order.getCustomerId());
                order.setCustomer(customer);
                orders.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    @Override
    public Order get(int id) {
        OrderDetailDBContext orderDetailDB = new OrderDetailDBContext();
        OrderStateDBContext orderStateDB = new OrderStateDBContext();
        CustomerDBContext customerDB = new CustomerDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[customerId]\n"
                + "      ,[stateId]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [order] \n"
                + " WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setId(result.getInt("id"));
                order.setUserId(result.getInt("userId"));
                order.setCustomerId(result.getInt("customerId"));
                order.setStateId(result.getInt("stateId"));
                order.setCreated_at(result.getTimestamp("created_at"));
                order.setUpdated_at(result.getTimestamp("updated_at"));
                ArrayList<OrderDetail> orderDetails = orderDetailDB.findByOrderId(order.getId());
                order.setOrderDetails(orderDetails);
                OrderState orderState = orderStateDB.get(order.getStateId());
                order.setState(orderState);
                Customer customer = customerDB.get(order.getCustomerId());
                order.setCustomer(customer);
                return order;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Order getLast() {
        OrderDetailDBContext orderDetailDB = new OrderDetailDBContext();
        OrderStateDBContext orderStateDB = new OrderStateDBContext();
        CustomerDBContext customerDB = new CustomerDBContext();
        String sql = "SELECT TOP 1 [id]\n"
                + "      ,[userId]\n"
                + "      ,[customerId]\n"
                + "      ,[stateId]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [order] ORDER BY id DESC";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Order order = new Order();
                order.setId(result.getInt("id"));
                order.setUserId(result.getInt("userId"));
                order.setCustomerId(result.getInt("customerId"));
                order.setStateId(result.getInt("stateId"));
                order.setCreated_at(result.getTimestamp("created_at"));
                order.setUpdated_at(result.getTimestamp("updated_at"));
                ArrayList<OrderDetail> orderDetails = orderDetailDB.findByOrderId(order.getId());
                order.setOrderDetails(orderDetails);
                OrderState orderState = orderStateDB.get(order.getStateId());
                order.setState(orderState);
                Customer customer = customerDB.get(order.getCustomerId());
                order.setCustomer(customer);
                return order;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Order insert(Order model) {
        String sql = "INSERT INTO [order]\n"
                + "           ([userId]\n"
                + "           ,[customerId]\n"
                + "           ,[stateId]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES(?,?,?,?,?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getUserId());
            statement.setInt(2, model.getCustomerId());
            statement.setInt(3, model.getStateId());
            statement.setTimestamp(4, model.getCreated_at());
            statement.setTimestamp(5, model.getUpdated_at());
            statement.executeUpdate();
            return getLast();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }
    
     public Order insertNotUser(Order model) {
        String sql = "INSERT INTO [order]\n"
                + "           ([customerId]\n"
                + "           ,[stateId]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES(?,?,?,?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getCustomerId());
            statement.setInt(2, model.getStateId());
            statement.setTimestamp(3, model.getCreated_at());
            statement.setTimestamp(4, model.getUpdated_at());
            statement.executeUpdate();
            return getLast();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    @Override
    public void update(Order model) {
        String sql = "UPDATE [order]\n"
                + "        SET [stateId]=?\n"
                + "           ,[updated_at]=?\n"
                + "     WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getStateId());
            statement.setTimestamp(2, model.getUpdated_at());
            statement.setInt(3, model.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    @Override
    public void delete(int id) {
        try {
            String sql = "DELETE FROM [order]\n"
                    + "WHERE id = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getSize() {
         String sql = "SELECT COUNT([order].[id]) as 'size' FROM [order]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int size = result.getInt("size");
                return size;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

}
