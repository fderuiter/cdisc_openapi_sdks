@isTest
private class OASStatusesApiTest {
    /**
     * 
     *
     * Check health of system components
     */
    @isTest
    private static void healthGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASStatusesApi api;
        OASHealth response;
        OASHealth expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStatusesApi(client);

        js = JSON.serialize(OASHealth.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASHealth.getExample();
        response = (OASHealth) api.healthGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Set maintenance mode and message
     */
    @isTest
    private static void mdrMaintenanceGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASStatusesApi api;
        OASMaintenanceBody response;
        OASMaintenanceBody expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASStatusesApi(client);

        js = JSON.serialize(OASMaintenanceBody.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMaintenanceBody.getExample();
        response = (OASMaintenanceBody) api.mdrMaintenanceGet();
        System.assertEquals(expectedResponse, response);
    }
}