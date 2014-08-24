/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.TypeOfTransition;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface TypeOfTransitionFacadeLocal {

    void create(TypeOfTransition typeOfTransition);

    void edit(TypeOfTransition typeOfTransition);

    void remove(TypeOfTransition typeOfTransition);

    TypeOfTransition find(Object id);

    List<TypeOfTransition> findAll();

    List<TypeOfTransition> findRange(int[] range);

    int count();
    
}
