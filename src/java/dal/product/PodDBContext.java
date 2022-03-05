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

    public ArrayList<Pod> getPods(String search, int idGroup, int idCategory, int pageIndex, int pageSize) {
        ArrayList<Pod> pods = new ArrayList<>();
        ImageDBContext imageDB = new ImageDBContext();
        String sql = "SELECT * FROM (SELECT [pod].[id]\n"
                + "      ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity]\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] \n"
                + "      ,[pod].[updated_at] \n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] ASC) as row_index\n"
                + "  FROM [pod]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " WHERE [pod].[name] LIKE ? ";
        if (idGroup != -1) {
            sql += " AND [group].[id] = ? ";
            if (idCategory != -1) {
                sql += " AND [category].[id] = ? ";
            }
        } else {
            if (idCategory != -1) {
                sql += " AND [category].[id] = ? ";
            }
        }

        sql += ") [pod] \n"
                + " WHERE row_index >= (? - 1) * ? + 1 AND row_index <= ? * ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + search + "%");
            if (idGroup != -1) {
                statement.setInt(2, idGroup);
                if (idCategory != -1) {
                    statement.setInt(3, idCategory);
                    statement.setInt(4, pageIndex);
                    statement.setInt(5, pageSize);
                    statement.setInt(6, pageIndex);
                    statement.setInt(7, pageSize);
                } else {
                    statement.setInt(3, pageIndex);
                    statement.setInt(4, pageSize);
                    statement.setInt(5, pageIndex);
                    statement.setInt(6, pageSize);
                }
            } else {
                if (idCategory != -1) {
                    statement.setInt(2, idCategory);
                    statement.setInt(3, pageIndex);
                    statement.setInt(4, pageSize);
                    statement.setInt(5, pageIndex);
                    statement.setInt(6, pageSize);
                } else {
                    statement.setInt(2, pageIndex);
                    statement.setInt(3, pageSize);
                    statement.setInt(4, pageIndex);
                    statement.setInt(5, pageSize);
                }
            }
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
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                pods.add(pod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pods;
    }

    public int getSizeFromSearch(String search, int idGroup, int idCategory) {
        String sql = "SELECT COUNT([pod].[id]) as 'size' \n"
                + "  FROM [pod] INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + " WHERE [pod].[name] LIKE ? ";
        if (idGroup != -1) {
            sql += " AND [group].[id] = ?";
            if (idCategory != -1) {
                sql += " AND [category].[id] = ?";
            }
        } else {
            if (idCategory != -1) {
                sql += " AND [category].[id] = ?";
            }
        }
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + search + "%");
            if (idGroup != -1) {
                statement.setInt(2, idGroup);
                if (idCategory != -1) {
                    sql += " AND [category].[id] = ? ";
                    statement.setInt(3, idCategory);
                }
            } else {
                if (idCategory != -1) {
                    sql += " [category].[id] = ? ";
                    statement.setInt(2, idCategory);
                }
            }
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                int size = result.getInt("size");
                return size;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Pod> findByCategory(int categoryId, int pageIndex, int pageSize) {
        ArrayList<Pod> pods = new ArrayList<>();
        ImageDBContext imageDB = new ImageDBContext();
        String sql = "SELECT * FROM ([pod].[id]\n"
                + "      ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity]\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] \n"
                + "      ,[pod].[updated_at] \n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[state].[name] as 'stateName'\n"
                + "      ,ROW_NUMBER() OVER (ORDER BY [pod].[id] ASC) as row_index\n"
                + "  FROM [pod]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " WHERE [pod].[categoryId] = ?) [pod]\n"
                + " WHERE row_index >= (? - 1) * ? + 1 AND row_index <= ? * ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryId);
            statement.setInt(2, pageIndex);
            statement.setInt(3, pageSize);
            statement.setInt(4, pageIndex);
            statement.setInt(5, pageSize);
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
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                pods.add(pod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pods;
    }

    @Override
    public ArrayList<Pod> list() {
        ArrayList<Pod> pods = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        ImageDBContext imageDB = new ImageDBContext();
        String sql = "SELECT [pod].[id]\n"
                + "      ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity]\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] \n"
                + "      ,[pod].[updated_at] \n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	  ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	  ,[state].[name] as 'stateName'\n"
                + "  FROM [pod]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]";
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
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);
                pods.add(pod);
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
        String sql = "SELECT [pod].[id]\n"
                + "      ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity]\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] \n"
                + "      ,[pod].[updated_at] \n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	  ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	  ,[state].[name] as 'stateName'\n"
                + "  FROM [pod]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " WHERE [pod].[id] = ?";
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
                pod.setUpdated_at(result.getTimestamp("updated_at"));
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
                ArrayList<Image> images = imageDB.findByPod(pod.getId());
                pod.setImages(images);

                return pod;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PodDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Pod getLast() {
        ArrayList<Pod> pods = new ArrayList<>();
        CategoryDBContext categoryDB = new CategoryDBContext();
        ImageDBContext imageDB = new ImageDBContext();
        StateDBContext stateDB = new StateDBContext();
        String sql = "SELECT TOP 1 [pod].[id]\n"
                + "      ,[pod].[name]\n"
                + "      ,[pod].[brand]\n"
                + "      ,[pod].[price]\n"
                + "      ,[pod].[quantity]\n"
                + "      ,[pod].[description]\n"
                + "      ,[pod].[content]\n"
                + "      ,[pod].[isSale]\n"
                + "      ,[pod].[discount]\n"
                + "      ,[pod].[created_at] \n"
                + "      ,[pod].[updated_at] \n"
                + "      ,[pod].[categoryId]\n"
                + "      ,[pod].[state]\n"
                + "	 ,[category].[name] as 'categoryName'\n"
                + "      ,[group].[id] as 'groupId'\n"
                + "      ,[group].[name] as 'groupName'\n"
                + "	 ,[state].[name] as 'stateName'\n"
                + "  FROM [pod]\n"
                + "  INNER JOIN [category] ON [category].[id] = [pod].[categoryId]\n"
                + "  INNER JOIN [group] ON [group].[id] = [category].[groupId]\n"
                + "  INNER JOIN [state] ON [state].[id] = [pod].[state]\n"
                + " ORDER BY id DESC";
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
            return getLast();
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
        String sql = "UPDATE [pod]\n"
                + "      SET  [name] = ?\n"
                + "           ,[brand] = ?\n"
                + "           ,[price] = ?\n"
                + "           ,[quantity] = ?\n"
                + "           ,[description] = ?\n"
                + "           ,[content] = ?\n"
                + "           ,[isSale] = ?\n"
                + "           ,[discount] = ?\n"
                + "           ,[created_at] = ?\n"
                + "           ,[updated_at] = ?\n"
                + "           ,[categoryId] = ?\n"
                + "           ,[state] = ?\n"
                + " WHERE id = ?";
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
            statement.setInt(13, model.getId());
            statement.executeUpdate();
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

    public int getSize() {
        String sql = "SELECT COUNT([pod].[id]) as 'size'  FROM [pod]";
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
