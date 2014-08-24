/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.AccountInCompany;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author chautrieu
 */
@Stateless
public class AccountInCompanyFacade extends AbstractFacade<AccountInCompany> implements AccountInCompanyFacadeLocal {
    @PersistenceContext(unitName = "Sem4-WCPS-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AccountInCompanyFacade() {
        super(AccountInCompany.class);
    }
    
}
