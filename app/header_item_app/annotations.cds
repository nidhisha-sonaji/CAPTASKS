using MainService as service from '../../srv/MainService';

annotate service.ReqHeaderSet with @(
    UI.SelectionFields:[
        requestNo,
        status.statusId,
        totalPrice,
    ],

    

    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : requestNo,
        },
        {
            $Type : 'UI.DataField',
            Value : requestDesc,
        },
        {
            $Type : 'UI.DataField',
            Value : status_statusId
        },
        {
            $Type : 'UI.DataField',
            Value : totalPrice,
        },
       
    ],

    UI.HeaderInfo:{
       TypeName:'Request Header',
       TypeNamePlural: 'Request Headers',
       Title :{Value : requestNo},
       Description:{Value: requestDesc} 

    },

    UI.Facets:[
        
    ]

    

);

