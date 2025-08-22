@isTest
private class OASSendigDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = sendigDatasetsLinks1;
        OASSendigDatasetsLinks sendigDatasetsLinks3 = new OASSendigDatasetsLinks();
        OASSendigDatasetsLinks sendigDatasetsLinks4 = sendigDatasetsLinks3;

        System.assert(sendigDatasetsLinks1.equals(sendigDatasetsLinks2));
        System.assert(sendigDatasetsLinks2.equals(sendigDatasetsLinks1));
        System.assert(sendigDatasetsLinks1.equals(sendigDatasetsLinks1));
        System.assert(sendigDatasetsLinks3.equals(sendigDatasetsLinks4));
        System.assert(sendigDatasetsLinks4.equals(sendigDatasetsLinks3));
        System.assert(sendigDatasetsLinks3.equals(sendigDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks3 = new OASSendigDatasetsLinks();
        OASSendigDatasetsLinks sendigDatasetsLinks4 = new OASSendigDatasetsLinks();

        System.assert(sendigDatasetsLinks1.equals(sendigDatasetsLinks2));
        System.assert(sendigDatasetsLinks2.equals(sendigDatasetsLinks1));
        System.assert(sendigDatasetsLinks3.equals(sendigDatasetsLinks4));
        System.assert(sendigDatasetsLinks4.equals(sendigDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = new OASSendigDatasetsLinks();

        System.assertEquals(false, sendigDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sendigDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = new OASSendigDatasetsLinks();
        OASSendigDatasetsLinks sendigDatasetsLinks3;

        System.assertEquals(false, sendigDatasetsLinks1.equals(sendigDatasetsLinks3));
        System.assertEquals(false, sendigDatasetsLinks2.equals(sendigDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = new OASSendigDatasetsLinks();

        System.assertEquals(sendigDatasetsLinks1.hashCode(), sendigDatasetsLinks1.hashCode());
        System.assertEquals(sendigDatasetsLinks2.hashCode(), sendigDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetsLinks sendigDatasetsLinks1 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks2 = OASSendigDatasetsLinks.getExample();
        OASSendigDatasetsLinks sendigDatasetsLinks3 = new OASSendigDatasetsLinks();
        OASSendigDatasetsLinks sendigDatasetsLinks4 = new OASSendigDatasetsLinks();

        System.assert(sendigDatasetsLinks1.equals(sendigDatasetsLinks2));
        System.assert(sendigDatasetsLinks3.equals(sendigDatasetsLinks4));
        System.assertEquals(sendigDatasetsLinks1.hashCode(), sendigDatasetsLinks2.hashCode());
        System.assertEquals(sendigDatasetsLinks3.hashCode(), sendigDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigDatasetsLinks sendigDatasetsLinks = new OASSendigDatasetsLinks();
        System.assertEquals(new List<OASSendigDatasetRefElement>(), sendigDatasetsLinks.datasets);
        System.assertEquals(null, sendigDatasetsLinks.self);
        System.assertEquals(null, sendigDatasetsLinks.parentProduct);
    }
}
