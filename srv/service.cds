using { AMD as my } from '../db/schema';

using AMD from '../db/schema';

@path : '/service/AMD'
service AMDService
{
    @odata.draft.enabled
    entity AMDDetails as
        projection on my.AMDDetails;

    entity NewTable as
        projection on my.NewTable;
}

annotate AMDService with @requires :
[
    'authenticated-user'
];
