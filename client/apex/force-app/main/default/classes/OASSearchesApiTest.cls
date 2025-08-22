@isTest
private class OASSearchesApiTest {
    /**
     * 
     *
     * Get Search Results Across CDISC Library
     */
    @isTest
    private static void mdrSearchGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'null',
            'highlight' => 'null',
            'start' => '',
            'pageSize' => '',
            'propertyClass' => 'null',
            'codelist' => 'null',
            'conceptId' => 'null',
            'core' => 'null',
            'dataStructure' => 'null',
            'datasetStructure' => 'null',
            'definition' => 'null',
            'description' => 'null',
            'domain' => 'null',
            'effectiveDate' => 'null',
            'extensible' => 'null',
            'href' => 'null',
            'label' => 'null',
            'measureType' => 'null',
            'name' => 'null',
            'preferredTerm' => 'null',
            'product' => 'null',
            'productGroup' => 'null',
            'registrationStatus' => 'null',
            'roleDescription' => 'null',
            'sdtmTarget' => 'null',
            'simpleDatatype' => 'null',
            'submissionValue' => 'null',
            'synonyms' => 'null',
            'type' => 'null',
            'uiHref' => 'null',
            'valueDomain' => 'null',
            'variableSet' => 'null',
            'version' => 'null'
        };

        OASClient client;
        OASSearchesApi api;
        OASDefaultSearchResponse response;
        OASDefaultSearchResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSearchesApi(client);

        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDefaultSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultSearchResponse.getExample();
        response = (OASDefaultSearchResponse) api.mdrSearchGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Search Results Across CDISC Library
     */
    @isTest
    private static void mdrSearchScopesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASSearchesApi api;
        OASMdrSearchScopesGet200Response response;
        OASMdrSearchScopesGet200Response expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSearchesApi(client);

        js = JSON.serialize(OASMdrSearchScopesGet200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMdrSearchScopesGet200Response.getExample();
        response = (OASMdrSearchScopesGet200Response) api.mdrSearchScopesGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Search Results Limited to Scope
     */
    @isTest
    private static void mdrSearchScopesScopeGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'scope' => ''
        };

        OASClient client;
        OASSearchesApi api;
        OASScopeValues response;
        OASScopeValues expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASSearchesApi(client);

        js = JSON.serialize(OASScopeValues.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScopeValues.getExample();
        response = (OASScopeValues) api.mdrSearchScopesScopeGet(params);
        System.assertEquals(expectedResponse, response);
    }
}