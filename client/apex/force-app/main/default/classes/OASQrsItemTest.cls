@isTest
private class OASQrsItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = qrsItem1;
        OASQrsItem qrsItem3 = new OASQrsItem();
        OASQrsItem qrsItem4 = qrsItem3;

        System.assert(qrsItem1.equals(qrsItem2));
        System.assert(qrsItem2.equals(qrsItem1));
        System.assert(qrsItem1.equals(qrsItem1));
        System.assert(qrsItem3.equals(qrsItem4));
        System.assert(qrsItem4.equals(qrsItem3));
        System.assert(qrsItem3.equals(qrsItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = OASQrsItem.getExample();
        OASQrsItem qrsItem3 = new OASQrsItem();
        OASQrsItem qrsItem4 = new OASQrsItem();

        System.assert(qrsItem1.equals(qrsItem2));
        System.assert(qrsItem2.equals(qrsItem1));
        System.assert(qrsItem3.equals(qrsItem4));
        System.assert(qrsItem4.equals(qrsItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = new OASQrsItem();

        System.assertEquals(false, qrsItem1.equals('foo'));
        System.assertEquals(false, qrsItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = new OASQrsItem();
        OASQrsItem qrsItem3;

        System.assertEquals(false, qrsItem1.equals(qrsItem3));
        System.assertEquals(false, qrsItem2.equals(qrsItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = new OASQrsItem();

        System.assertEquals(qrsItem1.hashCode(), qrsItem1.hashCode());
        System.assertEquals(qrsItem2.hashCode(), qrsItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItem qrsItem1 = OASQrsItem.getExample();
        OASQrsItem qrsItem2 = OASQrsItem.getExample();
        OASQrsItem qrsItem3 = new OASQrsItem();
        OASQrsItem qrsItem4 = new OASQrsItem();

        System.assert(qrsItem1.equals(qrsItem2));
        System.assert(qrsItem3.equals(qrsItem4));
        System.assertEquals(qrsItem1.hashCode(), qrsItem2.hashCode());
        System.assertEquals(qrsItem3.hashCode(), qrsItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsItem qrsItem = new OASQrsItem();
        Map<String, String> x-property-mappings = qrsItem.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
