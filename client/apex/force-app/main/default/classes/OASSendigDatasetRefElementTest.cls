@isTest
private class OASSendigDatasetRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = sendigDatasetRefElement1;
        OASSendigDatasetRefElement sendigDatasetRefElement3 = new OASSendigDatasetRefElement();
        OASSendigDatasetRefElement sendigDatasetRefElement4 = sendigDatasetRefElement3;

        System.assert(sendigDatasetRefElement1.equals(sendigDatasetRefElement2));
        System.assert(sendigDatasetRefElement2.equals(sendigDatasetRefElement1));
        System.assert(sendigDatasetRefElement1.equals(sendigDatasetRefElement1));
        System.assert(sendigDatasetRefElement3.equals(sendigDatasetRefElement4));
        System.assert(sendigDatasetRefElement4.equals(sendigDatasetRefElement3));
        System.assert(sendigDatasetRefElement3.equals(sendigDatasetRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement3 = new OASSendigDatasetRefElement();
        OASSendigDatasetRefElement sendigDatasetRefElement4 = new OASSendigDatasetRefElement();

        System.assert(sendigDatasetRefElement1.equals(sendigDatasetRefElement2));
        System.assert(sendigDatasetRefElement2.equals(sendigDatasetRefElement1));
        System.assert(sendigDatasetRefElement3.equals(sendigDatasetRefElement4));
        System.assert(sendigDatasetRefElement4.equals(sendigDatasetRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = new OASSendigDatasetRefElement();

        System.assertEquals(false, sendigDatasetRefElement1.equals('foo'));
        System.assertEquals(false, sendigDatasetRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = new OASSendigDatasetRefElement();
        OASSendigDatasetRefElement sendigDatasetRefElement3;

        System.assertEquals(false, sendigDatasetRefElement1.equals(sendigDatasetRefElement3));
        System.assertEquals(false, sendigDatasetRefElement2.equals(sendigDatasetRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = new OASSendigDatasetRefElement();

        System.assertEquals(sendigDatasetRefElement1.hashCode(), sendigDatasetRefElement1.hashCode());
        System.assertEquals(sendigDatasetRefElement2.hashCode(), sendigDatasetRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetRefElement sendigDatasetRefElement1 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement2 = OASSendigDatasetRefElement.getExample();
        OASSendigDatasetRefElement sendigDatasetRefElement3 = new OASSendigDatasetRefElement();
        OASSendigDatasetRefElement sendigDatasetRefElement4 = new OASSendigDatasetRefElement();

        System.assert(sendigDatasetRefElement1.equals(sendigDatasetRefElement2));
        System.assert(sendigDatasetRefElement3.equals(sendigDatasetRefElement4));
        System.assertEquals(sendigDatasetRefElement1.hashCode(), sendigDatasetRefElement2.hashCode());
        System.assertEquals(sendigDatasetRefElement3.hashCode(), sendigDatasetRefElement4.hashCode());
    }
}
