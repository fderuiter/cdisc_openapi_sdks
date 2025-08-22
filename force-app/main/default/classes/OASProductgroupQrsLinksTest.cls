@isTest
private class OASProductgroupQrsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = productgroupQrsLinks1;
        OASProductgroupQrsLinks productgroupQrsLinks3 = new OASProductgroupQrsLinks();
        OASProductgroupQrsLinks productgroupQrsLinks4 = productgroupQrsLinks3;

        System.assert(productgroupQrsLinks1.equals(productgroupQrsLinks2));
        System.assert(productgroupQrsLinks2.equals(productgroupQrsLinks1));
        System.assert(productgroupQrsLinks1.equals(productgroupQrsLinks1));
        System.assert(productgroupQrsLinks3.equals(productgroupQrsLinks4));
        System.assert(productgroupQrsLinks4.equals(productgroupQrsLinks3));
        System.assert(productgroupQrsLinks3.equals(productgroupQrsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks3 = new OASProductgroupQrsLinks();
        OASProductgroupQrsLinks productgroupQrsLinks4 = new OASProductgroupQrsLinks();

        System.assert(productgroupQrsLinks1.equals(productgroupQrsLinks2));
        System.assert(productgroupQrsLinks2.equals(productgroupQrsLinks1));
        System.assert(productgroupQrsLinks3.equals(productgroupQrsLinks4));
        System.assert(productgroupQrsLinks4.equals(productgroupQrsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = new OASProductgroupQrsLinks();

        System.assertEquals(false, productgroupQrsLinks1.equals('foo'));
        System.assertEquals(false, productgroupQrsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = new OASProductgroupQrsLinks();
        OASProductgroupQrsLinks productgroupQrsLinks3;

        System.assertEquals(false, productgroupQrsLinks1.equals(productgroupQrsLinks3));
        System.assertEquals(false, productgroupQrsLinks2.equals(productgroupQrsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = new OASProductgroupQrsLinks();

        System.assertEquals(productgroupQrsLinks1.hashCode(), productgroupQrsLinks1.hashCode());
        System.assertEquals(productgroupQrsLinks2.hashCode(), productgroupQrsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupQrsLinks productgroupQrsLinks1 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks2 = OASProductgroupQrsLinks.getExample();
        OASProductgroupQrsLinks productgroupQrsLinks3 = new OASProductgroupQrsLinks();
        OASProductgroupQrsLinks productgroupQrsLinks4 = new OASProductgroupQrsLinks();

        System.assert(productgroupQrsLinks1.equals(productgroupQrsLinks2));
        System.assert(productgroupQrsLinks3.equals(productgroupQrsLinks4));
        System.assertEquals(productgroupQrsLinks1.hashCode(), productgroupQrsLinks2.hashCode());
        System.assertEquals(productgroupQrsLinks3.hashCode(), productgroupQrsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductgroupQrsLinks productgroupQrsLinks = new OASProductgroupQrsLinks();
        System.assertEquals(new List<OASQrsRefElement>(), productgroupQrsLinks.qrs);
        System.assertEquals(null, productgroupQrsLinks.self);
    }
}
