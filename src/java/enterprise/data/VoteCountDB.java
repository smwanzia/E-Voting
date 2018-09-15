/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.data;

import enterprise.business.Candidate;
import enterprise.business.CastVote;
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
public class VoteCountDB {
    
        public static ArrayList<CastVote>  selectTotalVoteCasted() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<CastVote> vote=new ArrayList<CastVote>();
       // String query = "SELECT count(nationalid) As totalvotes FROM votedusers";
           String query="SELECT SUM(totalvote) As totalvotes FROM candidates ";
        try {
            ps = connection.prepareStatement(query);
            //ps.setString(1, id);
            rs = ps.executeQuery();
          
            while (rs.next()) {
              CastVote casted = new CastVote();
              casted.setTotalvotes(rs.getInt("totalvotes"));
               vote.add(casted);
               }
            return vote;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
        public static ArrayList<Candidate> selectResultsByPosition(String pid) {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> cand = new ArrayList<Candidate>();

        String query = "SELECT totalvote,firstname,lastname,positionname FROM candidates c JOIN voters "
                  + " v ON v.nationalid=c.nationalid JOIN vyingposition p ON p.positionid=c.position WHERE position =?";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
           Candidate res = new Candidate();
                res.setTotalvotes(rs.getInt("totalvote"));
                res.setFirstname(rs.getString("firstname"));
                res.setLastname(rs.getString("lastname"));
                res.setPosition(rs.getString("positionname"));
                //res.setPartyId(rs.getString("party_name"));
              cand.add(res);
            }
            return cand;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
        public static Candidate selectWinnerPerPosition(String pid) {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
         String query = "SELECT MAX(totalvote) As Votes,firstname,lastname,positionid,positionname FROM candidates c JOIN voters "
                  + " v ON v.nationalid=c.nationalid JOIN vyingposition p ON p.positionid=c.position WHERE position =?";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            Candidate winner = new Candidate();
            if (rs.next()) {
               winner.setTotalvotes(rs.getInt("Votes"));
               winner.setFirstname(rs.getString("firstname"));
               winner.setLastname(rs.getString("lastname"));
               winner.setPersonId(rs.getString("positionid"));
               winner.setPosition(rs.getString("positionname"));
              // winner.setPartyId(rs.getString("partyid"));
              
            }
            return winner;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
        public static ArrayList<CastVote> selectVotedAspirant() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<CastVote> cand = new ArrayList<CastVote>();

        String query = "SELECT nationalid,totalvote FROM  candidates  ";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
           CastVote voted = new CastVote();
               voted.setNationalId(rs.getString("nationalid"));
               voted.setVotes(rs.getInt("totalvote"));
               cand.add(voted);
            }
            return cand;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
        //get votes by president id
        public static ArrayList<CastVote> selectTotalVoteByCandidate(String candidateid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<CastVote> cand = new ArrayList<CastVote>();
        String query = "SELECT nationalid,partyid,positionname,COUNT(c.candidateid) As votes FROM  "
                     + " candidates CA JOIN castedvote c ON ca.candidateid=c.candidateid " 
                      +  " JOIN vyingposition v ON v.positionid=CA.position WHERE c.candidateid =?";
        
       
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1,candidateid);
            rs = ps.executeQuery();
            while (rs.next()) {
                CastVote userAccount = new CastVote();
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setPartyId(rs.getString("partyid"));
                userAccount.setPosition(rs.getString("positionname"));
                userAccount.setVotes(rs.getInt("totalvote"));
               // userAccount.setFirstname(rs.getString("firstname"));
               // userAccount.setLastname(rs.getString("lastname"));
              cand.add(userAccount);
            }
            return cand;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
        
         //get votes by president id
        public static CastVote selectVotesByMPId(String mpid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(president) As MP FROM castedvote WHERE president =?;";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, mpid);
            rs = ps.executeQuery();
          CastVote casted = new CastVote();
            if (rs.next()) {
               casted.setMp(rs.getString("MP"));
               }
            return casted;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
        
         //get votes by senator id
        public static CastVote selectVoteByISenatorId(String senatorid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(senator) As senator FROM castedvote WHERE senator =?;";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, senatorid);
            rs = ps.executeQuery();
          CastVote casted = new CastVote();
            if (rs.next()) {
               casted.setSenator(rs.getString("senator"));
               }
            return casted;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
         //get votes by mca id
        public static CastVote selectVotesByMCAId(String mcaid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(mca) As MCA FROM castedvote WHERE mca =?;";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, mcaid);
            rs = ps.executeQuery();
          CastVote casted = new CastVote();
            if (rs.next()) {
               casted.setMca(rs.getString("MCA"));
               }
            return casted;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
         //get votes by WOMENREP id
        public static CastVote selectVoteByWomenRepId(String womenrepid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(womenrep) As womenrep FROM castedvote WHERE womenrep =?;";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1,womenrepid);
            rs = ps.executeQuery();
          CastVote casted = new CastVote();
            if (rs.next()) {
               casted.setWomenrep(rs.getString("womenrep"));
               }
            return casted;
        } catch (SQLException e) {  //catch sql exception 
            e.printStackTrace();

        } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
            DbUtil.closeResultSet(rs);
        }
        return null;
    }
}
