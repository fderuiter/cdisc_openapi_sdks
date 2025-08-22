@isTest
private class OASSendigClassesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = sendigClassesLinks1;
        OASSendigClassesLinks sendigClassesLinks3 = new OASSendigClassesLinks();
        OASSendigClassesLinks sendigClassesLinks4 = sendigClassesLinks3;

        System.assert(sendigClassesLinks1.equals(sendigClassesLinks2));
        System.assert(sendigClassesLinks2.equals(sendigClassesLinks1));
        System.assert(sendigClassesLinks1.equals(sendigClassesLinks1));
        System.assert(sendigClassesLinks3.equals(sendigClassesLinks4));
        System.assert(sendigClassesLinks4.equals(sendigClassesLinks3));
        System.assert(sendigClassesLinks3.equals(sendigClassesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks3 = new OASSendigClassesLinks();
        OASSendigClassesLinks sendigClassesLinks4 = new OASSendigClassesLinks();

        System.assert(sendigClassesLinks1.equals(sendigClassesLinks2));
        System.assert(sendigClassesLinks2.equals(sendigClassesLinks1));
        System.assert(sendigClassesLinks3.equals(sendigClassesLinks4));
        System.assert(sendigClassesLinks4.equals(sendigClassesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = new OASSendigClassesLinks();

        System.assertEquals(false, sendigClassesLinks1.equals('foo'));
        System.assertEquals(false, sendigClassesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = new OASSendigClassesLinks();
        OASSendigClassesLinks sendigClassesLinks3;

        System.assertEquals(false, sendigClassesLinks1.equals(sendigClassesLinks3));
        System.assertEquals(false, sendigClassesLinks2.equals(sendigClassesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = new OASSendigClassesLinks();

        System.assertEquals(sendigClassesLinks1.hashCode(), sendigClassesLinks1.hashCode());
        System.assertEquals(sendigClassesLinks2.hashCode(), sendigClassesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassesLinks sendigClassesLinks1 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks2 = OASSendigClassesLinks.getExample();
        OASSendigClassesLinks sendigClassesLinks3 = new OASSendigClassesLinks();
        OASSendigClassesLinks sendigClassesLinks4 = new OASSendigClassesLinks();

        System.assert(sendigClassesLinks1.equals(sendigClassesLinks2));
        System.assert(sendigClassesLinks3.equals(sendigClassesLinks4));
        System.assertEquals(sendigClassesLinks1.hashCode(), sendigClassesLinks2.hashCode());
        System.assertEquals(sendigClassesLinks3.hashCode(), sendigClassesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigClassesLinks sendigClassesLinks = new OASSendigClassesLinks();
        System.assertEquals(new List<OASSendigClassRefElement>(), sendigClassesLinks.classes);
        System.assertEquals(null, sendigClassesLinks.self);
        System.assertEquals(null, sendigClassesLinks.priorVersion);
    }
}
