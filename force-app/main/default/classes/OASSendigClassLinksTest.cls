@isTest
private class OASSendigClassLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = sendigClassLinks1;
        OASSendigClassLinks sendigClassLinks3 = new OASSendigClassLinks();
        OASSendigClassLinks sendigClassLinks4 = sendigClassLinks3;

        System.assert(sendigClassLinks1.equals(sendigClassLinks2));
        System.assert(sendigClassLinks2.equals(sendigClassLinks1));
        System.assert(sendigClassLinks1.equals(sendigClassLinks1));
        System.assert(sendigClassLinks3.equals(sendigClassLinks4));
        System.assert(sendigClassLinks4.equals(sendigClassLinks3));
        System.assert(sendigClassLinks3.equals(sendigClassLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks3 = new OASSendigClassLinks();
        OASSendigClassLinks sendigClassLinks4 = new OASSendigClassLinks();

        System.assert(sendigClassLinks1.equals(sendigClassLinks2));
        System.assert(sendigClassLinks2.equals(sendigClassLinks1));
        System.assert(sendigClassLinks3.equals(sendigClassLinks4));
        System.assert(sendigClassLinks4.equals(sendigClassLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = new OASSendigClassLinks();

        System.assertEquals(false, sendigClassLinks1.equals('foo'));
        System.assertEquals(false, sendigClassLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = new OASSendigClassLinks();
        OASSendigClassLinks sendigClassLinks3;

        System.assertEquals(false, sendigClassLinks1.equals(sendigClassLinks3));
        System.assertEquals(false, sendigClassLinks2.equals(sendigClassLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = new OASSendigClassLinks();

        System.assertEquals(sendigClassLinks1.hashCode(), sendigClassLinks1.hashCode());
        System.assertEquals(sendigClassLinks2.hashCode(), sendigClassLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassLinks sendigClassLinks1 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks2 = OASSendigClassLinks.getExample();
        OASSendigClassLinks sendigClassLinks3 = new OASSendigClassLinks();
        OASSendigClassLinks sendigClassLinks4 = new OASSendigClassLinks();

        System.assert(sendigClassLinks1.equals(sendigClassLinks2));
        System.assert(sendigClassLinks3.equals(sendigClassLinks4));
        System.assertEquals(sendigClassLinks1.hashCode(), sendigClassLinks2.hashCode());
        System.assertEquals(sendigClassLinks3.hashCode(), sendigClassLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigClassLinks sendigClassLinks = new OASSendigClassLinks();
        System.assertEquals(new List<OASSendigClassRefSubclass>(), sendigClassLinks.subclasses);
        System.assertEquals(null, sendigClassLinks.self);
        System.assertEquals(null, sendigClassLinks.modelClass);
        System.assertEquals(null, sendigClassLinks.parentProduct);
        System.assertEquals(null, sendigClassLinks.parentClass);
        System.assertEquals(null, sendigClassLinks.priorVersion);
    }
}
