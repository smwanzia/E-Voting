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
public class Voters extends Person implements Serializable {
    
     private String voterid;
    
    public Voters(){
        super();
        voterid="";
     }

    public String getVoterid() {
        return voterid;
    }

    public void setVoterid(String voterid) {
        this.voterid = voterid;
    }
    
}
