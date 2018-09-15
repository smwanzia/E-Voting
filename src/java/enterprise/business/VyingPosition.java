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
public class VyingPosition {
    private String position_name;
    private String positionid;
    
    public VyingPosition(){
       position_name="";
        positionid="";
    }

    public String getPositionname() {
        return position_name;
    }

    public void setPositionname(String positionaname) {
        this.position_name = positionaname;
    }

    public String getPositionid() {
        return positionid;
    }

    public void setPositionid(String positionid) {
        this.positionid = positionid;
    }
    
}
