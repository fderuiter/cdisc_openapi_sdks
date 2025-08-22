@isTest
private class OASSendigDatasetLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = sendigDatasetLinks1;
        OASSendigDatasetLinks sendigDatasetLinks3 = new OASSendigDatasetLinks();
        OASSendigDatasetLinks sendigDatasetLinks4 = sendigDatasetLinks3;

        System.assert(sendigDatasetLinks1.equals(sendigDatasetLinks2));
        System.assert(sendigDatasetLinks2.equals(sendigDatasetLinks1));
        System.assert(sendigDatasetLinks1.equals(sendigDatasetLinks1));
        System.assert(sendigDatasetLinks3.equals(sendigDatasetLinks4));
        System.assert(sendigDatasetLinks4.equals(sendigDatasetLinks3));
        System.assert(sendigDatasetLinks3.equals(sendigDatasetLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks3 = new OASSendigDatasetLinks();
        OASSendigDatasetLinks sendigDatasetLinks4 = new OASSendigDatasetLinks();

        System.assert(sendigDatasetLinks1.equals(sendigDatasetLinks2));
        System.assert(sendigDatasetLinks2.equals(sendigDatasetLinks1));
        System.assert(sendigDatasetLinks3.equals(sendigDatasetLinks4));
        System.assert(sendigDatasetLinks4.equals(sendigDatasetLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = new OASSendigDatasetLinks();

        System.assertEquals(false, sendigDatasetLinks1.equals('foo'));
        System.assertEquals(false, sendigDatasetLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = new OASSendigDatasetLinks();
        OASSendigDatasetLinks sendigDatasetLinks3;

        System.assertEquals(false, sendigDatasetLinks1.equals(sendigDatasetLinks3));
        System.assertEquals(false, sendigDatasetLinks2.equals(sendigDatasetLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = new OASSendigDatasetLinks();

        System.assertEquals(sendigDatasetLinks1.hashCode(), sendigDatasetLinks1.hashCode());
        System.assertEquals(sendigDatasetLinks2.hashCode(), sendigDatasetLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetLinks sendigDatasetLinks1 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks2 = OASSendigDatasetLinks.getExample();
        OASSendigDatasetLinks sendigDatasetLinks3 = new OASSendigDatasetLinks();
        OASSendigDatasetLinks sendigDatasetLinks4 = new OASSendigDatasetLinks();

        System.assert(sendigDatasetLinks1.equals(sendigDatasetLinks2));
        System.assert(sendigDatasetLinks3.equals(sendigDatasetLinks4));
        System.assertEquals(sendigDatasetLinks1.hashCode(), sendigDatasetLinks2.hashCode());
        System.assertEquals(sendigDatasetLinks3.hashCode(), sendigDatasetLinks4.hashCode());
    }
}
