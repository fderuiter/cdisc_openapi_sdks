@isTest
private class OASSDTMImplementationGuideSDTMIGApiTest {
    /**
     * 
     *
     * Get Root SDTMIG Dataset Variable
     */
    @isTest
    private static void mdrRootSdtmigDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dataset' => DM,
            'var' => SUBJID
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASRootSdtmigDatasetVariable response;
        OASRootSdtmigDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmigDatasetVariable.getExample();
        response = (OASRootSdtmigDatasetVariable) api.mdrRootSdtmigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Class Dataset List
     */
    @isTest
    private static void mdrSdtmigVersionClassesClassDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3,
            'propertyClass' => Findings
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigClassDatasets response;
        OASSdtmigClassDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClassDatasets.getExample();
        response = (OASSdtmigClassDatasets) api.mdrSdtmigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Class
     */
    @isTest
    private static void mdrSdtmigVersionClassesClassGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3,
            'propertyClass' => Findings
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigClass response;
        OASSdtmigClass expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClass.getExample();
        response = (OASSdtmigClass) api.mdrSdtmigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Class List
     */
    @isTest
    private static void mdrSdtmigVersionClassesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigClasses response;
        OASSdtmigClasses expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigClasses.getExample();
        response = (OASSdtmigClasses) api.mdrSdtmigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Dataset
     */
    @isTest
    private static void mdrSdtmigVersionDatasetsDatasetGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3,
            'dataset' => LB
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigDataset response;
        OASSdtmigDataset expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDataset.getExample();
        response = (OASSdtmigDataset) api.mdrSdtmigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Dataset Variable List
     */
    @isTest
    private static void mdrSdtmigVersionDatasetsDatasetVariablesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3,
            'dataset' => LB
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigDatasetVariables response;
        OASSdtmigDatasetVariables expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariables.getExample();
        response = (OASSdtmigDatasetVariables) api.mdrSdtmigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Dataset Variable
     */
    @isTest
    private static void mdrSdtmigVersionDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3,
            'dataset' => LB,
            'var' => LBDTC
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigDatasetVariable response;
        OASSdtmigDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasetVariable.getExample();
        response = (OASSdtmigDatasetVariable) api.mdrSdtmigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG Dataset List
     */
    @isTest
    private static void mdrSdtmigVersionDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigDatasets response;
        OASSdtmigDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigDatasets.getExample();
        response = (OASSdtmigDatasets) api.mdrSdtmigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTMIG product
     */
    @isTest
    private static void mdrSdtmigVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-3
        };

        OASClient client;
        OASSDTMImplementationGuideSDTMIGApi api;
        OASSdtmigProduct response;
        OASSdtmigProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSDTMImplementationGuideSDTMIGApi(client);

        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmigProduct.getExample();
        response = (OASSdtmigProduct) api.mdrSdtmigVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }
}