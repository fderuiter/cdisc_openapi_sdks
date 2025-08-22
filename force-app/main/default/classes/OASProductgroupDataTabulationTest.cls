@isTest
private class OASProductgroupDataTabulationTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = productgroupDataTabulation1;
        OASProductgroupDataTabulation productgroupDataTabulation3 = new OASProductgroupDataTabulation();
        OASProductgroupDataTabulation productgroupDataTabulation4 = productgroupDataTabulation3;

        System.assert(productgroupDataTabulation1.equals(productgroupDataTabulation2));
        System.assert(productgroupDataTabulation2.equals(productgroupDataTabulation1));
        System.assert(productgroupDataTabulation1.equals(productgroupDataTabulation1));
        System.assert(productgroupDataTabulation3.equals(productgroupDataTabulation4));
        System.assert(productgroupDataTabulation4.equals(productgroupDataTabulation3));
        System.assert(productgroupDataTabulation3.equals(productgroupDataTabulation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation3 = new OASProductgroupDataTabulation();
        OASProductgroupDataTabulation productgroupDataTabulation4 = new OASProductgroupDataTabulation();

        System.assert(productgroupDataTabulation1.equals(productgroupDataTabulation2));
        System.assert(productgroupDataTabulation2.equals(productgroupDataTabulation1));
        System.assert(productgroupDataTabulation3.equals(productgroupDataTabulation4));
        System.assert(productgroupDataTabulation4.equals(productgroupDataTabulation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = new OASProductgroupDataTabulation();

        System.assertEquals(false, productgroupDataTabulation1.equals('foo'));
        System.assertEquals(false, productgroupDataTabulation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = new OASProductgroupDataTabulation();
        OASProductgroupDataTabulation productgroupDataTabulation3;

        System.assertEquals(false, productgroupDataTabulation1.equals(productgroupDataTabulation3));
        System.assertEquals(false, productgroupDataTabulation2.equals(productgroupDataTabulation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = new OASProductgroupDataTabulation();

        System.assertEquals(productgroupDataTabulation1.hashCode(), productgroupDataTabulation1.hashCode());
        System.assertEquals(productgroupDataTabulation2.hashCode(), productgroupDataTabulation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataTabulation productgroupDataTabulation1 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation2 = OASProductgroupDataTabulation.getExample();
        OASProductgroupDataTabulation productgroupDataTabulation3 = new OASProductgroupDataTabulation();
        OASProductgroupDataTabulation productgroupDataTabulation4 = new OASProductgroupDataTabulation();

        System.assert(productgroupDataTabulation1.equals(productgroupDataTabulation2));
        System.assert(productgroupDataTabulation3.equals(productgroupDataTabulation4));
        System.assertEquals(productgroupDataTabulation1.hashCode(), productgroupDataTabulation2.hashCode());
        System.assertEquals(productgroupDataTabulation3.hashCode(), productgroupDataTabulation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductgroupDataTabulation productgroupDataTabulation = new OASProductgroupDataTabulation();
        Map<String, String> x-property-mappings = productgroupDataTabulation.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
