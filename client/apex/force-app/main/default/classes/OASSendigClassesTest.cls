@isTest
private class OASSendigClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = sendigClasses1;
        OASSendigClasses sendigClasses3 = new OASSendigClasses();
        OASSendigClasses sendigClasses4 = sendigClasses3;

        System.assert(sendigClasses1.equals(sendigClasses2));
        System.assert(sendigClasses2.equals(sendigClasses1));
        System.assert(sendigClasses1.equals(sendigClasses1));
        System.assert(sendigClasses3.equals(sendigClasses4));
        System.assert(sendigClasses4.equals(sendigClasses3));
        System.assert(sendigClasses3.equals(sendigClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses3 = new OASSendigClasses();
        OASSendigClasses sendigClasses4 = new OASSendigClasses();

        System.assert(sendigClasses1.equals(sendigClasses2));
        System.assert(sendigClasses2.equals(sendigClasses1));
        System.assert(sendigClasses3.equals(sendigClasses4));
        System.assert(sendigClasses4.equals(sendigClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = new OASSendigClasses();

        System.assertEquals(false, sendigClasses1.equals('foo'));
        System.assertEquals(false, sendigClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = new OASSendigClasses();
        OASSendigClasses sendigClasses3;

        System.assertEquals(false, sendigClasses1.equals(sendigClasses3));
        System.assertEquals(false, sendigClasses2.equals(sendigClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = new OASSendigClasses();

        System.assertEquals(sendigClasses1.hashCode(), sendigClasses1.hashCode());
        System.assertEquals(sendigClasses2.hashCode(), sendigClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClasses sendigClasses1 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses2 = OASSendigClasses.getExample();
        OASSendigClasses sendigClasses3 = new OASSendigClasses();
        OASSendigClasses sendigClasses4 = new OASSendigClasses();

        System.assert(sendigClasses1.equals(sendigClasses2));
        System.assert(sendigClasses3.equals(sendigClasses4));
        System.assertEquals(sendigClasses1.hashCode(), sendigClasses2.hashCode());
        System.assertEquals(sendigClasses3.hashCode(), sendigClasses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigClasses sendigClasses = new OASSendigClasses();
        Map<String, String> x-property-mappings = sendigClasses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
