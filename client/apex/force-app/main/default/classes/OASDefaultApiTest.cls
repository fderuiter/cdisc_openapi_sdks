@isTest
private class OASDefaultApiTest {
    /**
     * 
     *
     * Get Information About CDISC Library
     */
    @isTest
    private static void mdrAboutGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASAbout response;
        OASAbout expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASAbout.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASAbout.getExample();
        response = (OASAbout) api.mdrAboutGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Last Updated
     */
    @isTest
    private static void mdrLastupdatedGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASLastupdated response;
        OASLastupdated expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASLastupdated.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASLastupdated.getExample();
        response = (OASLastupdated) api.mdrLastupdatedGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Product Group Data Analysis
     */
    @isTest
    private static void mdrProductsDataAnalysisGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProductgroupDataAnalysis response;
        OASProductgroupDataAnalysis expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataAnalysis.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataAnalysis.getExample();
        response = (OASProductgroupDataAnalysis) api.mdrProductsDataAnalysisGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Product Group Data Collection
     */
    @isTest
    private static void mdrProductsDataCollectionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProductgroupDataCollection response;
        OASProductgroupDataCollection expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataCollection.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataCollection.getExample();
        response = (OASProductgroupDataCollection) api.mdrProductsDataCollectionGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Product Group Data Tabulation
     */
    @isTest
    private static void mdrProductsDataTabulationGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProductgroupDataTabulation response;
        OASProductgroupDataTabulation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupDataTabulation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupDataTabulation.getExample();
        response = (OASProductgroupDataTabulation) api.mdrProductsDataTabulationGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Products
     */
    @isTest
    private static void mdrProductsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProducts response;
        OASProducts expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProducts.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProducts.getExample();
        response = (OASProducts) api.mdrProductsGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Product Group QRS
     */
    @isTest
    private static void mdrProductsMeasuresGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProductgroupQrs response;
        OASProductgroupQrs expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupQrs.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupQrs.getExample();
        response = (OASProductgroupQrs) api.mdrProductsMeasuresGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get CDISC Library Product Group Terminology
     */
    @isTest
    private static void mdrProductsTerminologyGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASProductgroupTerminology response;
        OASProductgroupTerminology expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASProductgroupTerminology.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASProductgroupTerminology.getExample();
        response = (OASProductgroupTerminology) api.mdrProductsTerminologyGet();
        System.assertEquals(expectedResponse, response);
    }
}