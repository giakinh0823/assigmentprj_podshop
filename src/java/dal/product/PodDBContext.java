/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal.product;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.product.Category;
import model.product.Group;
import model.product.Image;
import model.product.Pod;
import model.product.State;
import utils.FileManage;

/**
 *
 * @author giaki
 */
public class PodDBContext extends DBContext<Pod> {

    @Override
    public ArrayList<Pod> list() {
        ArrayList<Pod> pods = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        ImageDBContext imageDB = new ImageDBContext();
        StateDBContext stateDB = new StateDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[brand]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[content]\n"
                + "      ,[isSale]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[categoryId]\n"
                + "      ,[state]\n"
                + "  FROM [pod]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Pod pod = new Pod();
                pod.setId(result.getInt("id"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("created_at"));
                pod.setUpdated_at(result.getTimestamp("updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                Category category = categoryDB.get(pod.getCategoryId());
                pod.setCategory(category);
                State state = stateDB.get(pod.getStateId());
                pod.setState(state);
                pods.add(pod);
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pods;
    }

    @Override
    public Pod get(int id) {
        CategoryDBContext categoryDB = new CategoryDBContext();
        ImageDBContext imageDB = new ImageDBContext();
        StateDBContext stateDB = new StateDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[brand]\n"
                + "      ,[price]\n"
                + "      ,[quantity]\n"
                + "      ,[description]\n"
                + "      ,[content]\n"
                + "      ,[isSale]\n"
                + "      ,[discount]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[categoryId]\n"
                + "      ,[state]\n"
                + "  FROM [pod]\n"
                + " WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Pod pod = new Pod();
                pod.setId(result.getInt("id"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("created_at"));
                pod.setCreated_at(result.getTimestamp("created_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                Category category = categoryDB.get(pod.getCategoryId());
                pod.setCategory(category);
                State state = stateDB.get(pod.getStateId());
                pod.setState(state);
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                return pod;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Pod insert(Pod model) {
        String sql = "INSERT INTO [pod]\n"
                + "           ([name]\n"
                + "           ,[brand]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[description]\n"
                + "           ,[content]\n"
                + "           ,[isSale]\n"
                + "           ,[discount]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[categoryId]\n"
                + "           ,[state])\n"
                + "     VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, model.getName());
            statement.setString(2, model.getBrand());
            statement.setDouble(3, model.getPrice());
            statement.setInt(4, model.getQuantity());
            statement.setString(5, model.getDescription());
            statement.setString(6, model.getContent());
            statement.setBoolean(7, model.isIsSale());
            statement.setInt(8, model.getDiscount());
            statement.setTimestamp(9, model.getCreated_at());
            statement.setTimestamp(10, model.getUpdated_at());
            statement.setInt(11, model.getCategoryId());
            statement.setInt(12, model.getStateId());
            statement.executeUpdate();
            ArrayList<Pod> pods = list();
            return pods.get(pods.size() - 1);
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    @Override
    public void update(Pod model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public void deleteByCategory(int id) {
        try {
            String sql = "DELETE FROM [pod]\n"
                    + "WHERE categoryId = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void delete(int id) {
        ImageDBContext imageDB = new ImageDBContext();
        imageDB.deleteByPod(id);
        try {
            String sql = "DELETE FROM [pod]\n"
                    + "WHERE id = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
