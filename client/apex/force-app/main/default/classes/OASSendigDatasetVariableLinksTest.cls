@isTest
private class OASSendigDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = sendigDatasetVariableLinks1;
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks3 = new OASSendigDatasetVariableLinks();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks4 = sendigDatasetVariableLinks3;

        System.assert(sendigDatasetVariableLinks1.equals(sendigDatasetVariableLinks2));
        System.assert(sendigDatasetVariableLinks2.equals(sendigDatasetVariableLinks1));
        System.assert(sendigDatasetVariableLinks1.equals(sendigDatasetVariableLinks1));
        System.assert(sendigDatasetVariableLinks3.equals(sendigDatasetVariableLinks4));
        System.assert(sendigDatasetVariableLinks4.equals(sendigDatasetVariableLinks3));
        System.assert(sendigDatasetVariableLinks3.equals(sendigDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks3 = new OASSendigDatasetVariableLinks();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks4 = new OASSendigDatasetVariableLinks();

        System.assert(sendigDatasetVariableLinks1.equals(sendigDatasetVariableLinks2));
        System.assert(sendigDatasetVariableLinks2.equals(sendigDatasetVariableLinks1));
        System.assert(sendigDatasetVariableLinks3.equals(sendigDatasetVariableLinks4));
        System.assert(sendigDatasetVariableLinks4.equals(sendigDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = new OASSendigDatasetVariableLinks();

        System.assertEquals(false, sendigDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = new OASSendigDatasetVariableLinks();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks3;

        System.assertEquals(false, sendigDatasetVariableLinks1.equals(sendigDatasetVariableLinks3));
        System.assertEquals(false, sendigDatasetVariableLinks2.equals(sendigDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = new OASSendigDatasetVariableLinks();

        System.assertEquals(sendigDatasetVariableLinks1.hashCode(), sendigDatasetVariableLinks1.hashCode());
        System.assertEquals(sendigDatasetVariableLinks2.hashCode(), sendigDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks1 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks2 = OASSendigDatasetVariableLinks.getExample();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks3 = new OASSendigDatasetVariableLinks();
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks4 = new OASSendigDatasetVariableLinks();

        System.assert(sendigDatasetVariableLinks1.equals(sendigDatasetVariableLinks2));
        System.assert(sendigDatasetVariableLinks3.equals(sendigDatasetVariableLinks4));
        System.assertEquals(sendigDatasetVariableLinks1.hashCode(), sendigDatasetVariableLinks2.hashCode());
        System.assertEquals(sendigDatasetVariableLinks3.hashCode(), sendigDatasetVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigDatasetVariableLinks sendigDatasetVariableLinks = new OASSendigDatasetVariableLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), sendigDatasetVariableLinks.codelist);
        System.assertEquals(null, sendigDatasetVariableLinks.self);
        System.assertEquals(null, sendigDatasetVariableLinks.modelClassVariable);
        System.assertEquals(null, sendigDatasetVariableLinks.modelDatasetVariable);
        System.assertEquals(null, sendigDatasetVariableLinks.parentProduct);
        System.assertEquals(null, sendigDatasetVariableLinks.parentDataset);
        System.assertEquals(null, sendigDatasetVariableLinks.rootItem);
        System.assertEquals(null, sendigDatasetVariableLinks.priorVersion);
    }
}
