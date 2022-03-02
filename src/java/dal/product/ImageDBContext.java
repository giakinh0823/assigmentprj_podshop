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
import model.product.Group;
import model.product.Image;

/**
 *
 * @author giaki
 */
public class ImageDBContext extends DBContext<Image> {
    
    public ArrayList<Image> findByPod(int podId) {
        ArrayList<Image> images = new ArrayList<>();
        String sql = "SELECT id, image, podId FROM [image]\n"
                + " WHERE podId = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, podId);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Image image = new Image();
                image.setId(result.getInt("id"));
                image.setImage(result.getString("image"));
                image.setPodId(result.getInt("podId"));
                images.add(image);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return images;
    }

    @Override
    public ArrayList<Image> list() {
        ArrayList<Image> images = new ArrayList<>();
        String sql = "SELECT id, image, podId FROM [image]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Image image = new Image();
                image.setId(result.getInt("id"));
                image.setImage(result.getString("image"));
                image.setPodId(result.getInt("podId"));
                images.add(image);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return images;
    }

    @Override
    public Image get(int id) {
        ArrayList<Image> images = new ArrayList<>();
        String sql = "SELECT id, image, podId FROM [image]\n"
                + " WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Image image = new Image();
                image.setId(result.getInt("id"));
                image.setImage(result.getString("image"));
                image.setPodId(result.getInt("podId"));
                return image;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Image insert(Image model) {
        String sql = "INSERT INTO [image]\n"
                + "           ([image]\n"
                + "           ,[podId])\n"
                + "     VALUES(?, ?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, model.getImage());
            statement.setInt(2, model.getPodId());
            statement.executeUpdate();
            ArrayList<Image> images = list();
            return images.get(images.size() - 1);
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    @Override
    public void update(Image model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public void deleteByPod(int id) {
        try {
            String sql = "DELETE FROM [image]\n"
                    + "WHERE podId = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id) {
        try {
            String sql = "DELETE FROM [image]\n"
                    + "WHERE id = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ImageDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
