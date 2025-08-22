@isTest
private class OASSENDImplementationGuideSENDIGApiTest {
    /**
     * 
     *
     * Get Root SENDIG Dataset Variable
     */
    @isTest
    private static void mdrRootSendigDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'dataset' => VS,
            'var' => VSTEST
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASRootSendigDatasetVariable response;
        OASRootSendigDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootSendigDatasetVariable.getExample();
        response = (OASRootSendigDatasetVariable) api.mdrRootSendigDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Class Dataset List
     */
    @isTest
    private static void mdrSendigVersionClassesClassDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1,
            'propertyClass' => Findings
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigClassDatasets response;
        OASSendigClassDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClassDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClassDatasets.getExample();
        response = (OASSendigClassDatasets) api.mdrSendigVersionClassesClassDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Class
     */
    @isTest
    private static void mdrSendigVersionClassesClassGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1,
            'propertyClass' => Findings
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigClass response;
        OASSendigClass expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClass.getExample();
        response = (OASSendigClass) api.mdrSendigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Class List
     */
    @isTest
    private static void mdrSendigVersionClassesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigClasses response;
        OASSendigClasses expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigClasses.getExample();
        response = (OASSendigClasses) api.mdrSendigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Dataset
     */
    @isTest
    private static void mdrSendigVersionDatasetsDatasetGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1,
            'dataset' => VS
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigDataset response;
        OASSendigDataset expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDataset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDataset.getExample();
        response = (OASSendigDataset) api.mdrSendigVersionDatasetsDatasetGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Dataset Variable List
     */
    @isTest
    private static void mdrSendigVersionDatasetsDatasetVariablesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1,
            'dataset' => VS
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigDatasetVariables response;
        OASSendigDatasetVariables expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariables.getExample();
        response = (OASSendigDatasetVariables) api.mdrSendigVersionDatasetsDatasetVariablesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Dataset Variable
     */
    @isTest
    private static void mdrSendigVersionDatasetsDatasetVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1,
            'dataset' => VS,
            'var' => VSTEST
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigDatasetVariable response;
        OASSendigDatasetVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasetVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasetVariable.getExample();
        response = (OASSendigDatasetVariable) api.mdrSendigVersionDatasetsDatasetVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG Dataset List
     */
    @isTest
    private static void mdrSendigVersionDatasetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigDatasets response;
        OASSendigDatasets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigDatasets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigDatasets.getExample();
        response = (OASSendigDatasets) api.mdrSendigVersionDatasetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get SENDIG product
     */
    @isTest
    private static void mdrSendigVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 3-1
        };

        OASClient client;
        OASSENDImplementationGuideSENDIGApi api;
        OASSendigProduct response;
        OASSendigProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSENDImplementationGuideSENDIGApi(client);

        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASSendigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASSendigProduct.getExample();
        response = (OASSendigProduct) api.mdrSendigVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }
}