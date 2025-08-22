@isTest
private class OASProductgroupTerminologyLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = productgroupTerminologyLinks1;
        OASProductgroupTerminologyLinks productgroupTerminologyLinks3 = new OASProductgroupTerminologyLinks();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks4 = productgroupTerminologyLinks3;

        System.assert(productgroupTerminologyLinks1.equals(productgroupTerminologyLinks2));
        System.assert(productgroupTerminologyLinks2.equals(productgroupTerminologyLinks1));
        System.assert(productgroupTerminologyLinks1.equals(productgroupTerminologyLinks1));
        System.assert(productgroupTerminologyLinks3.equals(productgroupTerminologyLinks4));
        System.assert(productgroupTerminologyLinks4.equals(productgroupTerminologyLinks3));
        System.assert(productgroupTerminologyLinks3.equals(productgroupTerminologyLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks3 = new OASProductgroupTerminologyLinks();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks4 = new OASProductgroupTerminologyLinks();

        System.assert(productgroupTerminologyLinks1.equals(productgroupTerminologyLinks2));
        System.assert(productgroupTerminologyLinks2.equals(productgroupTerminologyLinks1));
        System.assert(productgroupTerminologyLinks3.equals(productgroupTerminologyLinks4));
        System.assert(productgroupTerminologyLinks4.equals(productgroupTerminologyLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = new OASProductgroupTerminologyLinks();

        System.assertEquals(false, productgroupTerminologyLinks1.equals('foo'));
        System.assertEquals(false, productgroupTerminologyLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = new OASProductgroupTerminologyLinks();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks3;

        System.assertEquals(false, productgroupTerminologyLinks1.equals(productgroupTerminologyLinks3));
        System.assertEquals(false, productgroupTerminologyLinks2.equals(productgroupTerminologyLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = new OASProductgroupTerminologyLinks();

        System.assertEquals(productgroupTerminologyLinks1.hashCode(), productgroupTerminologyLinks1.hashCode());
        System.assertEquals(productgroupTerminologyLinks2.hashCode(), productgroupTerminologyLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks1 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks2 = OASProductgroupTerminologyLinks.getExample();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks3 = new OASProductgroupTerminologyLinks();
        OASProductgroupTerminologyLinks productgroupTerminologyLinks4 = new OASProductgroupTerminologyLinks();

        System.assert(productgroupTerminologyLinks1.equals(productgroupTerminologyLinks2));
        System.assert(productgroupTerminologyLinks3.equals(productgroupTerminologyLinks4));
        System.assertEquals(productgroupTerminologyLinks1.hashCode(), productgroupTerminologyLinks2.hashCode());
        System.assertEquals(productgroupTerminologyLinks3.hashCode(), productgroupTerminologyLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASProductgroupTerminologyLinks productgroupTerminologyLinks = new OASProductgroupTerminologyLinks();
        System.assertEquals(new List<OASCtPackageRefElement>(), productgroupTerminologyLinks.packages);
        System.assertEquals(null, productgroupTerminologyLinks.self);
    }
}
