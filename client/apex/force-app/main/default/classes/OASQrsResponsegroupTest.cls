@isTest
private class OASQrsResponsegroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = qrsResponsegroup1;
        OASQrsResponsegroup qrsResponsegroup3 = new OASQrsResponsegroup();
        OASQrsResponsegroup qrsResponsegroup4 = qrsResponsegroup3;

        System.assert(qrsResponsegroup1.equals(qrsResponsegroup2));
        System.assert(qrsResponsegroup2.equals(qrsResponsegroup1));
        System.assert(qrsResponsegroup1.equals(qrsResponsegroup1));
        System.assert(qrsResponsegroup3.equals(qrsResponsegroup4));
        System.assert(qrsResponsegroup4.equals(qrsResponsegroup3));
        System.assert(qrsResponsegroup3.equals(qrsResponsegroup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup3 = new OASQrsResponsegroup();
        OASQrsResponsegroup qrsResponsegroup4 = new OASQrsResponsegroup();

        System.assert(qrsResponsegroup1.equals(qrsResponsegroup2));
        System.assert(qrsResponsegroup2.equals(qrsResponsegroup1));
        System.assert(qrsResponsegroup3.equals(qrsResponsegroup4));
        System.assert(qrsResponsegroup4.equals(qrsResponsegroup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = new OASQrsResponsegroup();

        System.assertEquals(false, qrsResponsegroup1.equals('foo'));
        System.assertEquals(false, qrsResponsegroup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = new OASQrsResponsegroup();
        OASQrsResponsegroup qrsResponsegroup3;

        System.assertEquals(false, qrsResponsegroup1.equals(qrsResponsegroup3));
        System.assertEquals(false, qrsResponsegroup2.equals(qrsResponsegroup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = new OASQrsResponsegroup();

        System.assertEquals(qrsResponsegroup1.hashCode(), qrsResponsegroup1.hashCode());
        System.assertEquals(qrsResponsegroup2.hashCode(), qrsResponsegroup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroup qrsResponsegroup1 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup2 = OASQrsResponsegroup.getExample();
        OASQrsResponsegroup qrsResponsegroup3 = new OASQrsResponsegroup();
        OASQrsResponsegroup qrsResponsegroup4 = new OASQrsResponsegroup();

        System.assert(qrsResponsegroup1.equals(qrsResponsegroup2));
        System.assert(qrsResponsegroup3.equals(qrsResponsegroup4));
        System.assertEquals(qrsResponsegroup1.hashCode(), qrsResponsegroup2.hashCode());
        System.assertEquals(qrsResponsegroup3.hashCode(), qrsResponsegroup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsResponsegroup qrsResponsegroup = new OASQrsResponsegroup();
        Map<String, String> x-property-mappings = qrsResponsegroup.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
