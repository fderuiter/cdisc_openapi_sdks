@isTest
private class OASProductgroupDataCollectionTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = productgroupDataCollection1;
        OASProductgroupDataCollection productgroupDataCollection3 = new OASProductgroupDataCollection();
        OASProductgroupDataCollection productgroupDataCollection4 = productgroupDataCollection3;

        System.assert(productgroupDataCollection1.equals(productgroupDataCollection2));
        System.assert(productgroupDataCollection2.equals(productgroupDataCollection1));
        System.assert(productgroupDataCollection1.equals(productgroupDataCollection1));
        System.assert(productgroupDataCollection3.equals(productgroupDataCollection4));
        System.assert(productgroupDataCollection4.equals(productgroupDataCollection3));
        System.assert(productgroupDataCollection3.equals(productgroupDataCollection3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection3 = new OASProductgroupDataCollection();
        OASProductgroupDataCollection productgroupDataCollection4 = new OASProductgroupDataCollection();

        System.assert(productgroupDataCollection1.equals(productgroupDataCollection2));
        System.assert(productgroupDataCollection2.equals(productgroupDataCollection1));
        System.assert(productgroupDataCollection3.equals(productgroupDataCollection4));
        System.assert(productgroupDataCollection4.equals(productgroupDataCollection3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = new OASProductgroupDataCollection();

        System.assertEquals(false, productgroupDataCollection1.equals('foo'));
        System.assertEquals(false, productgroupDataCollection2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = new OASProductgroupDataCollection();
        OASProductgroupDataCollection productgroupDataCollection3;

        System.assertEquals(false, productgroupDataCollection1.equals(productgroupDataCollection3));
        System.assertEquals(false, productgroupDataCollection2.equals(productgroupDataCollection3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = new OASProductgroupDataCollection();

        System.assertEquals(productgroupDataCollection1.hashCode(), productgroupDataCollection1.hashCode());
        System.assertEquals(productgroupDataCollection2.hashCode(), productgroupDataCollection2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataCollection productgroupDataCollection1 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection2 = OASProductgroupDataCollection.getExample();
        OASProductgroupDataCollection productgroupDataCollection3 = new OASProductgroupDataCollection();
        OASProductgroupDataCollection productgroupDataCollection4 = new OASProductgroupDataCollection();

        System.assert(productgroupDataCollection1.equals(productgroupDataCollection2));
        System.assert(productgroupDataCollection3.equals(productgroupDataCollection4));
        System.assertEquals(productgroupDataCollection1.hashCode(), productgroupDataCollection2.hashCode());
        System.assertEquals(productgroupDataCollection3.hashCode(), productgroupDataCollection4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductgroupDataCollection productgroupDataCollection = new OASProductgroupDataCollection();
        Map<String, String> x-property-mappings = productgroupDataCollection.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
