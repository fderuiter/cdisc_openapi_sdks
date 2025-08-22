@isTest
private class OASSendigProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = sendigProductRefElement1;
        OASSendigProductRefElement sendigProductRefElement3 = new OASSendigProductRefElement();
        OASSendigProductRefElement sendigProductRefElement4 = sendigProductRefElement3;

        System.assert(sendigProductRefElement1.equals(sendigProductRefElement2));
        System.assert(sendigProductRefElement2.equals(sendigProductRefElement1));
        System.assert(sendigProductRefElement1.equals(sendigProductRefElement1));
        System.assert(sendigProductRefElement3.equals(sendigProductRefElement4));
        System.assert(sendigProductRefElement4.equals(sendigProductRefElement3));
        System.assert(sendigProductRefElement3.equals(sendigProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement3 = new OASSendigProductRefElement();
        OASSendigProductRefElement sendigProductRefElement4 = new OASSendigProductRefElement();

        System.assert(sendigProductRefElement1.equals(sendigProductRefElement2));
        System.assert(sendigProductRefElement2.equals(sendigProductRefElement1));
        System.assert(sendigProductRefElement3.equals(sendigProductRefElement4));
        System.assert(sendigProductRefElement4.equals(sendigProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = new OASSendigProductRefElement();

        System.assertEquals(false, sendigProductRefElement1.equals('foo'));
        System.assertEquals(false, sendigProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = new OASSendigProductRefElement();
        OASSendigProductRefElement sendigProductRefElement3;

        System.assertEquals(false, sendigProductRefElement1.equals(sendigProductRefElement3));
        System.assertEquals(false, sendigProductRefElement2.equals(sendigProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = new OASSendigProductRefElement();

        System.assertEquals(sendigProductRefElement1.hashCode(), sendigProductRefElement1.hashCode());
        System.assertEquals(sendigProductRefElement2.hashCode(), sendigProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigProductRefElement sendigProductRefElement1 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement2 = OASSendigProductRefElement.getExample();
        OASSendigProductRefElement sendigProductRefElement3 = new OASSendigProductRefElement();
        OASSendigProductRefElement sendigProductRefElement4 = new OASSendigProductRefElement();

        System.assert(sendigProductRefElement1.equals(sendigProductRefElement2));
        System.assert(sendigProductRefElement3.equals(sendigProductRefElement4));
        System.assertEquals(sendigProductRefElement1.hashCode(), sendigProductRefElement2.hashCode());
        System.assertEquals(sendigProductRefElement3.hashCode(), sendigProductRefElement4.hashCode());
    }
}
