/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.business;

/**
 *
 * @author xmore mmohz
 */
public class PoliticalParty {
    private String partyname; //odm,wiper
    private String partyId;
    private String symbol;
   
    public PoliticalParty(){
        partyname="";
        partyId="";
        symbol="";
        
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getPartyname() {
        return partyname;
    }

    public void setPartyname(String partyname) {
        this.partyname = partyname;
    }

    public String getPartyId() {
        return partyId;
    }

    public void setPartyId(String partyId) {
        this.partyId = partyId;
    }
    
}
