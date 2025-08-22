@isTest
private class OASProductgroupDataTabulationLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = productgroupDataTabulationLinks1;
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks3 = new OASProductgroupDataTabulationLinks();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks4 = productgroupDataTabulationLinks3;

        System.assert(productgroupDataTabulationLinks1.equals(productgroupDataTabulationLinks2));
        System.assert(productgroupDataTabulationLinks2.equals(productgroupDataTabulationLinks1));
        System.assert(productgroupDataTabulationLinks1.equals(productgroupDataTabulationLinks1));
        System.assert(productgroupDataTabulationLinks3.equals(productgroupDataTabulationLinks4));
        System.assert(productgroupDataTabulationLinks4.equals(productgroupDataTabulationLinks3));
        System.assert(productgroupDataTabulationLinks3.equals(productgroupDataTabulationLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks3 = new OASProductgroupDataTabulationLinks();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks4 = new OASProductgroupDataTabulationLinks();

        System.assert(productgroupDataTabulationLinks1.equals(productgroupDataTabulationLinks2));
        System.assert(productgroupDataTabulationLinks2.equals(productgroupDataTabulationLinks1));
        System.assert(productgroupDataTabulationLinks3.equals(productgroupDataTabulationLinks4));
        System.assert(productgroupDataTabulationLinks4.equals(productgroupDataTabulationLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = new OASProductgroupDataTabulationLinks();

        System.assertEquals(false, productgroupDataTabulationLinks1.equals('foo'));
        System.assertEquals(false, productgroupDataTabulationLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = new OASProductgroupDataTabulationLinks();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks3;

        System.assertEquals(false, productgroupDataTabulationLinks1.equals(productgroupDataTabulationLinks3));
        System.assertEquals(false, productgroupDataTabulationLinks2.equals(productgroupDataTabulationLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = new OASProductgroupDataTabulationLinks();

        System.assertEquals(productgroupDataTabulationLinks1.hashCode(), productgroupDataTabulationLinks1.hashCode());
        System.assertEquals(productgroupDataTabulationLinks2.hashCode(), productgroupDataTabulationLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks1 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks2 = OASProductgroupDataTabulationLinks.getExample();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks3 = new OASProductgroupDataTabulationLinks();
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks4 = new OASProductgroupDataTabulationLinks();

        System.assert(productgroupDataTabulationLinks1.equals(productgroupDataTabulationLinks2));
        System.assert(productgroupDataTabulationLinks3.equals(productgroupDataTabulationLinks4));
        System.assertEquals(productgroupDataTabulationLinks1.hashCode(), productgroupDataTabulationLinks2.hashCode());
        System.assertEquals(productgroupDataTabulationLinks3.hashCode(), productgroupDataTabulationLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductgroupDataTabulationLinks productgroupDataTabulationLinks = new OASProductgroupDataTabulationLinks();
        System.assertEquals(new List<OASSdtmProductRefElement>(), productgroupDataTabulationLinks.sdtm);
        System.assertEquals(new List<OASSdtmigProductRefElement>(), productgroupDataTabulationLinks.sdtmig);
        System.assertEquals(new List<OASSendigProductRefElement>(), productgroupDataTabulationLinks.sendig);
        System.assertEquals(null, productgroupDataTabulationLinks.self);
    }
}
