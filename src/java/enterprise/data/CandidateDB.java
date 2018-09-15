/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.data;

import enterprise.business.Candidate;
import enterprise.business.PoliticalParty;
import enterprise.business.Users;
import enterprise.business.Voters;
import enterprise.business.VyingPosition;
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
public class CandidateDB {
    
      public static ArrayList<Candidate> selectAspirantByID(String nationalid) {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> candid = new ArrayList<Candidate>();

        String query = "SELECT nationalid,totalvote FROM candidates WHERE nationalid =?  ";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1,nationalid);
            rs = ps.executeQuery();
            while (rs.next()) {
           Candidate exist = new Candidate();
               exist.setNationalId(rs.getString("nationalid"));
               exist.setTotalvotes(rs.getInt("totalvote"));
               candid.add(exist);
            }
            return candid;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
     public static ArrayList<Candidate> selectAspirant() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> cand = new ArrayList<Candidate>();

        String query = "SELECT candidateid, c.nationalid,firstname,lastname,positionname FROM candidates c JOIN vyingposition vp "
                + "ON vp.positionid=c.position JOIN voters v ON v.nationalid=c.nationalid";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
           Candidate userAccount = new Candidate();
                userAccount.setCandidateId(rs.getString("candidateid"));
                userAccount.setNationalId(rs.getString("nationalid"));
                //userAccount.setPartyId(rs.getString("party_name"));
                userAccount.setPosition(rs.getString("positionname"));
                //userAccount.setTotalvotes(rs.getInt("totalvote"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
               cand.add(userAccount);
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
    
       public static ArrayList<Candidate> selectAllCandidate() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> cand = new ArrayList<Candidate>();
        String query = "SELECT candidateid, c.nationalid,firstname,lastname,positionname,totalvote FROM candidates c JOIN vyingposition vp "
                + "ON vp.positionid=c.position JOIN voters v ON v.nationalid=c.nationalid";
       // String query = "SELECT candidateid,c.nationalid,party_name,positionname,totalvote,firstname,lastname FROM candidates c JOIN voters v on c.nationalid=v.nationalid"
               // + " JOIN vyingposition vy ON vy.positionid=c.position JOIN departments d ON c.partyid=d.party_id";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
             Candidate userAccount = new Candidate();
                userAccount.setCandidateId(rs.getString("candidateid"));
                userAccount.setNationalId(rs.getString("nationalid"));
              //  userAccount.setPartyId(rs.getString("party_name"));
                userAccount.setPosition(rs.getString("positionname"));
                userAccount.setTotalvotes(rs.getInt("totalvote"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
               cand.add(userAccount);
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
        public static ArrayList<VyingPosition> selectPosition() {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<VyingPosition> cand = new ArrayList<VyingPosition>();

        String query = "SELECT * FROM vyingposition";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
            VyingPosition uAccount = new VyingPosition();
               uAccount.setPositionname(rs.getString("positionname"));
               uAccount.setPositionid(rs.getString("positionid"));
              cand.add(uAccount);
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
          public static VyingPosition selectCandidatePositionByPositionaName(String pst) {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<VyingPosition> cand = new ArrayList<VyingPosition>();

        String query = "SELECT * FROM vyingposition WHERE positionname =?";

        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, pst);
            rs = ps.executeQuery();
             VyingPosition vps = new VyingPosition();
           if (rs.next()) {
           
               vps .setPositionname(rs.getString("positionname"));
               vps .setPositionid(rs.getString("positionid"));
             
            }
            return vps ;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
        public static int AddCandidate(Candidate account) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO candidates("
                + "nationalid,"
                + "partyid,"
                + "position)"
                + "VALUES (?,?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getNationalId());
            ps.setString(2, account.getPartyId());
            ps.setString(3,account.getPosition());
          
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
        public static Candidate selectCandidateById(String id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM candidates WHERE nationalid =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
          Candidate userAccount = new Candidate();
            if (rs.next()) {
                userAccount.setCandidateId(rs.getString("candidateid"));
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setPartyId(rs.getString("partyid"));
                userAccount.setPosition(rs.getString("position"));
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
        public static ArrayList<Candidate> selectCandidateByPosition(String position) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> cand=new ArrayList<Candidate>();
        String query = "SELECT candidateid,c.nationalid,positionname,firstname,lastname,username,imageurl FROM " +
                        " candidates c join voters v on c.nationalid=v.nationalid join vyingposition vp"
                         + " ON c.position=vp.positionid  WHERE position =?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, position);
            rs = ps.executeQuery();
           while (rs.next()) {
                Candidate userAccount = new Candidate();
                userAccount.setCandidateId(rs.getString("candidateid"));
                userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setPosition(rs.getString("positionname"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setSecondname(rs.getString("username"));
                userAccount.setImageUrl(rs.getString("imageurl"));
                 // userAccount.setEmailaddress(rs.getString("emailaddress"));
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
        
         public static ArrayList<Candidate> selectCandidatePosition(String position) {
          
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Candidate> cand = new ArrayList<Candidate>();

        String query = "SELECT * FROM candidates c join voters v on c.nationalid=v.nationalid WHERE position =?";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
           Candidate userAccount = new Candidate();
               // userAccount.setNationalId(rs.getString("nationalid"));
                userAccount.setPartyId(rs.getString("partyid"));
                userAccount.setPosition(rs.getString("position"));
                userAccount.setFirstname(rs.getString("firstname"));
                userAccount.setLastname(rs.getString("lastname"));
                userAccount.setPhonenumber(rs.getString("imageurl"));
              //  userAccount.setSecondname(rs.getString("username"));
              //  userAccount.setEmailaddress(rs.getString("emailaddress"));
               // userAccount.setPhonenumber(rs.getString("phonenumber"));
              //  userAccount.setCounty(rs.getString("county"));
              //  userAccount.setConstituency(rs.getString("constituency"));
              //  userAccount.setWard(rs.getString("ward"));
              //  userAccount.setLocation(rs.getString("location"));
               // userAccount.setVillage(rs.getString("village"));
               // userAccount.setPhonenumber(rs.getString("imageurl"));
                //userAccount.setDOB(rs.getString("dob"));
                
               cand.add(userAccount);
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
            public static int AddPolyticalParties(PoliticalParty party) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = " INSERT INTO departments("
                + "party_name)"
                + "VALUES (?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, party.getPartyname());
            //ps.setString(2, party.getSymbol());
            return ps.executeUpdate();
             } catch (SQLException e) {
            e.printStackTrace();
            return 0;
             } finally {//free connection 
            DbUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }

    }
        public static ArrayList<PoliticalParty> selectParties() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<PoliticalParty> parti = new ArrayList<PoliticalParty>();

        String query = "SELECT * FROM departments";

        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
            PoliticalParty party = new PoliticalParty();
               party.setPartyId(rs.getString("party_id"));
               party.setPartyname(rs.getString("party_name"));
               //party.setSymbol(rs.getString("party_symbol"));
              parti.add(party);
            }
            return parti;
        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DbUtil.closePreparedStatement(ps);
            DbUtil.closeResultSet(rs);
            pool.freeConnection(connection);
        }
        return null;

    }
}
