namespace AMD;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity AMDDetails
{
    key AMD_ID : UUID
        @Core.Computed;
    MRC : String(100);
    LE : String(100);
    STATUS : String(100);
    CREATED_BY : String(100);
    CREATED_ON : String(100);
    NO_OF_ASSETS : String(100);
    NEWTABLE : Association to one NewTable;
}

entity NewTable
{
    key ID : UUID
        @Core.Computed;
    MRC : String(100);
    LE : String(100);
}
