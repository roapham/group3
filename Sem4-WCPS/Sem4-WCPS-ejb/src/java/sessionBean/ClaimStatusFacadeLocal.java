/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.ClaimStatus;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface ClaimStatusFacadeLocal {

    void create(ClaimStatus claimStatus);

    void edit(ClaimStatus claimStatus);

    void remove(ClaimStatus claimStatus);

    ClaimStatus find(Object id);

    List<ClaimStatus> findAll();

    List<ClaimStatus> findRange(int[] range);

    int count();
    
}
