/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.AccountInCompany;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface AccountInCompanyFacadeLocal {

    void create(AccountInCompany accountInCompany);

    void edit(AccountInCompany accountInCompany);

    void remove(AccountInCompany accountInCompany);

    AccountInCompany find(Object id);

    List<AccountInCompany> findAll();

    List<AccountInCompany> findRange(int[] range);

    int count();
    
}
