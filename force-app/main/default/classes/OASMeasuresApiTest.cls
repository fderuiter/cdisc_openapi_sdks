@isTest
private class OASMeasuresApiTest {
    /**
     * 
     *
     * Get QRS Product
     */
    @isTest
    private static void mdrQrsMeasureVersionGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'measure' => AIMS1,
            'version' => 1-0
        };

        OASClient client;
        OASMeasuresApi api;
        OASQrsProduct response;
        OASQrsProduct expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMeasuresApi(client);

        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/vnd.ms-excel');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsProduct.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsProduct.getExample();
        response = (OASQrsProduct) api.mdrQrsMeasureVersionGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get QRS Item List
     */
    @isTest
    private static void mdrQrsMeasureVersionItemsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'measure' => AIMS1,
            'version' => 1-0
        };

        OASClient client;
        OASMeasuresApi api;
        OASQrsItems response;
        OASQrsItems expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMeasuresApi(client);

        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItems.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItems.getExample();
        response = (OASQrsItems) api.mdrQrsMeasureVersionItemsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get QRS Item
     */
    @isTest
    private static void mdrQrsMeasureVersionItemsItemGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'measure' => AIMS1,
            'version' => 1-0,
            'item' => AIMS01.001
        };

        OASClient client;
        OASMeasuresApi api;
        OASQrsItem response;
        OASQrsItem expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMeasuresApi(client);

        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsItem.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsItem.getExample();
        response = (OASQrsItem) api.mdrQrsMeasureVersionItemsItemGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get QRS Response Group List
     */
    @isTest
    private static void mdrQrsMeasureVersionResponsegroupsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'measure' => AIMS1,
            'version' => 1-0
        };

        OASClient client;
        OASMeasuresApi api;
        OASQrsResponsegroups response;
        OASQrsResponsegroups expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMeasuresApi(client);

        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroups.getExample();
        response = (OASQrsResponsegroups) api.mdrQrsMeasureVersionResponsegroupsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get QRS Response Group
     */
    @isTest
    private static void mdrQrsMeasureVersionResponsegroupsResponsegroupGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'measure' => AIMS1,
            'version' => 1-0,
            'responsegroup' => AIMS1.11to12
        };

        OASClient client;
        OASMeasuresApi api;
        OASQrsResponsegroup response;
        OASQrsResponsegroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMeasuresApi(client);

        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/xml');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASQrsResponsegroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQrsResponsegroup.getExample();
        response = (OASQrsResponsegroup) api.mdrQrsMeasureVersionResponsegroupsResponsegroupGet(params);
        System.assertEquals(expectedResponse, response);
    }
}