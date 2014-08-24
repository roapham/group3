/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.TransactionRecord;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author chautrieu
 */
@Stateless
public class TransactionRecordFacade extends AbstractFacade<TransactionRecord> implements TransactionRecordFacadeLocal {
    @PersistenceContext(unitName = "Sem4-WCPS-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TransactionRecordFacade() {
        super(TransactionRecord.class);
    }
    
}
