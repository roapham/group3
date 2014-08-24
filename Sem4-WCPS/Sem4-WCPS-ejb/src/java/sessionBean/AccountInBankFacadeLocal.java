/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.AccountInBank;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface AccountInBankFacadeLocal {

    void create(AccountInBank accountInBank);

    void edit(AccountInBank accountInBank);

    void remove(AccountInBank accountInBank);

    AccountInBank find(Object id);

    List<AccountInBank> findAll();

    List<AccountInBank> findRange(int[] range);

    int count();
    
}
