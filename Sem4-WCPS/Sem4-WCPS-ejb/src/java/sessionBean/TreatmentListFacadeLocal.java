/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.TreatmentList;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface TreatmentListFacadeLocal {

    void create(TreatmentList treatmentList);

    void edit(TreatmentList treatmentList);

    void remove(TreatmentList treatmentList);

    TreatmentList find(Object id);

    List<TreatmentList> findAll();

    List<TreatmentList> findRange(int[] range);

    int count();
    
}
