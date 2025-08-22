@isTest
private class OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiTest {
    /**
     * 
     *
     * Get ADaM Data Structure List
     */
    @isTest
    private static void mdrAdamProductDatastructuresGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamProductDatastructures response;
        OASAdamProductDatastructures expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProductDatastructures.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProductDatastructures.getExample();
        response = (OASAdamProductDatastructures) api.mdrAdamProductDatastructuresGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Data Structure
     */
    @isTest
    private static void mdrAdamProductDatastructuresStructureGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1,
            'structure' => ADSL
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamDatastructure response;
        OASAdamDatastructure expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructure.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructure.getExample();
        response = (OASAdamDatastructure) api.mdrAdamProductDatastructuresStructureGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Variable List
     */
    @isTest
    private static void mdrAdamProductDatastructuresStructureVariablesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1,
            'structure' => ADSL
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamDatastructureVariables response;
        OASAdamDatastructureVariables expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVariables.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVariables.getExample();
        response = (OASAdamDatastructureVariables) api.mdrAdamProductDatastructuresStructureVariablesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Variable
     */
    @isTest
    private static void mdrAdamProductDatastructuresStructureVariablesVarGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1,
            'structure' => ADSL,
            'var' => SITEGRy
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamVariable response;
        OASAdamVariable expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVariable.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVariable.getExample();
        response = (OASAdamVariable) api.mdrAdamProductDatastructuresStructureVariablesVarGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Variable Set List
     */
    @isTest
    private static void mdrAdamProductDatastructuresStructureVarsetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1,
            'structure' => ADSL
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamDatastructureVarsets response;
        OASAdamDatastructureVarsets expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamDatastructureVarsets.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamDatastructureVarsets.getExample();
        response = (OASAdamDatastructureVarsets) api.mdrAdamProductDatastructuresStructureVarsetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Variable Set
     */
    @isTest
    private static void mdrAdamProductDatastructuresStructureVarsetsVarsetGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1,
            'structure' => ADSL,
            'varset' => Identifier
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamVarset response;
        OASAdamVarset expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamVarset.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamVarset.getExample();
        response = (OASAdamVarset) api.mdrAdamProductDatastructuresStructureVarsetsVarsetGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get ADaM Product
     */
    @isTest
    private static void mdrAdamProductGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => adamig-1-1
        };

        OASClient client;
        OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api;
        OASAdamProduct response;
        OASAdamProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(client);

        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAdamProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAdamProduct.getExample();
        response = (OASAdamProduct) api.mdrAdamProductGet(params);
        System.assertEquals(expectedResponse, response);
    }
}