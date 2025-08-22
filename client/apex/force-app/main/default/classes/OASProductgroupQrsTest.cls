@isTest
private class OASProductgroupQrsTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = productgroupQrs1;
        OASProductgroupQrs productgroupQrs3 = new OASProductgroupQrs();
        OASProductgroupQrs productgroupQrs4 = productgroupQrs3;

        System.assert(productgroupQrs1.equals(productgroupQrs2));
        System.assert(productgroupQrs2.equals(productgroupQrs1));
        System.assert(productgroupQrs1.equals(productgroupQrs1));
        System.assert(productgroupQrs3.equals(productgroupQrs4));
        System.assert(productgroupQrs4.equals(productgroupQrs3));
        System.assert(productgroupQrs3.equals(productgroupQrs3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs3 = new OASProductgroupQrs();
        OASProductgroupQrs productgroupQrs4 = new OASProductgroupQrs();

        System.assert(productgroupQrs1.equals(productgroupQrs2));
        System.assert(productgroupQrs2.equals(productgroupQrs1));
        System.assert(productgroupQrs3.equals(productgroupQrs4));
        System.assert(productgroupQrs4.equals(productgroupQrs3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = new OASProductgroupQrs();

        System.assertEquals(false, productgroupQrs1.equals('foo'));
        System.assertEquals(false, productgroupQrs2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = new OASProductgroupQrs();
        OASProductgroupQrs productgroupQrs3;

        System.assertEquals(false, productgroupQrs1.equals(productgroupQrs3));
        System.assertEquals(false, productgroupQrs2.equals(productgroupQrs3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = new OASProductgroupQrs();

        System.assertEquals(productgroupQrs1.hashCode(), productgroupQrs1.hashCode());
        System.assertEquals(productgroupQrs2.hashCode(), productgroupQrs2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupQrs productgroupQrs1 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs2 = OASProductgroupQrs.getExample();
        OASProductgroupQrs productgroupQrs3 = new OASProductgroupQrs();
        OASProductgroupQrs productgroupQrs4 = new OASProductgroupQrs();

        System.assert(productgroupQrs1.equals(productgroupQrs2));
        System.assert(productgroupQrs3.equals(productgroupQrs4));
        System.assertEquals(productgroupQrs1.hashCode(), productgroupQrs2.hashCode());
        System.assertEquals(productgroupQrs3.hashCode(), productgroupQrs4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductgroupQrs productgroupQrs = new OASProductgroupQrs();
        Map<String, String> x-property-mappings = productgroupQrs.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
