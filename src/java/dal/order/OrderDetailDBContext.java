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
import model.product.Category;
import model.product.Group;
import model.product.Pod;
import model.product.State;

/**
 *
 * @author giaki
 */
public class OrderDetailDBContext extends DBContext<OrderDetail> {

    public ArrayList<OrderDetail> findByOrderId(int orderId) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        String sql = "SELECT [order_detail].[id]\n"
                + "      ,[order_detail].[quantity]\n"
                + "      ,[order_detail].[price]\n"
                + "      ,[order_detail].[discount]\n"
                + "      ,[order_detail].[created_at]\n"
                + "      ,[order_detail].[updated_at]\n"
                + "      ,[order_detail].[podId]\n"
                + "      ,[order_detail].[orderId]\n"
                + "	  ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price] as 'pod_price'\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount] as 'pod_discount'\n"
                + "      ,[pod].[created_at] as 'pod_created_at'\n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "      ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "      ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] DESC) as row_index\n"
                + "  FROM [order_detail]\n"
                + "  INNER JOIN [pod] ON [pod].[id] = [order_detail].[podId]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " WHERE [order_detail].[orderId] = ?";
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
                orderDetail.setCreated_at(result.getTimestamp("created_at"));
                orderDetail.setUpdated_at(result.getTimestamp("updated_at"));

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("pod_price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("pod_discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));

                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));

                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);

                State state = new State();
                state.setId(result.getInt("state"));
                state.setName(result.getString("stateName"));
                pod.setState(state);

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
        String sql = "SELECT [order_detail].[id]\n"
                + "      ,[order_detail].[quantity]\n"
                + "      ,[order_detail].[price]\n"
                + "      ,[order_detail].[discount]\n"
                + "      ,[order_detail].[created_at]\n"
                + "      ,[order_detail].[updated_at]\n"
                + "      ,[order_detail].[podId]\n"
                + "      ,[order_detail].[orderId]\n"
                + "	  ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price] as 'pod_price'\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount] as 'pod_discount'\n"
                + "      ,[pod].[created_at] as 'pod_created_at'\n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "      ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "      ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] DESC) as row_index\n"
                + "  FROM [order_detail]\n"
                + "  INNER JOIN [pod] ON [pod].[id] = [order_detail].[podId]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]";
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
                orderDetail.setCreated_at(result.getTimestamp("created_at"));
                orderDetail.setUpdated_at(result.getTimestamp("updated_at"));

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("pod_price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("pod_discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));

                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));

                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);

                State state = new State();
                state.setId(result.getInt("state"));
                state.setName(result.getString("stateName"));
                pod.setState(state);

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
        String sql = "SELECT [order_detail].[id]\n"
                + "      ,[order_detail].[quantity]\n"
                + "      ,[order_detail].[price]\n"
                + "      ,[order_detail].[discount]\n"
                + "      ,[order_detail].[created_at]\n"
                + "      ,[order_detail].[updated_at]\n"
                + "      ,[order_detail].[podId]\n"
                + "      ,[order_detail].[orderId]\n"
                + "	  ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price] as 'pod_price'\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount] as 'pod_discount'\n"
                + "      ,[pod].[created_at] as 'pod_created_at'\n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "      ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "      ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] DESC) as row_index\n"
                + "  FROM [order_detail]\n"
                + "  INNER JOIN [pod] ON [pod].[id] = [order_detail].[podId]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " WHERE [order_detail].[id] = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(result.getInt("id"));
                orderDetail.setOrderId(result.getInt("orderId"));
                orderDetail.setPodId(result.getInt("podId"));
                orderDetail.setQuantity(result.getInt("quantity"));
                orderDetail.setDiscount(result.getInt("discount"));
                orderDetail.setPrice(result.getDouble("price"));
                orderDetail.setCreated_at(result.getTimestamp("created_at"));
                orderDetail.setUpdated_at(result.getTimestamp("updated_at"));

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("pod_price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("pod_discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));

                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));

                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);

                State state = new State();
                state.setId(result.getInt("state"));
                state.setName(result.getString("stateName"));
                pod.setState(state);

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
        String sql = "SELECT TOP 1 [order_detail].[id]\n"
                + "      ,[order_detail].[quantity]\n"
                + "      ,[order_detail].[price]\n"
                + "      ,[order_detail].[discount]\n"
                + "      ,[order_detail].[created_at]\n"
                + "      ,[order_detail].[updated_at]\n"
                + "      ,[order_detail].[podId]\n"
                + "      ,[order_detail].[orderId]\n"
                + "	 ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price] as 'pod_price'\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount] as 'pod_discount'\n"
                + "      ,[pod].[created_at] as 'pod_created_at'\n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "      ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "      ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] DESC) as row_index\n"
                + "  FROM [order_detail]\n"
                + "  INNER JOIN [pod] ON [pod].[id] = [order_detail].[podId]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + "  ORDER BY [order_detail].[id] DESC";
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
                orderDetail.setCreated_at(result.getTimestamp("created_at"));
                orderDetail.setUpdated_at(result.getTimestamp("updated_at"));

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("pod_price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("pod_discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));

                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));

                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);

                State state = new State();
                state.setId(result.getInt("state"));
                state.setName(result.getString("stateName"));
                pod.setState(state);
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
            return null;
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

    public void deleteByPod(int podId) {
        try {
            String sql = "DELETE FROM [order_detail]\n"
                    + "WHERE podId = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, podId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
