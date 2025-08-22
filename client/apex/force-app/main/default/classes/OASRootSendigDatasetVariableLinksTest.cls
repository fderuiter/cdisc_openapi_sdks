@isTest
private class OASRootSendigDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = rootSendigDatasetVariableLinks1;
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks3 = new OASRootSendigDatasetVariableLinks();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks4 = rootSendigDatasetVariableLinks3;

        System.assert(rootSendigDatasetVariableLinks1.equals(rootSendigDatasetVariableLinks2));
        System.assert(rootSendigDatasetVariableLinks2.equals(rootSendigDatasetVariableLinks1));
        System.assert(rootSendigDatasetVariableLinks1.equals(rootSendigDatasetVariableLinks1));
        System.assert(rootSendigDatasetVariableLinks3.equals(rootSendigDatasetVariableLinks4));
        System.assert(rootSendigDatasetVariableLinks4.equals(rootSendigDatasetVariableLinks3));
        System.assert(rootSendigDatasetVariableLinks3.equals(rootSendigDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks3 = new OASRootSendigDatasetVariableLinks();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks4 = new OASRootSendigDatasetVariableLinks();

        System.assert(rootSendigDatasetVariableLinks1.equals(rootSendigDatasetVariableLinks2));
        System.assert(rootSendigDatasetVariableLinks2.equals(rootSendigDatasetVariableLinks1));
        System.assert(rootSendigDatasetVariableLinks3.equals(rootSendigDatasetVariableLinks4));
        System.assert(rootSendigDatasetVariableLinks4.equals(rootSendigDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = new OASRootSendigDatasetVariableLinks();

        System.assertEquals(false, rootSendigDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, rootSendigDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = new OASRootSendigDatasetVariableLinks();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks3;

        System.assertEquals(false, rootSendigDatasetVariableLinks1.equals(rootSendigDatasetVariableLinks3));
        System.assertEquals(false, rootSendigDatasetVariableLinks2.equals(rootSendigDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = new OASRootSendigDatasetVariableLinks();

        System.assertEquals(rootSendigDatasetVariableLinks1.hashCode(), rootSendigDatasetVariableLinks1.hashCode());
        System.assertEquals(rootSendigDatasetVariableLinks2.hashCode(), rootSendigDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks1 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks2 = OASRootSendigDatasetVariableLinks.getExample();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks3 = new OASRootSendigDatasetVariableLinks();
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks4 = new OASRootSendigDatasetVariableLinks();

        System.assert(rootSendigDatasetVariableLinks1.equals(rootSendigDatasetVariableLinks2));
        System.assert(rootSendigDatasetVariableLinks3.equals(rootSendigDatasetVariableLinks4));
        System.assertEquals(rootSendigDatasetVariableLinks1.hashCode(), rootSendigDatasetVariableLinks2.hashCode());
        System.assertEquals(rootSendigDatasetVariableLinks3.hashCode(), rootSendigDatasetVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootSendigDatasetVariableLinks rootSendigDatasetVariableLinks = new OASRootSendigDatasetVariableLinks();
        System.assertEquals(new List<OASSendigDatasetVariableRefVersion>(), rootSendigDatasetVariableLinks.versions);
        System.assertEquals(null, rootSendigDatasetVariableLinks.self);
    }
}
