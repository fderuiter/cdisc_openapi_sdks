@isTest
private class OASRootCdashClassFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = rootCdashClassFieldLinks1;
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks3 = new OASRootCdashClassFieldLinks();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks4 = rootCdashClassFieldLinks3;

        System.assert(rootCdashClassFieldLinks1.equals(rootCdashClassFieldLinks2));
        System.assert(rootCdashClassFieldLinks2.equals(rootCdashClassFieldLinks1));
        System.assert(rootCdashClassFieldLinks1.equals(rootCdashClassFieldLinks1));
        System.assert(rootCdashClassFieldLinks3.equals(rootCdashClassFieldLinks4));
        System.assert(rootCdashClassFieldLinks4.equals(rootCdashClassFieldLinks3));
        System.assert(rootCdashClassFieldLinks3.equals(rootCdashClassFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks3 = new OASRootCdashClassFieldLinks();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks4 = new OASRootCdashClassFieldLinks();

        System.assert(rootCdashClassFieldLinks1.equals(rootCdashClassFieldLinks2));
        System.assert(rootCdashClassFieldLinks2.equals(rootCdashClassFieldLinks1));
        System.assert(rootCdashClassFieldLinks3.equals(rootCdashClassFieldLinks4));
        System.assert(rootCdashClassFieldLinks4.equals(rootCdashClassFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = new OASRootCdashClassFieldLinks();

        System.assertEquals(false, rootCdashClassFieldLinks1.equals('foo'));
        System.assertEquals(false, rootCdashClassFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = new OASRootCdashClassFieldLinks();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks3;

        System.assertEquals(false, rootCdashClassFieldLinks1.equals(rootCdashClassFieldLinks3));
        System.assertEquals(false, rootCdashClassFieldLinks2.equals(rootCdashClassFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = new OASRootCdashClassFieldLinks();

        System.assertEquals(rootCdashClassFieldLinks1.hashCode(), rootCdashClassFieldLinks1.hashCode());
        System.assertEquals(rootCdashClassFieldLinks2.hashCode(), rootCdashClassFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks1 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks2 = OASRootCdashClassFieldLinks.getExample();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks3 = new OASRootCdashClassFieldLinks();
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks4 = new OASRootCdashClassFieldLinks();

        System.assert(rootCdashClassFieldLinks1.equals(rootCdashClassFieldLinks2));
        System.assert(rootCdashClassFieldLinks3.equals(rootCdashClassFieldLinks4));
        System.assertEquals(rootCdashClassFieldLinks1.hashCode(), rootCdashClassFieldLinks2.hashCode());
        System.assertEquals(rootCdashClassFieldLinks3.hashCode(), rootCdashClassFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCdashClassFieldLinks rootCdashClassFieldLinks = new OASRootCdashClassFieldLinks();
        System.assertEquals(new List<OASCdashClassFieldRefVersion>(), rootCdashClassFieldLinks.versions);
        System.assertEquals(null, rootCdashClassFieldLinks.self);
    }
}
