@isTest
private class OASRootCdashigDomainFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = rootCdashigDomainFieldLinks1;
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks3 = new OASRootCdashigDomainFieldLinks();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks4 = rootCdashigDomainFieldLinks3;

        System.assert(rootCdashigDomainFieldLinks1.equals(rootCdashigDomainFieldLinks2));
        System.assert(rootCdashigDomainFieldLinks2.equals(rootCdashigDomainFieldLinks1));
        System.assert(rootCdashigDomainFieldLinks1.equals(rootCdashigDomainFieldLinks1));
        System.assert(rootCdashigDomainFieldLinks3.equals(rootCdashigDomainFieldLinks4));
        System.assert(rootCdashigDomainFieldLinks4.equals(rootCdashigDomainFieldLinks3));
        System.assert(rootCdashigDomainFieldLinks3.equals(rootCdashigDomainFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks3 = new OASRootCdashigDomainFieldLinks();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks4 = new OASRootCdashigDomainFieldLinks();

        System.assert(rootCdashigDomainFieldLinks1.equals(rootCdashigDomainFieldLinks2));
        System.assert(rootCdashigDomainFieldLinks2.equals(rootCdashigDomainFieldLinks1));
        System.assert(rootCdashigDomainFieldLinks3.equals(rootCdashigDomainFieldLinks4));
        System.assert(rootCdashigDomainFieldLinks4.equals(rootCdashigDomainFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = new OASRootCdashigDomainFieldLinks();

        System.assertEquals(false, rootCdashigDomainFieldLinks1.equals('foo'));
        System.assertEquals(false, rootCdashigDomainFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = new OASRootCdashigDomainFieldLinks();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks3;

        System.assertEquals(false, rootCdashigDomainFieldLinks1.equals(rootCdashigDomainFieldLinks3));
        System.assertEquals(false, rootCdashigDomainFieldLinks2.equals(rootCdashigDomainFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = new OASRootCdashigDomainFieldLinks();

        System.assertEquals(rootCdashigDomainFieldLinks1.hashCode(), rootCdashigDomainFieldLinks1.hashCode());
        System.assertEquals(rootCdashigDomainFieldLinks2.hashCode(), rootCdashigDomainFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks1 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks2 = OASRootCdashigDomainFieldLinks.getExample();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks3 = new OASRootCdashigDomainFieldLinks();
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks4 = new OASRootCdashigDomainFieldLinks();

        System.assert(rootCdashigDomainFieldLinks1.equals(rootCdashigDomainFieldLinks2));
        System.assert(rootCdashigDomainFieldLinks3.equals(rootCdashigDomainFieldLinks4));
        System.assertEquals(rootCdashigDomainFieldLinks1.hashCode(), rootCdashigDomainFieldLinks2.hashCode());
        System.assertEquals(rootCdashigDomainFieldLinks3.hashCode(), rootCdashigDomainFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCdashigDomainFieldLinks rootCdashigDomainFieldLinks = new OASRootCdashigDomainFieldLinks();
        System.assertEquals(new List<OASCdashigDomainFieldRefVersion>(), rootCdashigDomainFieldLinks.versions);
        System.assertEquals(null, rootCdashigDomainFieldLinks.self);
    }
}
