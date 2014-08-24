/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.TransactionRecord;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author chautrieu
 */
@Local
public interface TransactionRecordFacadeLocal {

    void create(TransactionRecord transactionRecord);

    void edit(TransactionRecord transactionRecord);

    void remove(TransactionRecord transactionRecord);

    TransactionRecord find(Object id);

    List<TransactionRecord> findAll();

    List<TransactionRecord> findRange(int[] range);

    int count();
    
}
