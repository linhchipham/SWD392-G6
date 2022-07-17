/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Post;

/**
 *
 * @author LOVE
 */
public class postDAO  {
      Connection conn;
    PreparedStatement pr;
    ResultSet rs;
    
    //get all post
    public ArrayList<Post> getPosts(){
        ArrayList<Post> posts = new ArrayList<>();
          try {
              String sql = "Select id,title, detail, author,date from Post";
              conn = DBcontext.getConnection();
              pr = conn.prepareStatement(sql);
              ResultSet rs = pr.executeQuery();
              while(rs.next()){
                  Post p = new Post();
                  p.setId(rs.getInt("id"));
                  p.setTitle(rs.getString("title"));
                  p.setDetail(rs.getString("detail"));
                  p.setAuthor(rs.getString("author"));
                  p.setDate(rs.getString("date"));
                  posts.add(p);
              }
              return posts;
          } catch (SQLException ex) {
              Logger.getLogger(postDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
          return null;
    }
    //search by id
    public Post getPost(int id){
         try {
              String sql = "Select id,title, detail, author,date from Post\n"
                      + "Where id = ?";
              conn = DBcontext.getConnection();
              pr = conn.prepareStatement(sql);
              pr.setInt(1, id);
              ResultSet rs = pr.executeQuery();
              if(rs.next()){
                  Post p = new Post();
                  p.setId(rs.getInt("id"));
                  p.setTitle(rs.getString("title"));
                  p.setDetail(rs.getString("detail"));
                  p.setAuthor(rs.getString("author"));
                  p.setDate(rs.getString("date"));
                  return p;
              }
          } catch (SQLException ex) {
              Logger.getLogger(postDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
         return null;
    }
    //insert 
    public void insertPost(Post post){
          try {
              String sql = "INSERT INTO [Post]\n" +
                      "           ([title]\n" +
                      "           ,[detail]\n" +
                      "           ,[author]\n" +
                      "           ,[date])\n" +
                      "     VALUES\n" +
                      "           (?\n" +
                      "           ,?\n" +
                      "           ,?\n" +
                      "           ,?)";
              conn = DBcontext.getConnection();
              pr = conn.prepareStatement(sql);
              pr.setString(1, post.getTitle());
              pr.setString(2, post.getDetail());
              pr.setString(3, post.getAuthor());
              pr.setDate(4, Date.valueOf(post.getDate()));
              pr.executeUpdate();
                      } catch (SQLException ex) {
              Logger.getLogger(postDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
    }
    //update
    public void updatePost(Post post){
          try {
              String sql = "UPDATE [Post]\n" +
                    "   SET [title] = ?\n" +
                    "      ,[detail] = ?\n" +
                    "      ,[author] = ?\n" +
                    "      ,[date] = ?\n" +
                    " WHERE id = ?";
              conn = DBcontext.getConnection();
              pr = conn.prepareStatement(sql);
              pr.setString(1, post.getTitle());
              pr.setString(2, post.getDetail());
              pr.setString(3, post.getAuthor());
              pr.setDate(4, Date.valueOf(post.getDate()));
              pr.setInt(5, post.getId());
              pr.executeUpdate();
                      } catch (SQLException ex) {
              Logger.getLogger(postDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
    }
    //delete
    public void deletePost(int id){
          try {
              String sql = "DELETE FROM [Post]\n" +
                      "WHERE id = ?";
              conn = DBcontext.getConnection();
              pr = conn.prepareStatement(sql);
              pr.setInt(1, id);
              pr.executeUpdate();
          } catch (SQLException ex) {
              Logger.getLogger(postDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
    }
}
