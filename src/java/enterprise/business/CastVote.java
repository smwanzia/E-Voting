/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.business;

import java.util.List;

/**
 *
 * @author xmore mmohz
 */
public class CastVote extends Candidate {
   
   private String castId;
   private String voterId;
   private List<Candidate> candidate;
   private int votes;
    
    
    String president;
    String womenrep;
    String mca;
    String mp;
    String senator;
    public CastVote(){
        super();
        castId="";
        voterId="";
        votes=0;
        president="";
        womenrep="";
        mca="";
        mp="";
        senator="";
    }

    public List<Candidate> getCandidate() {
        return candidate;
    }

    public void setCandidate(List<Candidate> candidate) {
        this.candidate = candidate;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }
   
   
    public String getCastId() {
        return castId;
    }

    public void setCastId(String castId) {
        this.castId = castId;
    }

    public String getVoterId() {
        return voterId;
    }

    public void setVoterId(String voterId) {
        this.voterId = voterId;
    }

    public String getPresident() {
        return president;
    }

    public void setPresident(String president) {
        this.president = president;
    }

    public String getWomenrep() {
        return womenrep;
    }

    public void setWomenrep(String womenrep) {
        this.womenrep = womenrep;
    }

    public String getMca() {
        return mca;
    }

    public void setMca(String mca) {
        this.mca = mca;
    }

    public String getMp() {
        return mp;
    }

    public void setMp(String mp) {
        this.mp = mp;
    }

    public String getSenator() {
        return senator;
    }

    public void setSenator(String senator) {
        this.senator = senator;
    }
    
    
}
