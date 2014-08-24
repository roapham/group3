/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.AccountInBank;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author chautrieu
 */
@Stateless
public class AccountInBankFacade extends AbstractFacade<AccountInBank> implements AccountInBankFacadeLocal {
    @PersistenceContext(unitName = "Sem4-WCPS-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountInBankFacade() {
        super(AccountInBank.class);
    }
    
}
