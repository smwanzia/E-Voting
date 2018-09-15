/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.data;

import enterprise.business.CastVote;
import enterprise.business.Users;
import enterprise.business.Voters;
import enterprise.util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author xmore mmohz
 */
public class VoterDB {
    
     public static int CreateVoters(Voters account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO voters("
                + "nationalid,"
                + "firstname,"
                + "lastname,"
                + "username,"
                + "emailaddress,"
                + "phonenumber,"
                + "department,"
               // + "constituency,"
                //+ "ward,"
                //+ "location,"
               // + "village,"
                + "imageurl)"
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getNationalId());
            ps.setString(2, account.getFirstname());
            ps.setString(3,account.getLastname());
            ps.setString(4,account.getSecondname());
            ps.setString(5,account.getEmailaddress());
            ps.setString(6,account.getPhonenumber());
            ps.setString(7,account.getCounty());
         
            ps.setString(8,account.getImageUrl());
           // ps.setString(13,account.getDOB());
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
        public static boolean checkUsernameExist(String username) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query="SELECT * FROM voters WHERE username = ?";
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
        public static boolean checkNationalIdExist(String nationalid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query="SELECT * FROM voters WHERE nationalid = ?";
        //String query = "SELECT * FROM user_account WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, nationalid);
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
      public static int InsertVotedUser(Voters account,String status) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO votedusers("
                + "nationalid,"
                + "status)"
                + "VALUES (?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getNationalId());
            ps.setString(2, status);
       
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
     
     
      public static Voters selectVoterByNationalID(String ID) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM voters WHERE nationalid =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, ID);
            rs = ps.executeQuery();
           Voters userAccount = new Voters();
            if (rs.next()) {
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
                userAccount.setCounty(rs.getString("department"));
                userAccount.setImageUrl(rs.getString("imageurl"));
                /*userAccount.setCounty(rs.getString("county"));
                userAccount.setConstituency(rs.getString("constituency"));
                userAccount.setWard(rs.getString("ward"));
                userAccount.setLocation(rs.getString("location"));
                 userAccount.setVillage(rs.getString("village"));
                userAccount.setImageUrl(rs.getString("imageurl"));
                userAccount.setDOB(rs.getString("dob"));*/
               
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
       public static Voters selectVoterByUsername(String username) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM voters WHERE username =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
           Voters userAccount = new Voters();
            if (rs.next()) {
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
                userAccount.setCounty(rs.getString("department"));
                /*userAccount.setConstituency(rs.getString("constituency"));
                userAccount.setWard(rs.getString("ward"));
                userAccount.setLocation(rs.getString("location"));
                userAccount.setVillage(rs.getString("village"));
                userAccount.setPhonenumber(rs.getString("imageurl"));
                userAccount.setDOB(rs.getString("dob"));*/
               
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
      
      public static ArrayList<Voters> selectAllVoters() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Voters> voter = new ArrayList<Voters>();

        String query = "SELECT * FROM voters";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
            Voters userAccount = new Voters();
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setEmailaddress(rs.getString("emailaddress"));
                userAccount.setPhonenumber(rs.getString("phonenumber"));
                userAccount.setCounty(rs.getString("department"));
                userAccount.setPhonenumber(rs.getString("imageurl"));
               /* userAccount.setConstituency(rs.getString("constituency"));
                userAccount.setWard(rs.getString("ward"));
                userAccount.setLocation(rs.getString("location"));
                userAccount.setVillage(rs.getString("village"));
                userAccount.setPhonenumber(rs.getString("imageurl"));
                userAccount.setDOB(rs.getString("dob"));*/
                
               voter.add(userAccount);
            }
            return voter;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
      
     /* public static int PlaceVote(CastVote account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO castedvote("
                + "candidateid,"
                + "voterid,"
                + "position,"
                + "president,"
                + "mp,"
                + "senator,"
                + "mca,"
                + "womenrep)"
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getCandidateId());
            ps.setString(2, account.getVoterId());
            ps.setString(3,account.getPosition());
            ps.setString(4,account.getPresident());
            ps.setString(5,account.getMp());
            ps.setString(6,account.getSenator());
            ps.setString(7,account.getMca());
            ps.setString(8,account.getWomenrep());
          
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }*/
      public static int PlaceVote(String account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO castedvote("
                + "candidateid)"
                + "VALUES (?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account);
           
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
        
       public static int UpdateTotalVote(CastVote vote) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " UPDATE candidates SET "
                + "totalvote =? "
                + "WHERE nationalid = ?";
                
        try {
            ps = connection.prepareStatement(query);
             ps.setInt(1,vote.getVotes());
            ps.setString(2, vote.getCandidateId());
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
     
      public static Voters selectVotedUser(String voterid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT nationalid FROM votedusers WHERE nationalid =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, voterid);
            rs = ps.executeQuery();
           Voters userAccount = new Voters();
            if (rs.next()) {
                userAccount.setNationalId(rs.getString("nationalid"));
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
      
        public static int UpdateVoterDetails(Voters vote) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " UPDATE voters SET "
                + "firstname =?,"
                + "lastname =?,"
                + "username =?,"
                + "phonenumber =?,"
                + "department =?,"
                + "imageurl =? "
                + "WHERE nationalid = ?";
                
        try {
                ps = connection.prepareStatement(query);
                ps.setString(1, vote.getFirstname());
                ps.setString(2,vote.getLastname());
                ps.setString(3,vote.getSecondname());
                ps.setString(4,vote.getPhonenumber());
                ps.setString(5,vote.getCounty());
                ps.setString(6,vote.getImageUrl());
                ps.setString(7,vote.getNationalId());
                return ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
                return 0;
             } finally {//free connection 
                DbUtil.closePreparedStatement(ps);
                pool.freeConnection(connection);

        }

    }
}
