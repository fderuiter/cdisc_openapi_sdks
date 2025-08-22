@isTest
private class OASSendigDatasetVariablesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = sendigDatasetVariablesLinks1;
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks3 = new OASSendigDatasetVariablesLinks();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks4 = sendigDatasetVariablesLinks3;

        System.assert(sendigDatasetVariablesLinks1.equals(sendigDatasetVariablesLinks2));
        System.assert(sendigDatasetVariablesLinks2.equals(sendigDatasetVariablesLinks1));
        System.assert(sendigDatasetVariablesLinks1.equals(sendigDatasetVariablesLinks1));
        System.assert(sendigDatasetVariablesLinks3.equals(sendigDatasetVariablesLinks4));
        System.assert(sendigDatasetVariablesLinks4.equals(sendigDatasetVariablesLinks3));
        System.assert(sendigDatasetVariablesLinks3.equals(sendigDatasetVariablesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks3 = new OASSendigDatasetVariablesLinks();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks4 = new OASSendigDatasetVariablesLinks();

        System.assert(sendigDatasetVariablesLinks1.equals(sendigDatasetVariablesLinks2));
        System.assert(sendigDatasetVariablesLinks2.equals(sendigDatasetVariablesLinks1));
        System.assert(sendigDatasetVariablesLinks3.equals(sendigDatasetVariablesLinks4));
        System.assert(sendigDatasetVariablesLinks4.equals(sendigDatasetVariablesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = new OASSendigDatasetVariablesLinks();

        System.assertEquals(false, sendigDatasetVariablesLinks1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariablesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = new OASSendigDatasetVariablesLinks();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks3;

        System.assertEquals(false, sendigDatasetVariablesLinks1.equals(sendigDatasetVariablesLinks3));
        System.assertEquals(false, sendigDatasetVariablesLinks2.equals(sendigDatasetVariablesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = new OASSendigDatasetVariablesLinks();

        System.assertEquals(sendigDatasetVariablesLinks1.hashCode(), sendigDatasetVariablesLinks1.hashCode());
        System.assertEquals(sendigDatasetVariablesLinks2.hashCode(), sendigDatasetVariablesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks1 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks2 = OASSendigDatasetVariablesLinks.getExample();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks3 = new OASSendigDatasetVariablesLinks();
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks4 = new OASSendigDatasetVariablesLinks();

        System.assert(sendigDatasetVariablesLinks1.equals(sendigDatasetVariablesLinks2));
        System.assert(sendigDatasetVariablesLinks3.equals(sendigDatasetVariablesLinks4));
        System.assertEquals(sendigDatasetVariablesLinks1.hashCode(), sendigDatasetVariablesLinks2.hashCode());
        System.assertEquals(sendigDatasetVariablesLinks3.hashCode(), sendigDatasetVariablesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigDatasetVariablesLinks sendigDatasetVariablesLinks = new OASSendigDatasetVariablesLinks();
        System.assertEquals(new List<OASSendigDatasetVariableRefElement>(), sendigDatasetVariablesLinks.datasetVariables);
        System.assertEquals(null, sendigDatasetVariablesLinks.self);
        System.assertEquals(null, sendigDatasetVariablesLinks.modelDataset);
        System.assertEquals(null, sendigDatasetVariablesLinks.parentProduct);
        System.assertEquals(null, sendigDatasetVariablesLinks.parentClass);
        System.assertEquals(null, sendigDatasetVariablesLinks.priorVersion);
    }
}
