@isTest
private class OASProductgroupDataCollectionLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = productgroupDataCollectionLinks1;
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks3 = new OASProductgroupDataCollectionLinks();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks4 = productgroupDataCollectionLinks3;

        System.assert(productgroupDataCollectionLinks1.equals(productgroupDataCollectionLinks2));
        System.assert(productgroupDataCollectionLinks2.equals(productgroupDataCollectionLinks1));
        System.assert(productgroupDataCollectionLinks1.equals(productgroupDataCollectionLinks1));
        System.assert(productgroupDataCollectionLinks3.equals(productgroupDataCollectionLinks4));
        System.assert(productgroupDataCollectionLinks4.equals(productgroupDataCollectionLinks3));
        System.assert(productgroupDataCollectionLinks3.equals(productgroupDataCollectionLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks3 = new OASProductgroupDataCollectionLinks();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks4 = new OASProductgroupDataCollectionLinks();

        System.assert(productgroupDataCollectionLinks1.equals(productgroupDataCollectionLinks2));
        System.assert(productgroupDataCollectionLinks2.equals(productgroupDataCollectionLinks1));
        System.assert(productgroupDataCollectionLinks3.equals(productgroupDataCollectionLinks4));
        System.assert(productgroupDataCollectionLinks4.equals(productgroupDataCollectionLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = new OASProductgroupDataCollectionLinks();

        System.assertEquals(false, productgroupDataCollectionLinks1.equals('foo'));
        System.assertEquals(false, productgroupDataCollectionLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = new OASProductgroupDataCollectionLinks();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks3;

        System.assertEquals(false, productgroupDataCollectionLinks1.equals(productgroupDataCollectionLinks3));
        System.assertEquals(false, productgroupDataCollectionLinks2.equals(productgroupDataCollectionLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = new OASProductgroupDataCollectionLinks();

        System.assertEquals(productgroupDataCollectionLinks1.hashCode(), productgroupDataCollectionLinks1.hashCode());
        System.assertEquals(productgroupDataCollectionLinks2.hashCode(), productgroupDataCollectionLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks1 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks2 = OASProductgroupDataCollectionLinks.getExample();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks3 = new OASProductgroupDataCollectionLinks();
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks4 = new OASProductgroupDataCollectionLinks();

        System.assert(productgroupDataCollectionLinks1.equals(productgroupDataCollectionLinks2));
        System.assert(productgroupDataCollectionLinks3.equals(productgroupDataCollectionLinks4));
        System.assertEquals(productgroupDataCollectionLinks1.hashCode(), productgroupDataCollectionLinks2.hashCode());
        System.assertEquals(productgroupDataCollectionLinks3.hashCode(), productgroupDataCollectionLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductgroupDataCollectionLinks productgroupDataCollectionLinks = new OASProductgroupDataCollectionLinks();
        System.assertEquals(new List<OASCdashProductRefElement>(), productgroupDataCollectionLinks.cdash);
        System.assertEquals(new List<OASCdashigProductRefElement>(), productgroupDataCollectionLinks.cdashig);
        System.assertEquals(null, productgroupDataCollectionLinks.self);
    }
}
