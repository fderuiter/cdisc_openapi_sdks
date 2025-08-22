@isTest
private class OASStudyDataTabulationModelSDTMApiTest {
    /**
     * 
     *
     * Get Root of SDTM Class Variable
     */
    @isTest
    private static void mdrRootSdtmClassesClassVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'propertyClass' => GeneralObservations,
            'var' => --DTC
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASRootSdtmClassVariable response;
        OASRootSdtmClassVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmClassVariable.getExample();
        response = (OASRootSdtmClassVariable) api.mdrRootSdtmClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Root SDTM Dataset Variable
     */
    @isTest
    private static void mdrRootSdtmDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dataset' => DM,
            'var' => SUBJID
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASRootSdtmDatasetVariable response;
        OASRootSdtmDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSdtmDatasetVariable.getExample();
        response = (OASRootSdtmDatasetVariable) api.mdrRootSdtmDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Class Dataset List
     */
    @isTest
    private static void mdrSdtmVersionClassesClassDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'propertyClass' => SpecialPurpose
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmClassDatasets response;
        OASSdtmClassDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassDatasets.getExample();
        response = (OASSdtmClassDatasets) api.mdrSdtmVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Class
     */
    @isTest
    private static void mdrSdtmVersionClassesClassGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'propertyClass' => Findings
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmClass response;
        OASSdtmClass expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClass.getExample();
        response = (OASSdtmClass) api.mdrSdtmVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Class Variable List
     */
    @isTest
    private static void mdrSdtmVersionClassesClassVariablesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'propertyClass' => GeneralObservations
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmClassVariables response;
        OASSdtmClassVariables expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariables.getExample();
        response = (OASSdtmClassVariables) api.mdrSdtmVersionClassesClassVariablesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Class Variable
     */
    @isTest
    private static void mdrSdtmVersionClassesClassVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'propertyClass' => GeneralObservations,
            'var' => --DTC
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmClassVariable response;
        OASSdtmClassVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClassVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClassVariable.getExample();
        response = (OASSdtmClassVariable) api.mdrSdtmVersionClassesClassVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Class List
     */
    @isTest
    private static void mdrSdtmVersionClassesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmClasses response;
        OASSdtmClasses expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmClasses.getExample();
        response = (OASSdtmClasses) api.mdrSdtmVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Dataset
     */
    @isTest
    private static void mdrSdtmVersionDatasetsDatasetGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'dataset' => DM
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmDataset response;
        OASSdtmDataset expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDataset.getExample();
        response = (OASSdtmDataset) api.mdrSdtmVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Dataset Variable List
     */
    @isTest
    private static void mdrSdtmVersionDatasetsDatasetVariablesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'dataset' => DM
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmDatasetVariables response;
        OASSdtmDatasetVariables expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariables.getExample();
        response = (OASSdtmDatasetVariables) api.mdrSdtmVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Dataset Variable
     */
    @isTest
    private static void mdrSdtmVersionDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8,
            'dataset' => DM,
            'var' => SUBJID
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmDatasetVariable response;
        OASSdtmDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasetVariable.getExample();
        response = (OASSdtmDatasetVariable) api.mdrSdtmVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM Dataset List
     */
    @isTest
    private static void mdrSdtmVersionDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmDatasets response;
        OASSdtmDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmDatasets.getExample();
        response = (OASSdtmDatasets) api.mdrSdtmVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SDTM product
     */
    @isTest
    private static void mdrSdtmVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-8
        };

        OASClient client;
        OASStudyDataTabulationModelSDTMApi api;
        OASSdtmProduct response;
        OASSdtmProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStudyDataTabulationModelSDTMApi(client);

        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSdtmProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSdtmProduct.getExample();
        response = (OASSdtmProduct) api.mdrSdtmVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }
}