@isTest
private class OASQrsItemsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = qrsItems1;
        OASQrsItems qrsItems3 = new OASQrsItems();
        OASQrsItems qrsItems4 = qrsItems3;

        System.assert(qrsItems1.equals(qrsItems2));
        System.assert(qrsItems2.equals(qrsItems1));
        System.assert(qrsItems1.equals(qrsItems1));
        System.assert(qrsItems3.equals(qrsItems4));
        System.assert(qrsItems4.equals(qrsItems3));
        System.assert(qrsItems3.equals(qrsItems3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = OASQrsItems.getExample();
        OASQrsItems qrsItems3 = new OASQrsItems();
        OASQrsItems qrsItems4 = new OASQrsItems();

        System.assert(qrsItems1.equals(qrsItems2));
        System.assert(qrsItems2.equals(qrsItems1));
        System.assert(qrsItems3.equals(qrsItems4));
        System.assert(qrsItems4.equals(qrsItems3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = new OASQrsItems();

        System.assertEquals(false, qrsItems1.equals('foo'));
        System.assertEquals(false, qrsItems2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = new OASQrsItems();
        OASQrsItems qrsItems3;

        System.assertEquals(false, qrsItems1.equals(qrsItems3));
        System.assertEquals(false, qrsItems2.equals(qrsItems3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = new OASQrsItems();

        System.assertEquals(qrsItems1.hashCode(), qrsItems1.hashCode());
        System.assertEquals(qrsItems2.hashCode(), qrsItems2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItems qrsItems1 = OASQrsItems.getExample();
        OASQrsItems qrsItems2 = OASQrsItems.getExample();
        OASQrsItems qrsItems3 = new OASQrsItems();
        OASQrsItems qrsItems4 = new OASQrsItems();

        System.assert(qrsItems1.equals(qrsItems2));
        System.assert(qrsItems3.equals(qrsItems4));
        System.assertEquals(qrsItems1.hashCode(), qrsItems2.hashCode());
        System.assertEquals(qrsItems3.hashCode(), qrsItems4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsItems qrsItems = new OASQrsItems();
        Map<String, String> x-property-mappings = qrsItems.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
