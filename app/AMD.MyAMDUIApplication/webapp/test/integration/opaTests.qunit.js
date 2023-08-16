sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'AMD/MyAMDUIApplication/test/integration/FirstJourney',
		'AMD/MyAMDUIApplication/test/integration/pages/AMDDetailsList',
		'AMD/MyAMDUIApplication/test/integration/pages/AMDDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, AMDDetailsList, AMDDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('AMD/MyAMDUIApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAMDDetailsList: AMDDetailsList,
					onTheAMDDetailsObjectPage: AMDDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);