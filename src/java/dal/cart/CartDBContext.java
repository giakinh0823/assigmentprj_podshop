/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal.cart;

import dal.DBContext;
import dal.product.CategoryDBContext;
import dal.product.GroupDBContext;
import dal.product.ImageDBContext;
import dal.product.PodDBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.auth.Permission;
import model.auth.User;
import model.cart.Cart;
import model.product.Category;
import model.product.Group;
import model.product.Image;
import model.product.Pod;

/**
 *
 * @author giaki
 */
public class CartDBContext extends DBContext<Cart> {

    public ArrayList<Cart> findByUser(int userId) {
        ArrayList<Cart> carts = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        ImageDBContext imageDB = new ImageDBContext();
        PodDBContext podDB = new PodDBContext();
        String sql = "SELECT [cart].[id]\n"
                + "      ,[cart].[userId]\n"
                + "      ,[cart].[podId]\n"
                + "      ,[cart].[quantity]\n"
                + "      ,[cart].[created_at]\n"
                + "      ,[cart].[updated_at]\n"
                + "	 ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] as 'pod_created_at' \n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[user].[username]\n"
                + "      ,[user].[password]\n"
                + "      ,[user].[first_name]\n"
                + "      ,[user].[last_name]\n"
                + "      ,[user].[birthday]\n"
                + "      ,[user].[email]\n"
                + "      ,[user].[phone]\n"
                + "      ,[user].[gender]\n"
                + "      ,[user].[is_super]\n"
                + "      ,[user].[is_active]\n"
                + "      ,[user].[permission]\n"
                + "      ,[user].[avatar]\n"
                + "      ,[user].[created_at] as 'user_created_at'\n"
                + "      ,[user].[updated_at] as 'user_updated_at'\n"
                + "	  ,[permission].[id] as 'permissionId'\n"
                + "      ,[permission].[name] as 'permissionName'\n"
                + " FROM [cart]\n"
                + " INNER JOIN [pod] ON [pod].[id] = [cart].[podId]\n"
                + " INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + " INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + " LEFT JOIN  [user] ON [user].[id] = [cart].[userId]\n"
                + " INNER JOIN [user_permission] ON [user_permission].[userId] = [user].[id]\n"
                + " INNER JOIN [permission]  ON [permission].[id] = [user_permission].[permissionId]\n"
                + " WHERE [cart].[userId] = ?";
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

                User user = new User();
                user.setId(result.getInt("userId"));
                user.setUsername(result.getString("username"));
                user.setPassword(result.getString("password"));
                user.setEmail(result.getString("email"));
                user.setFirst_name(result.getString("first_name"));
                user.setLast_name(result.getString("last_name"));
                user.setBirthday(result.getDate("birthday"));
                user.setPhone(result.getString("phone"));
                user.setGender(result.getBoolean("gender"));
                user.setPermission(result.getString("permission"));
                user.setIs_active(result.getBoolean("is_active"));
                user.setIs_super(result.getBoolean("is_super"));
                user.setCreated_at(result.getTimestamp("created_at"));
                user.setUpdated_at(result.getTimestamp("updated_at"));
                user.setAvatar(result.getString("avatar"));

                Permission permission = new Permission();
                permission.setId(result.getInt("permissionId"));
                permission.setName(result.getString("permissionName"));
                user.setUser_permission(permission);

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                
                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));
                
                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);
                
                cart.setPod(pod);
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
        ImageDBContext imageDB = new ImageDBContext();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [cart].[id]\n"
                + "      ,[cart].[userId]\n"
                + "      ,[cart].[podId]\n"
                + "      ,[cart].[quantity]\n"
                + "      ,[cart].[created_at]\n"
                + "      ,[cart].[updated_at]\n"
                + "	 ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] as 'pod_created_at' \n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[user].[username]\n"
                + "      ,[user].[password]\n"
                + "      ,[user].[first_name]\n"
                + "      ,[user].[last_name]\n"
                + "      ,[user].[birthday]\n"
                + "      ,[user].[email]\n"
                + "      ,[user].[phone]\n"
                + "      ,[user].[gender]\n"
                + "      ,[user].[is_super]\n"
                + "      ,[user].[is_active]\n"
                + "      ,[user].[permission]\n"
                + "      ,[user].[avatar]\n"
                + "      ,[user].[created_at] as 'user_created_at'\n"
                + "      ,[user].[updated_at] as 'user_updated_at'\n"
                + "	  ,[permission].[id] as 'permissionId'\n"
                + "      ,[permission].[name] as 'permissionName'\n"
                + " FROM [cart]\n"
                + " INNER JOIN [pod] ON [pod].[id] = [cart].[podId]\n"
                + " INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + " INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + " LEFT JOIN  [user] ON [user].[id] = [cart].[userId]\n"
                + " INNER JOIN [user_permission] ON [user_permission].[userId] = [user].[id]\n"
                + " INNER JOIN [permission]  ON [permission].[id] = [user_permission].[permissionId]\n";
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

                User user = new User();
                user.setId(result.getInt("userId"));
                user.setUsername(result.getString("username"));
                user.setPassword(result.getString("password"));
                user.setEmail(result.getString("email"));
                user.setFirst_name(result.getString("first_name"));
                user.setLast_name(result.getString("last_name"));
                user.setBirthday(result.getDate("birthday"));
                user.setPhone(result.getString("phone"));
                user.setGender(result.getBoolean("gender"));
                user.setPermission(result.getString("permission"));
                user.setIs_active(result.getBoolean("is_active"));
                user.setIs_super(result.getBoolean("is_super"));
                user.setCreated_at(result.getTimestamp("created_at"));
                user.setUpdated_at(result.getTimestamp("updated_at"));
                user.setAvatar(result.getString("avatar"));

                Permission permission = new Permission();
                permission.setId(result.getInt("permissionId"));
                permission.setName(result.getString("permissionName"));
                user.setUser_permission(permission);

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                
                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));
                
                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);
                
                cart.setPod(pod);
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
         ImageDBContext imageDB = new ImageDBContext();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [cart].[id]\n"
                + "      ,[cart].[userId]\n"
                + "      ,[cart].[podId]\n"
                + "      ,[cart].[quantity]\n"
                + "      ,[cart].[created_at]\n"
                + "      ,[cart].[updated_at]\n"
                + "	 ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] as 'pod_created_at' \n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[user].[username]\n"
                + "      ,[user].[password]\n"
                + "      ,[user].[first_name]\n"
                + "      ,[user].[last_name]\n"
                + "      ,[user].[birthday]\n"
                + "      ,[user].[email]\n"
                + "      ,[user].[phone]\n"
                + "      ,[user].[gender]\n"
                + "      ,[user].[is_super]\n"
                + "      ,[user].[is_active]\n"
                + "      ,[user].[permission]\n"
                + "      ,[user].[avatar]\n"
                + "      ,[user].[created_at] as 'user_created_at'\n"
                + "      ,[user].[updated_at] as 'user_updated_at'\n"
                + "	  ,[permission].[id] as 'permissionId'\n"
                + "      ,[permission].[name] as 'permissionName'\n"
                + " FROM [cart]\n"
                + " INNER JOIN [pod] ON [pod].[id] = [cart].[podId]\n"
                + " INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + " INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + " LEFT JOIN  [user] ON [user].[id] = [cart].[userId]\n"
                + " INNER JOIN [user_permission] ON [user_permission].[userId] = [user].[id]\n"
                + " INNER JOIN [permission]  ON [permission].[id] = [user_permission].[permissionId]\n"
                + " WHERE [cart].[id] = ?";
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

                User user = new User();
                user.setId(result.getInt("userId"));
                user.setUsername(result.getString("username"));
                user.setPassword(result.getString("password"));
                user.setEmail(result.getString("email"));
                user.setFirst_name(result.getString("first_name"));
                user.setLast_name(result.getString("last_name"));
                user.setBirthday(result.getDate("birthday"));
                user.setPhone(result.getString("phone"));
                user.setGender(result.getBoolean("gender"));
                user.setPermission(result.getString("permission"));
                user.setIs_active(result.getBoolean("is_active"));
                user.setIs_super(result.getBoolean("is_super"));
                user.setCreated_at(result.getTimestamp("created_at"));
                user.setUpdated_at(result.getTimestamp("updated_at"));
                user.setAvatar(result.getString("avatar"));

                Permission permission = new Permission();
                permission.setId(result.getInt("permissionId"));
                permission.setName(result.getString("permissionName"));
                user.setUser_permission(permission);

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                
                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));
                
                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);
                
                cart.setPod(pod);
                return cart;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Cart findByPodUser(int podId, int userId) {
        ArrayList<Cart> carts = new ArrayList<>();
         ImageDBContext imageDB = new ImageDBContext();
        CategoryDBContext categoryDB = new CategoryDBContext();
        String sql = "SELECT [cart].[id]\n"
                + "      ,[cart].[userId]\n"
                + "      ,[cart].[podId]\n"
                + "      ,[cart].[quantity]\n"
                + "      ,[cart].[created_at]\n"
                + "      ,[cart].[updated_at]\n"
                + "	 ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity] as 'pod_quantity'\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] as 'pod_created_at' \n"
                + "      ,[pod].[updated_at] as 'pod_updated_at'\n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[user].[username]\n"
                + "      ,[user].[password]\n"
                + "      ,[user].[first_name]\n"
                + "      ,[user].[last_name]\n"
                + "      ,[user].[birthday]\n"
                + "      ,[user].[email]\n"
                + "      ,[user].[phone]\n"
                + "      ,[user].[gender]\n"
                + "      ,[user].[is_super]\n"
                + "      ,[user].[is_active]\n"
                + "      ,[user].[permission]\n"
                + "      ,[user].[avatar]\n"
                + "      ,[user].[created_at] as 'user_created_at'\n"
                + "      ,[user].[updated_at] as 'user_updated_at'\n"
                + "	  ,[permission].[id] as 'permissionId'\n"
                + "      ,[permission].[name] as 'permissionName'\n"
                + " FROM [cart]\n"
                + " INNER JOIN [pod] ON [pod].[id] = [cart].[podId]\n"
                + " INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + " INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + " LEFT JOIN  [user] ON [user].[id] = [cart].[userId]\n"
                + " INNER JOIN [user_permission] ON [user_permission].[userId] = [user].[id]\n"
                + " INNER JOIN [permission]  ON [permission].[id] = [user_permission].[permissionId]\n"
                + " WHERE [cart].[podId] = ? and [cart].[userId] = ?";
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

                User user = new User();
                user.setId(result.getInt("userId"));
                user.setUsername(result.getString("username"));
                user.setPassword(result.getString("password"));
                user.setEmail(result.getString("email"));
                user.setFirst_name(result.getString("first_name"));
                user.setLast_name(result.getString("last_name"));
                user.setBirthday(result.getDate("birthday"));
                user.setPhone(result.getString("phone"));
                user.setGender(result.getBoolean("gender"));
                user.setPermission(result.getString("permission"));
                user.setIs_active(result.getBoolean("is_active"));
                user.setIs_super(result.getBoolean("is_super"));
                user.setCreated_at(result.getTimestamp("created_at"));
                user.setUpdated_at(result.getTimestamp("updated_at"));
                user.setAvatar(result.getString("avatar"));

                Permission permission = new Permission();
                permission.setId(result.getInt("permissionId"));
                permission.setName(result.getString("permissionName"));
                user.setUser_permission(permission);

                Pod pod = new Pod();
                pod.setId(result.getInt("podId"));
                pod.setName(result.getString("name"));
                pod.setBrand(result.getString("brand"));
                pod.setPrice(result.getDouble("price"));
                pod.setQuantity(result.getInt("pod_quantity"));
                pod.setDescription(result.getString("description"));
                pod.setContent(result.getString("content"));
                pod.setIsSale(result.getBoolean("isSale"));
                pod.setDiscount(result.getInt("discount"));
                pod.setCreated_at(result.getTimestamp("pod_created_at"));
                pod.setUpdated_at(result.getTimestamp("pod_updated_at"));
                pod.setCategoryId(result.getInt("categoryId"));
                pod.setStateId(result.getInt("state"));
                
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                
                Group group = new Group();
                group.setId(result.getInt("groupId"));
                group.setName(result.getString("groupName"));
                
                Category category = new Category();
                category.setId(pod.getId());
                category.setName(result.getString("categoryName"));
                category.setGroup(group);
                pod.setCategory(category);
                
                cart.setPod(pod);
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
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES(?,?,?,?,?)";
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
                + "        SET [quantity] = ?\n"
                + "           ,[updated_at] = ?\n"
                + "     WHERE id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, model.getQuantity());
            statement.setTimestamp(2, model.getUpdated_at());
            statement.setInt(3, model.getId());
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
