@isTest
private class OASCDASHImplementationGuideCDASHIGApiTest {
    /**
     * 
     *
     * Get CDASHIG Class Domain List
     */
    @isTest
    private static void mdrCdashigVersionClassesClassDomainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'propertyClass' => Findings
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigClassDomains response;
        OASCdashigClassDomains expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassDomains.getExample();
        response = (OASCdashigClassDomains) api.mdrCdashigVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Class
     */
    @isTest
    private static void mdrCdashigVersionClassesClassGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'propertyClass' => Findings
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigClass response;
        OASCdashigClass expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClass.getExample();
        response = (OASCdashigClass) api.mdrCdashigVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Class Scenario List
     */
    @isTest
    private static void mdrCdashigVersionClassesClassScenariosGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'propertyClass' => Findings
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigClassScenarios response;
        OASCdashigClassScenarios expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigClassScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigClassScenarios.getExample();
        response = (OASCdashigClassScenarios) api.mdrCdashigVersionClassesClassScenariosGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Class List
     */
    @isTest
    private static void mdrCdashigVersionClassesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigProductClasses response;
        OASCdashigProductClasses expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductClasses.getExample();
        response = (OASCdashigProductClasses) api.mdrCdashigVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Domain Field
     */
    @isTest
    private static void mdrCdashigVersionDomainsDomainFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS,
            'field' => VSDAT
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigDomainField response;
        OASCdashigDomainField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainField.getExample();
        response = (OASCdashigDomainField) api.mdrCdashigVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Domain Field List
     */
    @isTest
    private static void mdrCdashigVersionDomainsDomainFieldsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigDomainFields response;
        OASCdashigDomainFields expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomainFields.getExample();
        response = (OASCdashigDomainFields) api.mdrCdashigVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Domain
     */
    @isTest
    private static void mdrCdashigVersionDomainsDomainGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigDomain response;
        OASCdashigDomain expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigDomain.getExample();
        response = (OASCdashigDomain) api.mdrCdashigVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Domain List
     */
    @isTest
    private static void mdrCdashigVersionDomainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigProductDomains response;
        OASCdashigProductDomains expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductDomains.getExample();
        response = (OASCdashigProductDomains) api.mdrCdashigVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Product
     */
    @isTest
    private static void mdrCdashigVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigProduct response;
        OASCdashigProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProduct.getExample();
        response = (OASCdashigProduct) api.mdrCdashigVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Scenario Field
     */
    @isTest
    private static void mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS,
            'scenario' => Generic,
            'field' => VSDAT
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigScenarioField response;
        OASCdashigScenarioField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioField.getExample();
        response = (OASCdashigScenarioField) api.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Scenario Field List
     */
    @isTest
    private static void mdrCdashigVersionScenariosDomainScenarioFieldsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS,
            'scenario' => HorizontalGeneric
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigScenarioFields response;
        OASCdashigScenarioFields expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenarioFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenarioFields.getExample();
        response = (OASCdashigScenarioFields) api.mdrCdashigVersionScenariosDomainScenarioFieldsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Scenario
     */
    @isTest
    private static void mdrCdashigVersionScenariosDomainScenarioGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1,
            'domain' => VS,
            'scenario' => HorizontalGeneric
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigScenario response;
        OASCdashigScenario expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigScenario.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigScenario.getExample();
        response = (OASCdashigScenario) api.mdrCdashigVersionScenariosDomainScenarioGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASHIG Scenario List
     */
    @isTest
    private static void mdrCdashigVersionScenariosGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 2-1
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASCdashigProductScenarios response;
        OASCdashigProductScenarios expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashigProductScenarios.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashigProductScenarios.getExample();
        response = (OASCdashigProductScenarios) api.mdrCdashigVersionScenariosGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Root CDASHIG Domain Field
     */
    @isTest
    private static void mdrRootCdashigDomainsDomainFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domain' => VS,
            'field' => VSDAT
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASRootCdashigDomainField response;
        OASRootCdashigDomainField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigDomainField.getExample();
        response = (OASRootCdashigDomainField) api.mdrRootCdashigDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Root CDASHIG Scenario Field
     */
    @isTest
    private static void mdrRootCdashigScenariosDomainScenarioFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domain' => VS,
            'scenario' => Generic,
            'field' => VSDAT
        };

        OASClient client;
        OASCDASHImplementationGuideCDASHIGApi api;
        OASRootCdashigScenarioField response;
        OASRootCdashigScenarioField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCDASHImplementationGuideCDASHIGApi(client);

        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashigScenarioField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashigScenarioField.getExample();
        response = (OASRootCdashigScenarioField) api.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }
}