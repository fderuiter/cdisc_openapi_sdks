@isTest
private class OASSendigClassRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = sendigClassRefElement1;
        OASSendigClassRefElement sendigClassRefElement3 = new OASSendigClassRefElement();
        OASSendigClassRefElement sendigClassRefElement4 = sendigClassRefElement3;

        System.assert(sendigClassRefElement1.equals(sendigClassRefElement2));
        System.assert(sendigClassRefElement2.equals(sendigClassRefElement1));
        System.assert(sendigClassRefElement1.equals(sendigClassRefElement1));
        System.assert(sendigClassRefElement3.equals(sendigClassRefElement4));
        System.assert(sendigClassRefElement4.equals(sendigClassRefElement3));
        System.assert(sendigClassRefElement3.equals(sendigClassRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement3 = new OASSendigClassRefElement();
        OASSendigClassRefElement sendigClassRefElement4 = new OASSendigClassRefElement();

        System.assert(sendigClassRefElement1.equals(sendigClassRefElement2));
        System.assert(sendigClassRefElement2.equals(sendigClassRefElement1));
        System.assert(sendigClassRefElement3.equals(sendigClassRefElement4));
        System.assert(sendigClassRefElement4.equals(sendigClassRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = new OASSendigClassRefElement();

        System.assertEquals(false, sendigClassRefElement1.equals('foo'));
        System.assertEquals(false, sendigClassRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = new OASSendigClassRefElement();
        OASSendigClassRefElement sendigClassRefElement3;

        System.assertEquals(false, sendigClassRefElement1.equals(sendigClassRefElement3));
        System.assertEquals(false, sendigClassRefElement2.equals(sendigClassRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = new OASSendigClassRefElement();

        System.assertEquals(sendigClassRefElement1.hashCode(), sendigClassRefElement1.hashCode());
        System.assertEquals(sendigClassRefElement2.hashCode(), sendigClassRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigClassRefElement sendigClassRefElement1 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement2 = OASSendigClassRefElement.getExample();
        OASSendigClassRefElement sendigClassRefElement3 = new OASSendigClassRefElement();
        OASSendigClassRefElement sendigClassRefElement4 = new OASSendigClassRefElement();

        System.assert(sendigClassRefElement1.equals(sendigClassRefElement2));
        System.assert(sendigClassRefElement3.equals(sendigClassRefElement4));
        System.assertEquals(sendigClassRefElement1.hashCode(), sendigClassRefElement2.hashCode());
        System.assertEquals(sendigClassRefElement3.hashCode(), sendigClassRefElement4.hashCode());
    }
}
