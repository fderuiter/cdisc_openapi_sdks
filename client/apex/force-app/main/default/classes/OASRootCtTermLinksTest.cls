@isTest
private class OASRootCtTermLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = rootCtTermLinks1;
        OASRootCtTermLinks rootCtTermLinks3 = new OASRootCtTermLinks();
        OASRootCtTermLinks rootCtTermLinks4 = rootCtTermLinks3;

        System.assert(rootCtTermLinks1.equals(rootCtTermLinks2));
        System.assert(rootCtTermLinks2.equals(rootCtTermLinks1));
        System.assert(rootCtTermLinks1.equals(rootCtTermLinks1));
        System.assert(rootCtTermLinks3.equals(rootCtTermLinks4));
        System.assert(rootCtTermLinks4.equals(rootCtTermLinks3));
        System.assert(rootCtTermLinks3.equals(rootCtTermLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks3 = new OASRootCtTermLinks();
        OASRootCtTermLinks rootCtTermLinks4 = new OASRootCtTermLinks();

        System.assert(rootCtTermLinks1.equals(rootCtTermLinks2));
        System.assert(rootCtTermLinks2.equals(rootCtTermLinks1));
        System.assert(rootCtTermLinks3.equals(rootCtTermLinks4));
        System.assert(rootCtTermLinks4.equals(rootCtTermLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = new OASRootCtTermLinks();

        System.assertEquals(false, rootCtTermLinks1.equals('foo'));
        System.assertEquals(false, rootCtTermLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = new OASRootCtTermLinks();
        OASRootCtTermLinks rootCtTermLinks3;

        System.assertEquals(false, rootCtTermLinks1.equals(rootCtTermLinks3));
        System.assertEquals(false, rootCtTermLinks2.equals(rootCtTermLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = new OASRootCtTermLinks();

        System.assertEquals(rootCtTermLinks1.hashCode(), rootCtTermLinks1.hashCode());
        System.assertEquals(rootCtTermLinks2.hashCode(), rootCtTermLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtTermLinks rootCtTermLinks1 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks2 = OASRootCtTermLinks.getExample();
        OASRootCtTermLinks rootCtTermLinks3 = new OASRootCtTermLinks();
        OASRootCtTermLinks rootCtTermLinks4 = new OASRootCtTermLinks();

        System.assert(rootCtTermLinks1.equals(rootCtTermLinks2));
        System.assert(rootCtTermLinks3.equals(rootCtTermLinks4));
        System.assertEquals(rootCtTermLinks1.hashCode(), rootCtTermLinks2.hashCode());
        System.assertEquals(rootCtTermLinks3.hashCode(), rootCtTermLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCtTermLinks rootCtTermLinks = new OASRootCtTermLinks();
        System.assertEquals(new List<OASCtTermRefVersion>(), rootCtTermLinks.versions);
        System.assertEquals(null, rootCtTermLinks.self);
    }
}
