@isTest
private class OASSendigProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = sendigProductLinks1;
        OASSendigProductLinks sendigProductLinks3 = new OASSendigProductLinks();
        OASSendigProductLinks sendigProductLinks4 = sendigProductLinks3;

        System.assert(sendigProductLinks1.equals(sendigProductLinks2));
        System.assert(sendigProductLinks2.equals(sendigProductLinks1));
        System.assert(sendigProductLinks1.equals(sendigProductLinks1));
        System.assert(sendigProductLinks3.equals(sendigProductLinks4));
        System.assert(sendigProductLinks4.equals(sendigProductLinks3));
        System.assert(sendigProductLinks3.equals(sendigProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks3 = new OASSendigProductLinks();
        OASSendigProductLinks sendigProductLinks4 = new OASSendigProductLinks();

        System.assert(sendigProductLinks1.equals(sendigProductLinks2));
        System.assert(sendigProductLinks2.equals(sendigProductLinks1));
        System.assert(sendigProductLinks3.equals(sendigProductLinks4));
        System.assert(sendigProductLinks4.equals(sendigProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = new OASSendigProductLinks();

        System.assertEquals(false, sendigProductLinks1.equals('foo'));
        System.assertEquals(false, sendigProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = new OASSendigProductLinks();
        OASSendigProductLinks sendigProductLinks3;

        System.assertEquals(false, sendigProductLinks1.equals(sendigProductLinks3));
        System.assertEquals(false, sendigProductLinks2.equals(sendigProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = new OASSendigProductLinks();

        System.assertEquals(sendigProductLinks1.hashCode(), sendigProductLinks1.hashCode());
        System.assertEquals(sendigProductLinks2.hashCode(), sendigProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigProductLinks sendigProductLinks1 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks2 = OASSendigProductLinks.getExample();
        OASSendigProductLinks sendigProductLinks3 = new OASSendigProductLinks();
        OASSendigProductLinks sendigProductLinks4 = new OASSendigProductLinks();

        System.assert(sendigProductLinks1.equals(sendigProductLinks2));
        System.assert(sendigProductLinks3.equals(sendigProductLinks4));
        System.assertEquals(sendigProductLinks1.hashCode(), sendigProductLinks2.hashCode());
        System.assertEquals(sendigProductLinks3.hashCode(), sendigProductLinks4.hashCode());
    }
}
