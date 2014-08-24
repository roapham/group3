/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.TypeOfTransition;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author chautrieu
 */
@Stateless
public class TypeOfTransitionFacade extends AbstractFacade<TypeOfTransition> implements TypeOfTransitionFacadeLocal {
    @PersistenceContext(unitName = "Sem4-WCPS-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TypeOfTransitionFacade() {
        super(TypeOfTransition.class);
    }
    
}
