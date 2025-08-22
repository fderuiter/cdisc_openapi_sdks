@isTest
private class OASSendigClassRefSubclassTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = sendigClassRefSubclass1;
        OASSendigClassRefSubclass sendigClassRefSubclass3 = new OASSendigClassRefSubclass();
        OASSendigClassRefSubclass sendigClassRefSubclass4 = sendigClassRefSubclass3;

        System.assert(sendigClassRefSubclass1.equals(sendigClassRefSubclass2));
        System.assert(sendigClassRefSubclass2.equals(sendigClassRefSubclass1));
        System.assert(sendigClassRefSubclass1.equals(sendigClassRefSubclass1));
        System.assert(sendigClassRefSubclass3.equals(sendigClassRefSubclass4));
        System.assert(sendigClassRefSubclass4.equals(sendigClassRefSubclass3));
        System.assert(sendigClassRefSubclass3.equals(sendigClassRefSubclass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass3 = new OASSendigClassRefSubclass();
        OASSendigClassRefSubclass sendigClassRefSubclass4 = new OASSendigClassRefSubclass();

        System.assert(sendigClassRefSubclass1.equals(sendigClassRefSubclass2));
        System.assert(sendigClassRefSubclass2.equals(sendigClassRefSubclass1));
        System.assert(sendigClassRefSubclass3.equals(sendigClassRefSubclass4));
        System.assert(sendigClassRefSubclass4.equals(sendigClassRefSubclass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = new OASSendigClassRefSubclass();

        System.assertEquals(false, sendigClassRefSubclass1.equals('foo'));
        System.assertEquals(false, sendigClassRefSubclass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = new OASSendigClassRefSubclass();
        OASSendigClassRefSubclass sendigClassRefSubclass3;

        System.assertEquals(false, sendigClassRefSubclass1.equals(sendigClassRefSubclass3));
        System.assertEquals(false, sendigClassRefSubclass2.equals(sendigClassRefSubclass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = new OASSendigClassRefSubclass();

        System.assertEquals(sendigClassRefSubclass1.hashCode(), sendigClassRefSubclass1.hashCode());
        System.assertEquals(sendigClassRefSubclass2.hashCode(), sendigClassRefSubclass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassRefSubclass sendigClassRefSubclass1 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass2 = OASSendigClassRefSubclass.getExample();
        OASSendigClassRefSubclass sendigClassRefSubclass3 = new OASSendigClassRefSubclass();
        OASSendigClassRefSubclass sendigClassRefSubclass4 = new OASSendigClassRefSubclass();

        System.assert(sendigClassRefSubclass1.equals(sendigClassRefSubclass2));
        System.assert(sendigClassRefSubclass3.equals(sendigClassRefSubclass4));
        System.assertEquals(sendigClassRefSubclass1.hashCode(), sendigClassRefSubclass2.hashCode());
        System.assertEquals(sendigClassRefSubclass3.hashCode(), sendigClassRefSubclass4.hashCode());
    }
}
