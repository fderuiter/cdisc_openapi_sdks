@isTest
private class OASRootSdtmDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = rootSdtmDatasetVariableLinks1;
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks3 = new OASRootSdtmDatasetVariableLinks();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks4 = rootSdtmDatasetVariableLinks3;

        System.assert(rootSdtmDatasetVariableLinks1.equals(rootSdtmDatasetVariableLinks2));
        System.assert(rootSdtmDatasetVariableLinks2.equals(rootSdtmDatasetVariableLinks1));
        System.assert(rootSdtmDatasetVariableLinks1.equals(rootSdtmDatasetVariableLinks1));
        System.assert(rootSdtmDatasetVariableLinks3.equals(rootSdtmDatasetVariableLinks4));
        System.assert(rootSdtmDatasetVariableLinks4.equals(rootSdtmDatasetVariableLinks3));
        System.assert(rootSdtmDatasetVariableLinks3.equals(rootSdtmDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks3 = new OASRootSdtmDatasetVariableLinks();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks4 = new OASRootSdtmDatasetVariableLinks();

        System.assert(rootSdtmDatasetVariableLinks1.equals(rootSdtmDatasetVariableLinks2));
        System.assert(rootSdtmDatasetVariableLinks2.equals(rootSdtmDatasetVariableLinks1));
        System.assert(rootSdtmDatasetVariableLinks3.equals(rootSdtmDatasetVariableLinks4));
        System.assert(rootSdtmDatasetVariableLinks4.equals(rootSdtmDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = new OASRootSdtmDatasetVariableLinks();

        System.assertEquals(false, rootSdtmDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, rootSdtmDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = new OASRootSdtmDatasetVariableLinks();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks3;

        System.assertEquals(false, rootSdtmDatasetVariableLinks1.equals(rootSdtmDatasetVariableLinks3));
        System.assertEquals(false, rootSdtmDatasetVariableLinks2.equals(rootSdtmDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = new OASRootSdtmDatasetVariableLinks();

        System.assertEquals(rootSdtmDatasetVariableLinks1.hashCode(), rootSdtmDatasetVariableLinks1.hashCode());
        System.assertEquals(rootSdtmDatasetVariableLinks2.hashCode(), rootSdtmDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks1 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks2 = OASRootSdtmDatasetVariableLinks.getExample();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks3 = new OASRootSdtmDatasetVariableLinks();
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks4 = new OASRootSdtmDatasetVariableLinks();

        System.assert(rootSdtmDatasetVariableLinks1.equals(rootSdtmDatasetVariableLinks2));
        System.assert(rootSdtmDatasetVariableLinks3.equals(rootSdtmDatasetVariableLinks4));
        System.assertEquals(rootSdtmDatasetVariableLinks1.hashCode(), rootSdtmDatasetVariableLinks2.hashCode());
        System.assertEquals(rootSdtmDatasetVariableLinks3.hashCode(), rootSdtmDatasetVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks = new OASRootSdtmDatasetVariableLinks();
        System.assertEquals(new List<OASSdtmDatasetVariableRefVersion>(), rootSdtmDatasetVariableLinks.versions);
        System.assertEquals(null, rootSdtmDatasetVariableLinks.self);
    }
}
