namespace capapp.db;
using { cuid, managed } from '@sap/cds/common';

context transaction{

    entity reqHeader : managed {
        key requestNo : UUID @cuid;
        requestDesc : String(60) @mandatory;
        status : Association to status;
        totalPrice : Decimal(10, 2);
        items :  Association to many reqItem on items.header=$self ;
    }

    entity reqItem : managed{
        key itemNo : UUID @cuid; 
        itemDesc :String(30) @mandatory;
        materialNo : String(3) @mandatory;
        plant : String(32) @mandatory;
        quantity : String(10) @mandatory;
        unitPrice : Decimal(10,2) @mandatory;
        header : Association to one reqHeader;

    }

    entity status  {
        key statusId :String(11);
    }
    
}