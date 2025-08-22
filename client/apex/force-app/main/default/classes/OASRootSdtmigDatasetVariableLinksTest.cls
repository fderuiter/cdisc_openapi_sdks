@isTest
private class OASRootSdtmigDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = rootSdtmigDatasetVariableLinks1;
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks3 = new OASRootSdtmigDatasetVariableLinks();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks4 = rootSdtmigDatasetVariableLinks3;

        System.assert(rootSdtmigDatasetVariableLinks1.equals(rootSdtmigDatasetVariableLinks2));
        System.assert(rootSdtmigDatasetVariableLinks2.equals(rootSdtmigDatasetVariableLinks1));
        System.assert(rootSdtmigDatasetVariableLinks1.equals(rootSdtmigDatasetVariableLinks1));
        System.assert(rootSdtmigDatasetVariableLinks3.equals(rootSdtmigDatasetVariableLinks4));
        System.assert(rootSdtmigDatasetVariableLinks4.equals(rootSdtmigDatasetVariableLinks3));
        System.assert(rootSdtmigDatasetVariableLinks3.equals(rootSdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks3 = new OASRootSdtmigDatasetVariableLinks();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks4 = new OASRootSdtmigDatasetVariableLinks();

        System.assert(rootSdtmigDatasetVariableLinks1.equals(rootSdtmigDatasetVariableLinks2));
        System.assert(rootSdtmigDatasetVariableLinks2.equals(rootSdtmigDatasetVariableLinks1));
        System.assert(rootSdtmigDatasetVariableLinks3.equals(rootSdtmigDatasetVariableLinks4));
        System.assert(rootSdtmigDatasetVariableLinks4.equals(rootSdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = new OASRootSdtmigDatasetVariableLinks();

        System.assertEquals(false, rootSdtmigDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, rootSdtmigDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = new OASRootSdtmigDatasetVariableLinks();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks3;

        System.assertEquals(false, rootSdtmigDatasetVariableLinks1.equals(rootSdtmigDatasetVariableLinks3));
        System.assertEquals(false, rootSdtmigDatasetVariableLinks2.equals(rootSdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = new OASRootSdtmigDatasetVariableLinks();

        System.assertEquals(rootSdtmigDatasetVariableLinks1.hashCode(), rootSdtmigDatasetVariableLinks1.hashCode());
        System.assertEquals(rootSdtmigDatasetVariableLinks2.hashCode(), rootSdtmigDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks1 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks2 = OASRootSdtmigDatasetVariableLinks.getExample();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks3 = new OASRootSdtmigDatasetVariableLinks();
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks4 = new OASRootSdtmigDatasetVariableLinks();

        System.assert(rootSdtmigDatasetVariableLinks1.equals(rootSdtmigDatasetVariableLinks2));
        System.assert(rootSdtmigDatasetVariableLinks3.equals(rootSdtmigDatasetVariableLinks4));
        System.assertEquals(rootSdtmigDatasetVariableLinks1.hashCode(), rootSdtmigDatasetVariableLinks2.hashCode());
        System.assertEquals(rootSdtmigDatasetVariableLinks3.hashCode(), rootSdtmigDatasetVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks = new OASRootSdtmigDatasetVariableLinks();
        System.assertEquals(new List<OASSdtmigDatasetVariableRefVersion>(), rootSdtmigDatasetVariableLinks.versions);
        System.assertEquals(null, rootSdtmigDatasetVariableLinks.self);
    }
}
