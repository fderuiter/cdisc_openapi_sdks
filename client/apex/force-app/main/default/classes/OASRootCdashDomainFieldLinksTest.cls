@isTest
private class OASRootCdashDomainFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = rootCdashDomainFieldLinks1;
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks3 = new OASRootCdashDomainFieldLinks();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks4 = rootCdashDomainFieldLinks3;

        System.assert(rootCdashDomainFieldLinks1.equals(rootCdashDomainFieldLinks2));
        System.assert(rootCdashDomainFieldLinks2.equals(rootCdashDomainFieldLinks1));
        System.assert(rootCdashDomainFieldLinks1.equals(rootCdashDomainFieldLinks1));
        System.assert(rootCdashDomainFieldLinks3.equals(rootCdashDomainFieldLinks4));
        System.assert(rootCdashDomainFieldLinks4.equals(rootCdashDomainFieldLinks3));
        System.assert(rootCdashDomainFieldLinks3.equals(rootCdashDomainFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks3 = new OASRootCdashDomainFieldLinks();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks4 = new OASRootCdashDomainFieldLinks();

        System.assert(rootCdashDomainFieldLinks1.equals(rootCdashDomainFieldLinks2));
        System.assert(rootCdashDomainFieldLinks2.equals(rootCdashDomainFieldLinks1));
        System.assert(rootCdashDomainFieldLinks3.equals(rootCdashDomainFieldLinks4));
        System.assert(rootCdashDomainFieldLinks4.equals(rootCdashDomainFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = new OASRootCdashDomainFieldLinks();

        System.assertEquals(false, rootCdashDomainFieldLinks1.equals('foo'));
        System.assertEquals(false, rootCdashDomainFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = new OASRootCdashDomainFieldLinks();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks3;

        System.assertEquals(false, rootCdashDomainFieldLinks1.equals(rootCdashDomainFieldLinks3));
        System.assertEquals(false, rootCdashDomainFieldLinks2.equals(rootCdashDomainFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = new OASRootCdashDomainFieldLinks();

        System.assertEquals(rootCdashDomainFieldLinks1.hashCode(), rootCdashDomainFieldLinks1.hashCode());
        System.assertEquals(rootCdashDomainFieldLinks2.hashCode(), rootCdashDomainFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks1 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks2 = OASRootCdashDomainFieldLinks.getExample();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks3 = new OASRootCdashDomainFieldLinks();
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks4 = new OASRootCdashDomainFieldLinks();

        System.assert(rootCdashDomainFieldLinks1.equals(rootCdashDomainFieldLinks2));
        System.assert(rootCdashDomainFieldLinks3.equals(rootCdashDomainFieldLinks4));
        System.assertEquals(rootCdashDomainFieldLinks1.hashCode(), rootCdashDomainFieldLinks2.hashCode());
        System.assertEquals(rootCdashDomainFieldLinks3.hashCode(), rootCdashDomainFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCdashDomainFieldLinks rootCdashDomainFieldLinks = new OASRootCdashDomainFieldLinks();
        System.assertEquals(new List<OASCdashDomainFieldRefVersion>(), rootCdashDomainFieldLinks.versions);
        System.assertEquals(null, rootCdashDomainFieldLinks.self);
    }
}
