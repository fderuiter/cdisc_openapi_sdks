@isTest
private class OASSendigDatasetVariableRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = sendigDatasetVariableRefElement1;
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement3 = new OASSendigDatasetVariableRefElement();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement4 = sendigDatasetVariableRefElement3;

        System.assert(sendigDatasetVariableRefElement1.equals(sendigDatasetVariableRefElement2));
        System.assert(sendigDatasetVariableRefElement2.equals(sendigDatasetVariableRefElement1));
        System.assert(sendigDatasetVariableRefElement1.equals(sendigDatasetVariableRefElement1));
        System.assert(sendigDatasetVariableRefElement3.equals(sendigDatasetVariableRefElement4));
        System.assert(sendigDatasetVariableRefElement4.equals(sendigDatasetVariableRefElement3));
        System.assert(sendigDatasetVariableRefElement3.equals(sendigDatasetVariableRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement3 = new OASSendigDatasetVariableRefElement();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement4 = new OASSendigDatasetVariableRefElement();

        System.assert(sendigDatasetVariableRefElement1.equals(sendigDatasetVariableRefElement2));
        System.assert(sendigDatasetVariableRefElement2.equals(sendigDatasetVariableRefElement1));
        System.assert(sendigDatasetVariableRefElement3.equals(sendigDatasetVariableRefElement4));
        System.assert(sendigDatasetVariableRefElement4.equals(sendigDatasetVariableRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = new OASSendigDatasetVariableRefElement();

        System.assertEquals(false, sendigDatasetVariableRefElement1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariableRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = new OASSendigDatasetVariableRefElement();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement3;

        System.assertEquals(false, sendigDatasetVariableRefElement1.equals(sendigDatasetVariableRefElement3));
        System.assertEquals(false, sendigDatasetVariableRefElement2.equals(sendigDatasetVariableRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = new OASSendigDatasetVariableRefElement();

        System.assertEquals(sendigDatasetVariableRefElement1.hashCode(), sendigDatasetVariableRefElement1.hashCode());
        System.assertEquals(sendigDatasetVariableRefElement2.hashCode(), sendigDatasetVariableRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement1 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement2 = OASSendigDatasetVariableRefElement.getExample();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement3 = new OASSendigDatasetVariableRefElement();
        OASSendigDatasetVariableRefElement sendigDatasetVariableRefElement4 = new OASSendigDatasetVariableRefElement();

        System.assert(sendigDatasetVariableRefElement1.equals(sendigDatasetVariableRefElement2));
        System.assert(sendigDatasetVariableRefElement3.equals(sendigDatasetVariableRefElement4));
        System.assertEquals(sendigDatasetVariableRefElement1.hashCode(), sendigDatasetVariableRefElement2.hashCode());
        System.assertEquals(sendigDatasetVariableRefElement3.hashCode(), sendigDatasetVariableRefElement4.hashCode());
    }
}
