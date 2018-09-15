/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author xmore mmohz
 */
public class EntityDBUtil {
    private static  final EntityManagerFactory emf = Persistence.createEntityManagerFactory("E-VotingPU");
    public static EntityManagerFactory getEmFactory(){
        return emf;
    }
}
