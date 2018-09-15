/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.business;

import java.io.Serializable;

/**
 *
 * @author xmore mmohz
 */
public class Candidate extends Person implements Comparable<Candidate> {
    private String candidateId;
    private String partyId;
    private String partysymbol;
    private String position;
    private int totalvotes;
    
    public Candidate(){
        super();
        candidateId="";
        partyId="";
        position="";
        partysymbol="";
        totalvotes=0;
    }
     public Candidate(int votes, String name){
        this.totalvotes = votes;
        this.candidateId = name;
        
    }

    public String getPartysymbol() {
        return partysymbol;
    }

    public void setPartysymbol(String partysymbol) {
        this.partysymbol = partysymbol;
    }

    public int getTotalvotes() {
        return totalvotes;
    }

    public void setTotalvotes(int totalvotes) {
        this.totalvotes = totalvotes;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(String candidateId) {
        this.candidateId = candidateId;
    }

    public String getPartyId() {
        return partyId;
    }

    public void setPartyId(String partyId) {
        this.partyId = partyId;
    }

    @Override
    public int compareTo(Candidate o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
