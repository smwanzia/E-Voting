/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.data;

import enterprise.business.Candidate;
import enterprise.business.Users;
import enterprise.util.DbUtil;
import enterprise.util.EntityDBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

/**
 *
 * @author xmore mmohz
 */
public class UserDB {
    
        public static int AddUserAccount(Users account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO adminusers("
                + "firstname,"
                + "lastname,"
                + "username,"
                + "roleid,"
                + "password,"
                + "emailaddress)"
                + "VALUES (?,?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getFirstname());
            ps.setString(2, account.getLastname());
            ps.setString(3,account.getSecondname());
            ps.setString(4,account.getRoleid());
            ps.setString(5,account.getPassword());
            ps.setString(6,account.getEmailaddress());
          
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
        public static int ResetUserPassword(Users account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " UPDATE adminusers SET "
                + "password =?"
                + "WHERE userid =?";
                
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getPassword());
            ps.setString(2, account.getUserid());
           
            return ps.executeUpdate();
             }
        catch (SQLException e) {
            e.printStackTrace();
            return 0;
             }
        finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
       public static boolean checkUsernameExist(String username) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query="SELECT * FROM adminusers WHERE username = ?";
        //String query = "SELECT * FROM user_account WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }
        return false;
    }
        public static boolean checkEmailExist(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query="SELECT * FROM adminusers WHERE emailaddress = ?";
        //String query = "SELECT * FROM user_account WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }
        return false;
    }
     public static ArrayList<Users> selectAllUsers() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Users> user = new ArrayList<Users>();

        String query = "SELECT * FROM adminusers";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
           Users userAccount = new Users();
               userAccount.setUserid(rs.getString("userid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setRoleid(rs.getString("roleid"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
                user.add(userAccount);
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
      public static Users selectUserById(String id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM adminusers WHERE userid =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
          Users userAccount = new Users();
            if (rs.next()) {
                userAccount.setUserid(rs.getString("userid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setRoleid(rs.getString("roleid"));
                userAccount.setPassword(rs.getString("password"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
               
               // userAccount.setEmailaddress(rs.getString("emailaddress"));
               }
            return userAccount;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
     public static Users selectUserByEmailAddress(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM adminusers WHERE emailaddress =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
          Users userAccount = new Users();
            if (rs.next()) {
                userAccount.setUserid(rs.getString("userid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setRoleid(rs.getString("roleid"));
                userAccount.setPassword(rs.getString("password"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
               
               // userAccount.setEmailaddress(rs.getString("emailaddress"));
               }
            return userAccount;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
    
    /*
     below codes uses JPA technologies and entities
     currently not being used
    */
      
    //a method to get one student based on student id
    public static Users getStudentById(int studentid){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        try{
            Users user=em.find(Users.class,studentid);
            return user;
        }finally{
            em.close();
        }
        
        
    }
    
    //method to get all student list
    public static List<Users> SelectUnProcessedStudents(){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        String query = "SELECT s from Users s"
                + "WHERE s.isProcessed ='n'";
        TypedQuery<Users> q = em.createQuery(query,Users.class);
        List<Users> user;
        try{
            user=q.getResultList();
            if(user == null || user.isEmpty());
            user = null;
            
        }finally{
            em.close();
        }
        return user;
                
    }
    
     //method to get all student list
    public static List<Users> SelectStudents(){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        String query = "SELECT s from Users s";
        TypedQuery<Users> q = em.createQuery(query,Users.class);
        List<Users> student;
        try{
            student=q.getResultList();
            if(student == null || student.isEmpty());
            student = null;
            
        }finally{
            em.close();
        }
        return student;
                
    }
    
    //a method to insert student
    public static void insertStudent(Users student){
        EntityManager em=EntityDBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            //insert data
            trans.begin();
            em.persist(student);
            trans.commit();
        }catch(Exception e){
            System.out.println(e);
            trans.rollback();
        }finally{
            em.close();
        }
        
    }
    
    //method to update data
    public static void updateStudent(Users student){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        //start transaction
        trans.begin();
        try{
            em.merge(student);
            trans.commit();
            
        }catch(Exception e ){
            System.out.println(e);
            trans.rollback();
            
        }finally{
            //close transaction
            em.close();
        }
    }
    
    //method to delete 
    public static void deleteStudent(Users student){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans=em.getTransaction();
        trans.begin();
        try{
            em.remove(student);
            trans.commit();
        }catch(Exception e){
            System.out.println(e);
            trans.rollback();
        }finally{
            em.close();
        }
    }
    
    //method to check whether email addres exist in the db
    public static Users SelectStudent(String email){
        EntityManager em = EntityDBUtil.getEmFactory().createEntityManager();
        String query="SELECT s FROM Student s"
                + "WHERE s.email = ;email";
        TypedQuery<Users> q = em.createQuery(query,Users.class);
        q.setParameter("email",email);
        try{
            Users student=q.getSingleResult();
            return  student;
        }catch(Exception e){
            return null;
        }finally{
            em.close();
        }
        
    }
    
    
    
    
}
