@isTest
private class OASControlledTerminologyCTApiTest {
    /**
     * 
     *
     * Get CDISC Library CT Package List
     */
    @isTest
    private static void mdrCtPackagesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtPackages response;
        OASCtPackages expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackages.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackages.getExample();
        response = (OASCtPackages) api.mdrCtPackagesGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library CT Package Codelist
     */
    @isTest
    private static void mdrCtPackagesPackageCodelistsCodelistGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_package' => sdtmct-2019-12-20,
            'codelist' => C67154
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtCodelist response;
        OASCtCodelist expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelist.getExample();
        response = (OASCtCodelist) api.mdrCtPackagesPackageCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library CT Package Codelist Term List
     */
    @isTest
    private static void mdrCtPackagesPackageCodelistsCodelistTermsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_package' => sdtmct-2019-12-20,
            'codelist' => C67154
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtCodelistTerms response;
        OASCtCodelistTerms expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtCodelistTerms.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtCodelistTerms.getExample();
        response = (OASCtCodelistTerms) api.mdrCtPackagesPackageCodelistsCodelistTermsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library CT Package Codelist Term
     */
    @isTest
    private static void mdrCtPackagesPackageCodelistsCodelistTermsTermGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_package' => sdtmct-2019-12-20,
            'codelist' => C67154,
            'term' => C64796
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtTerm response;
        OASCtTerm expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtTerm.getExample();
        response = (OASCtTerm) api.mdrCtPackagesPackageCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library CT Package Codelist List
     */
    @isTest
    private static void mdrCtPackagesPackageCodelistsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_package' => sdtmct-2019-12-20
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtPackageCodelists response;
        OASCtPackageCodelists expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackageCodelists.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackageCodelists.getExample();
        response = (OASCtPackageCodelists) api.mdrCtPackagesPackageCodelistsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library CT Package
     */
    @isTest
    private static void mdrCtPackagesProductGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'product' => sdtmct-2019-12-20
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASCtPackage response;
        OASCtPackage expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCtPackage.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCtPackage.getExample();
        response = (OASCtPackage) api.mdrCtPackagesProductGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Root CT Codelist
     */
    @isTest
    private static void mdrRootCtProductGroupCodelistsCodelistGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productGroup' => sdtmct,
            'codelist' => C67154
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASRootCtCodelist response;
        OASRootCtCodelist expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtCodelist.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtCodelist.getExample();
        response = (OASRootCtCodelist) api.mdrRootCtProductGroupCodelistsCodelistGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Root CT Term
     */
    @isTest
    private static void mdrRootCtProductGroupCodelistsCodelistTermsTermGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'productGroup' => sdtmct,
            'codelist' => C67154,
            'term' => C64796
        };

        OASClient client;
        OASControlledTerminologyCTApi api;
        OASRootCtTerm response;
        OASRootCtTerm expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASControlledTerminologyCTApi(client);

        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASRootCtTerm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASRootCtTerm.getExample();
        response = (OASRootCtTerm) api.mdrRootCtProductGroupCodelistsCodelistTermsTermGet(params);
        System.assertEquals(expectedResponse, response);
    }
}