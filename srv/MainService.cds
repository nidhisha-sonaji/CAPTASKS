using { capapp.db.transaction } from '../db/datamodel';

service MainService @(path: 'MainService'){
    entity ReqHeaderSet as projection on transaction.reqHeader{
        *,
        items
    };
    entity StatusSet as projection on transaction.status;
}