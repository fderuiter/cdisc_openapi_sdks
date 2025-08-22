@isTest
private class OASRootCtCodelistLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = rootCtCodelistLinks1;
        OASRootCtCodelistLinks rootCtCodelistLinks3 = new OASRootCtCodelistLinks();
        OASRootCtCodelistLinks rootCtCodelistLinks4 = rootCtCodelistLinks3;

        System.assert(rootCtCodelistLinks1.equals(rootCtCodelistLinks2));
        System.assert(rootCtCodelistLinks2.equals(rootCtCodelistLinks1));
        System.assert(rootCtCodelistLinks1.equals(rootCtCodelistLinks1));
        System.assert(rootCtCodelistLinks3.equals(rootCtCodelistLinks4));
        System.assert(rootCtCodelistLinks4.equals(rootCtCodelistLinks3));
        System.assert(rootCtCodelistLinks3.equals(rootCtCodelistLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks3 = new OASRootCtCodelistLinks();
        OASRootCtCodelistLinks rootCtCodelistLinks4 = new OASRootCtCodelistLinks();

        System.assert(rootCtCodelistLinks1.equals(rootCtCodelistLinks2));
        System.assert(rootCtCodelistLinks2.equals(rootCtCodelistLinks1));
        System.assert(rootCtCodelistLinks3.equals(rootCtCodelistLinks4));
        System.assert(rootCtCodelistLinks4.equals(rootCtCodelistLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = new OASRootCtCodelistLinks();

        System.assertEquals(false, rootCtCodelistLinks1.equals('foo'));
        System.assertEquals(false, rootCtCodelistLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = new OASRootCtCodelistLinks();
        OASRootCtCodelistLinks rootCtCodelistLinks3;

        System.assertEquals(false, rootCtCodelistLinks1.equals(rootCtCodelistLinks3));
        System.assertEquals(false, rootCtCodelistLinks2.equals(rootCtCodelistLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = new OASRootCtCodelistLinks();

        System.assertEquals(rootCtCodelistLinks1.hashCode(), rootCtCodelistLinks1.hashCode());
        System.assertEquals(rootCtCodelistLinks2.hashCode(), rootCtCodelistLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtCodelistLinks rootCtCodelistLinks1 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks2 = OASRootCtCodelistLinks.getExample();
        OASRootCtCodelistLinks rootCtCodelistLinks3 = new OASRootCtCodelistLinks();
        OASRootCtCodelistLinks rootCtCodelistLinks4 = new OASRootCtCodelistLinks();

        System.assert(rootCtCodelistLinks1.equals(rootCtCodelistLinks2));
        System.assert(rootCtCodelistLinks3.equals(rootCtCodelistLinks4));
        System.assertEquals(rootCtCodelistLinks1.hashCode(), rootCtCodelistLinks2.hashCode());
        System.assertEquals(rootCtCodelistLinks3.hashCode(), rootCtCodelistLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCtCodelistLinks rootCtCodelistLinks = new OASRootCtCodelistLinks();
        System.assertEquals(new List<OASCtCodelistRefVersion>(), rootCtCodelistLinks.versions);
        System.assertEquals(null, rootCtCodelistLinks.self);
    }
}
