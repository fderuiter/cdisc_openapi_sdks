@isTest
private class OASQrsResponsesTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = qrsResponses1;
        OASQrsResponses qrsResponses3 = new OASQrsResponses();
        OASQrsResponses qrsResponses4 = qrsResponses3;

        System.assert(qrsResponses1.equals(qrsResponses2));
        System.assert(qrsResponses2.equals(qrsResponses1));
        System.assert(qrsResponses1.equals(qrsResponses1));
        System.assert(qrsResponses3.equals(qrsResponses4));
        System.assert(qrsResponses4.equals(qrsResponses3));
        System.assert(qrsResponses3.equals(qrsResponses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses3 = new OASQrsResponses();
        OASQrsResponses qrsResponses4 = new OASQrsResponses();

        System.assert(qrsResponses1.equals(qrsResponses2));
        System.assert(qrsResponses2.equals(qrsResponses1));
        System.assert(qrsResponses3.equals(qrsResponses4));
        System.assert(qrsResponses4.equals(qrsResponses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = new OASQrsResponses();

        System.assertEquals(false, qrsResponses1.equals('foo'));
        System.assertEquals(false, qrsResponses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = new OASQrsResponses();
        OASQrsResponses qrsResponses3;

        System.assertEquals(false, qrsResponses1.equals(qrsResponses3));
        System.assertEquals(false, qrsResponses2.equals(qrsResponses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = new OASQrsResponses();

        System.assertEquals(qrsResponses1.hashCode(), qrsResponses1.hashCode());
        System.assertEquals(qrsResponses2.hashCode(), qrsResponses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponses qrsResponses1 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses2 = OASQrsResponses.getExample();
        OASQrsResponses qrsResponses3 = new OASQrsResponses();
        OASQrsResponses qrsResponses4 = new OASQrsResponses();

        System.assert(qrsResponses1.equals(qrsResponses2));
        System.assert(qrsResponses3.equals(qrsResponses4));
        System.assertEquals(qrsResponses1.hashCode(), qrsResponses2.hashCode());
        System.assertEquals(qrsResponses3.hashCode(), qrsResponses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsResponses qrsResponses = new OASQrsResponses();
        Map<String, String> x-property-mappings = qrsResponses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
