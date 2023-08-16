using AMDService as service from '../../srv/service';

annotate service.AMDDetails with @(
    UI:{
       		 SelectionFields  : [
           			AMD_ID,
                    MRC,
                    LE,
                    CREATED_BY,
                    NO_OF_ASSETS
      		  ],
  	},
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'AMD_ID',
            Value : AMD_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MRC',
            Value : MRC,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LE',
            Value : LE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'STATUS',
            Value : STATUS,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CREATED_BY',
            Value : CREATED_BY,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CREATED_ON',
            Value : CREATED_ON,
        },
        {
            $Type : 'UI.DataField',
            Value : NO_OF_ASSETS,
            Label : 'NO_OF_ASSETS',
        },
    ]
);
annotate service.AMDDetails with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'STATUS',
                Value : STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MRC',
                Value : MRC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LE',
                Value : LE,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'INFO',
            ID : 'INFO',
            Target : '@UI.FieldGroup#INFO',
        },
    ]
);
annotate service.AMDDetails with {
    MRC @Common.Text : {
            $value : NEWTABLE.MRC,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.AMDDetails with {
    AMD_ID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AMDDetails',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : AMD_ID,
                    ValueListProperty : 'AMD_ID',
                },
            ],
            Label : 'AMD_ID',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    MRC @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'NewTable',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : MRC,
                    ValueListProperty : 'MRC',
                },
            ],
            Label : 'MRC',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    LE @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'NewTable',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : LE,
                    ValueListProperty : 'LE',
                },
            ],
            Label : 'LE',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    CREATED_BY @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AMDDetails',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CREATED_BY,
                    ValueListProperty : 'CREATED_BY',
                },
            ],
            Label : 'CREATED BY',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    NO_OF_ASSETS @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AMDDetails',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : NO_OF_ASSETS,
                    ValueListProperty : 'NO_OF_ASSETS',
                },
            ],
            Label : 'NO OF ASSETS',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    LE @Common.Text : {
        $value : NEWTABLE.LE,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.AMDDetails with @(
    UI.FieldGroup #INFO : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'NO_OF_ASSETS',
                Value : NO_OF_ASSETS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CREATED_ON',
                Value : CREATED_ON,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CREATED_BY',
                Value : CREATED_BY,
            },],
    }
);
annotate service.AMDDetails with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : AMD_ID,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'sap-icon://employee',
    }
);
annotate service.AMDDetails with {
    STATUS @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AMDDetails',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : STATUS,
                    ValueListProperty : 'STATUS',
                },
            ],
            Label : 'STATUS',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    CREATED_ON @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'AMDDetails',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CREATED_ON,
                    ValueListProperty : 'CREATED_ON',
                },
            ],
            Label : 'CREATED ON',
        },
        Common.ValueListWithFixedValues : true
)};
