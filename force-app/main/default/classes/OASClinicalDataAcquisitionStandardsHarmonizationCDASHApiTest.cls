@isTest
private class OASClinicalDataAcquisitionStandardsHarmonizationCDASHApiTest {
    /**
     * 
     *
     * Get CDASH Class Domain List
     */
    @isTest
    private static void mdrCdashVersionClassesClassDomainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'propertyClass' => SpecialPurpose
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashClassDomains response;
        OASCdashClassDomains expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassDomains.getExample();
        response = (OASCdashClassDomains) api.mdrCdashVersionClassesClassDomainsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Class Field
     */
    @isTest
    private static void mdrCdashVersionClassesClassFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'propertyClass' => Timing,
            'field' => --DAT
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashClassField response;
        OASCdashClassField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClassField.getExample();
        response = (OASCdashClassField) api.mdrCdashVersionClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Class
     */
    @isTest
    private static void mdrCdashVersionClassesClassGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'propertyClass' => Timing
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashClass response;
        OASCdashClass expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashClass.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashClass.getExample();
        response = (OASCdashClass) api.mdrCdashVersionClassesClassGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Class List
     */
    @isTest
    private static void mdrCdashVersionClassesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashProductClasses response;
        OASCdashProductClasses expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductClasses.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductClasses.getExample();
        response = (OASCdashProductClasses) api.mdrCdashVersionClassesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Domain Field
     */
    @isTest
    private static void mdrCdashVersionDomainsDomainFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'domain' => DM,
            'field' => AGE
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashDomainField response;
        OASCdashDomainField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainField.getExample();
        response = (OASCdashDomainField) api.mdrCdashVersionDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Domain Field List
     */
    @isTest
    private static void mdrCdashVersionDomainsDomainFieldsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'domain' => DM
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashDomainFields response;
        OASCdashDomainFields expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomainFields.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomainFields.getExample();
        response = (OASCdashDomainFields) api.mdrCdashVersionDomainsDomainFieldsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Domain
     */
    @isTest
    private static void mdrCdashVersionDomainsDomainGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1,
            'domain' => DM
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashDomain response;
        OASCdashDomain expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashDomain.getExample();
        response = (OASCdashDomain) api.mdrCdashVersionDomainsDomainGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Domain List
     */
    @isTest
    private static void mdrCdashVersionDomainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashProductDomains response;
        OASCdashProductDomains expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProductDomains.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProductDomains.getExample();
        response = (OASCdashProductDomains) api.mdrCdashVersionDomainsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDASH Product
     */
    @isTest
    private static void mdrCdashVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'version' => 1-1
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASCdashProduct response;
        OASCdashProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCdashProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCdashProduct.getExample();
        response = (OASCdashProduct) api.mdrCdashVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Root CDASH Class Field
     */
    @isTest
    private static void mdrRootCdashClassesClassFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'propertyClass' => Timing,
            'field' => --DAT
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASRootCdashClassField response;
        OASRootCdashClassField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashClassField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashClassField.getExample();
        response = (OASRootCdashClassField) api.mdrRootCdashClassesClassFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get Root CDASH Domain Field
     */
    @isTest
    private static void mdrRootCdashDomainsDomainFieldsFieldGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domain' => DM,
            'field' => AGE
        };

        OASClient client;
        OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi api;
        OASRootCdashDomainField response;
        OASRootCdashDomainField expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi(client);

        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCdashDomainField.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCdashDomainField.getExample();
        response = (OASRootCdashDomainField) api.mdrRootCdashDomainsDomainFieldsFieldGet(params);
        System.assertEquals(expectedResponse, response);
    }
}