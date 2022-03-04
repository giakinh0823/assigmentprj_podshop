/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal.cart;

import dal.DBContext;
import dal.product.CategoryDBContext;
import dal.product.GroupDBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.cart.Cart;
import model.product.Category;
import model.product.Group;

/**
 *
 * @author giaki
 */
public class CartDBContext extends DBContext<Cart> {

    public ArrayList<Cart> findByUser(int userId) {
        ArrayList<Cart> carts = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[podId]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [cart]\n"
                + " WHERE userId = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Cart cart = new Cart();
                cart.setId(result.getInt("id"));
                cart.setPodId(result.getInt("podId"));
                cart.setQuantity(result.getInt("quantity"));
                cart.setUpdated_at(result.getTimestamp("updated_at"));
                cart.setCreated_at(result.getTimestamp("created_at"));
                carts.add(cart);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return carts;
    }

    @Override
    public ArrayList<Cart> list() {
        ArrayList<Cart> carts = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[podId]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [cart]";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Cart cart = new Cart();
                cart.setId(result.getInt("id"));
                cart.setPodId(result.getInt("podId"));
                cart.setQuantity(result.getInt("quantity"));
                cart.setUpdated_at(result.getTimestamp("updated_at"));
                cart.setCreated_at(result.getTimestamp("created_at"));
                carts.add(cart);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return carts;
    }

    @Override
    public Cart get(int id) {
        ArrayList<Cart> carts = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[podId]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [cart]\n"
                + " WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Cart cart = new Cart();
                cart.setId(result.getInt("id"));
                cart.setPodId(result.getInt("podId"));
                cart.setQuantity(result.getInt("quantity"));
                cart.setUpdated_at(result.getTimestamp("updated_at"));
                cart.setCreated_at(result.getTimestamp("created_at"));
                return cart;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    
    public Cart findByPodUser(int podId, int userId) {
        ArrayList<Cart> carts = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [id]\n"
                + "      ,[userId]\n"
                + "      ,[podId]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [cart]\n"
                + " WHERE podId = ? and userId = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, podId);
            statement.setInt(2, userId);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Cart cart = new Cart();
                cart.setId(result.getInt("id"));
                cart.setPodId(result.getInt("podId"));
                cart.setQuantity(result.getInt("quantity"));
                cart.setUpdated_at(result.getTimestamp("updated_at"));
                cart.setCreated_at(result.getTimestamp("created_at"));
                return cart;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Cart insert(Cart model) {
        String sql = "INSERT INTO [cart]\n"
                + "           ([userId]\n"
                + "           ,[podId]\n"
                + "           ,[quantity]\n"
                + "           ,[created_at])\n"
                + "           ,[updated_at])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getUserId());
            statement.setInt(2, model.getPodId());
            statement.setInt(3, model.getQuantity());
            statement.setTimestamp(4, model.getCreated_at());
            statement.setTimestamp(5, model.getUpdated_at());
            statement.executeUpdate();
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return null;
    }

    @Override
    public void update(Cart model) {
        String sql = "UPDATE [cart]\n"
                + "        SET [userId] = ?\n"
                + "           ,[podId] = ?\n"
                + "           ,[quantity] = ?\n"
                + "           ,[updated_at] = ?\n"
                + "     WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getUserId());
            statement.setInt(2, model.getPodId());
            statement.setInt(3, model.getQuantity());
            statement.setTimestamp(4, model.getUpdated_at());
            statement.setInt(1, model.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void deleteByPod(int podId, int userId) {
        try {
            String sql = "DELETE FROM [cart]\n"
                    + "WHERE podId = ? and userId = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, podId);
            statement.setInt(2, userId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void delete(int id) {
        try {
            String sql = "DELETE FROM [cart]\n"
                    + "WHERE id = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
