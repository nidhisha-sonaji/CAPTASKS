sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'capapp/ns/ust/headeritemapp/test/integration/FirstJourney',
		'capapp/ns/ust/headeritemapp/test/integration/pages/ReqHeaderSetList',
		'capapp/ns/ust/headeritemapp/test/integration/pages/ReqHeaderSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, ReqHeaderSetList, ReqHeaderSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('capapp/ns/ust/headeritemapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheReqHeaderSetList: ReqHeaderSetList,
					onTheReqHeaderSetObjectPage: ReqHeaderSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);