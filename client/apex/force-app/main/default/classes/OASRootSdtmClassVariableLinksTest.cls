@isTest
private class OASRootSdtmClassVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = rootSdtmClassVariableLinks1;
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks3 = new OASRootSdtmClassVariableLinks();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks4 = rootSdtmClassVariableLinks3;

        System.assert(rootSdtmClassVariableLinks1.equals(rootSdtmClassVariableLinks2));
        System.assert(rootSdtmClassVariableLinks2.equals(rootSdtmClassVariableLinks1));
        System.assert(rootSdtmClassVariableLinks1.equals(rootSdtmClassVariableLinks1));
        System.assert(rootSdtmClassVariableLinks3.equals(rootSdtmClassVariableLinks4));
        System.assert(rootSdtmClassVariableLinks4.equals(rootSdtmClassVariableLinks3));
        System.assert(rootSdtmClassVariableLinks3.equals(rootSdtmClassVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks3 = new OASRootSdtmClassVariableLinks();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks4 = new OASRootSdtmClassVariableLinks();

        System.assert(rootSdtmClassVariableLinks1.equals(rootSdtmClassVariableLinks2));
        System.assert(rootSdtmClassVariableLinks2.equals(rootSdtmClassVariableLinks1));
        System.assert(rootSdtmClassVariableLinks3.equals(rootSdtmClassVariableLinks4));
        System.assert(rootSdtmClassVariableLinks4.equals(rootSdtmClassVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = new OASRootSdtmClassVariableLinks();

        System.assertEquals(false, rootSdtmClassVariableLinks1.equals('foo'));
        System.assertEquals(false, rootSdtmClassVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = new OASRootSdtmClassVariableLinks();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks3;

        System.assertEquals(false, rootSdtmClassVariableLinks1.equals(rootSdtmClassVariableLinks3));
        System.assertEquals(false, rootSdtmClassVariableLinks2.equals(rootSdtmClassVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = new OASRootSdtmClassVariableLinks();

        System.assertEquals(rootSdtmClassVariableLinks1.hashCode(), rootSdtmClassVariableLinks1.hashCode());
        System.assertEquals(rootSdtmClassVariableLinks2.hashCode(), rootSdtmClassVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks1 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks2 = OASRootSdtmClassVariableLinks.getExample();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks3 = new OASRootSdtmClassVariableLinks();
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks4 = new OASRootSdtmClassVariableLinks();

        System.assert(rootSdtmClassVariableLinks1.equals(rootSdtmClassVariableLinks2));
        System.assert(rootSdtmClassVariableLinks3.equals(rootSdtmClassVariableLinks4));
        System.assertEquals(rootSdtmClassVariableLinks1.hashCode(), rootSdtmClassVariableLinks2.hashCode());
        System.assertEquals(rootSdtmClassVariableLinks3.hashCode(), rootSdtmClassVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootSdtmClassVariableLinks rootSdtmClassVariableLinks = new OASRootSdtmClassVariableLinks();
        System.assertEquals(new List<OASSdtmClassVariableRefVersion>(), rootSdtmClassVariableLinks.versions);
        System.assertEquals(null, rootSdtmClassVariableLinks.self);
    }
}
