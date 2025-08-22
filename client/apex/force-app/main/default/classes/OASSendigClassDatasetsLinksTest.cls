@isTest
private class OASSendigClassDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = sendigClassDatasetsLinks1;
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks3 = new OASSendigClassDatasetsLinks();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks4 = sendigClassDatasetsLinks3;

        System.assert(sendigClassDatasetsLinks1.equals(sendigClassDatasetsLinks2));
        System.assert(sendigClassDatasetsLinks2.equals(sendigClassDatasetsLinks1));
        System.assert(sendigClassDatasetsLinks1.equals(sendigClassDatasetsLinks1));
        System.assert(sendigClassDatasetsLinks3.equals(sendigClassDatasetsLinks4));
        System.assert(sendigClassDatasetsLinks4.equals(sendigClassDatasetsLinks3));
        System.assert(sendigClassDatasetsLinks3.equals(sendigClassDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks3 = new OASSendigClassDatasetsLinks();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks4 = new OASSendigClassDatasetsLinks();

        System.assert(sendigClassDatasetsLinks1.equals(sendigClassDatasetsLinks2));
        System.assert(sendigClassDatasetsLinks2.equals(sendigClassDatasetsLinks1));
        System.assert(sendigClassDatasetsLinks3.equals(sendigClassDatasetsLinks4));
        System.assert(sendigClassDatasetsLinks4.equals(sendigClassDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = new OASSendigClassDatasetsLinks();

        System.assertEquals(false, sendigClassDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sendigClassDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = new OASSendigClassDatasetsLinks();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks3;

        System.assertEquals(false, sendigClassDatasetsLinks1.equals(sendigClassDatasetsLinks3));
        System.assertEquals(false, sendigClassDatasetsLinks2.equals(sendigClassDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = new OASSendigClassDatasetsLinks();

        System.assertEquals(sendigClassDatasetsLinks1.hashCode(), sendigClassDatasetsLinks1.hashCode());
        System.assertEquals(sendigClassDatasetsLinks2.hashCode(), sendigClassDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks1 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks2 = OASSendigClassDatasetsLinks.getExample();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks3 = new OASSendigClassDatasetsLinks();
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks4 = new OASSendigClassDatasetsLinks();

        System.assert(sendigClassDatasetsLinks1.equals(sendigClassDatasetsLinks2));
        System.assert(sendigClassDatasetsLinks3.equals(sendigClassDatasetsLinks4));
        System.assertEquals(sendigClassDatasetsLinks1.hashCode(), sendigClassDatasetsLinks2.hashCode());
        System.assertEquals(sendigClassDatasetsLinks3.hashCode(), sendigClassDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigClassDatasetsLinks sendigClassDatasetsLinks = new OASSendigClassDatasetsLinks();
        System.assertEquals(new List<OASSendigDatasetRefElement>(), sendigClassDatasetsLinks.datasets);
        System.assertEquals(null, sendigClassDatasetsLinks.self);
        System.assertEquals(null, sendigClassDatasetsLinks.parentProduct);
    }
}
