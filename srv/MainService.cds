using { capapp.db.transaction } from '../db/datamodel';



service MainService @(path: 'MainService'){
    entity ReqHeaderSet as projection on transaction.reqHeader{
        *,
        items
    };
    entity ReqItemSet as projection on transaction.reqItem;

    entity StatusSet as projection on transaction.status;


}