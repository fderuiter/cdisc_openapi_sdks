@isTest
private class OASSendigDatasetVariableRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = sendigDatasetVariableRefVersion1;
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion3 = new OASSendigDatasetVariableRefVersion();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion4 = sendigDatasetVariableRefVersion3;

        System.assert(sendigDatasetVariableRefVersion1.equals(sendigDatasetVariableRefVersion2));
        System.assert(sendigDatasetVariableRefVersion2.equals(sendigDatasetVariableRefVersion1));
        System.assert(sendigDatasetVariableRefVersion1.equals(sendigDatasetVariableRefVersion1));
        System.assert(sendigDatasetVariableRefVersion3.equals(sendigDatasetVariableRefVersion4));
        System.assert(sendigDatasetVariableRefVersion4.equals(sendigDatasetVariableRefVersion3));
        System.assert(sendigDatasetVariableRefVersion3.equals(sendigDatasetVariableRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion3 = new OASSendigDatasetVariableRefVersion();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion4 = new OASSendigDatasetVariableRefVersion();

        System.assert(sendigDatasetVariableRefVersion1.equals(sendigDatasetVariableRefVersion2));
        System.assert(sendigDatasetVariableRefVersion2.equals(sendigDatasetVariableRefVersion1));
        System.assert(sendigDatasetVariableRefVersion3.equals(sendigDatasetVariableRefVersion4));
        System.assert(sendigDatasetVariableRefVersion4.equals(sendigDatasetVariableRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = new OASSendigDatasetVariableRefVersion();

        System.assertEquals(false, sendigDatasetVariableRefVersion1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariableRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = new OASSendigDatasetVariableRefVersion();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion3;

        System.assertEquals(false, sendigDatasetVariableRefVersion1.equals(sendigDatasetVariableRefVersion3));
        System.assertEquals(false, sendigDatasetVariableRefVersion2.equals(sendigDatasetVariableRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = new OASSendigDatasetVariableRefVersion();

        System.assertEquals(sendigDatasetVariableRefVersion1.hashCode(), sendigDatasetVariableRefVersion1.hashCode());
        System.assertEquals(sendigDatasetVariableRefVersion2.hashCode(), sendigDatasetVariableRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion1 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion2 = OASSendigDatasetVariableRefVersion.getExample();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion3 = new OASSendigDatasetVariableRefVersion();
        OASSendigDatasetVariableRefVersion sendigDatasetVariableRefVersion4 = new OASSendigDatasetVariableRefVersion();

        System.assert(sendigDatasetVariableRefVersion1.equals(sendigDatasetVariableRefVersion2));
        System.assert(sendigDatasetVariableRefVersion3.equals(sendigDatasetVariableRefVersion4));
        System.assertEquals(sendigDatasetVariableRefVersion1.hashCode(), sendigDatasetVariableRefVersion2.hashCode());
        System.assertEquals(sendigDatasetVariableRefVersion3.hashCode(), sendigDatasetVariableRefVersion4.hashCode());
    }
}
