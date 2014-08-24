/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.ClaimContain;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface ClaimContainFacadeLocal {

    void create(ClaimContain claimContain);

    void edit(ClaimContain claimContain);

    void remove(ClaimContain claimContain);

    ClaimContain find(Object id);

    List<ClaimContain> findAll();

    List<ClaimContain> findRange(int[] range);

    int count();
    
}
