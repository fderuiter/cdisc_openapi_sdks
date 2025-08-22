@isTest
private class OASSdtmDatasetVariableRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = sdtmDatasetVariableRefVersion1;
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion3 = new OASSdtmDatasetVariableRefVersion();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion4 = sdtmDatasetVariableRefVersion3;

        System.assert(sdtmDatasetVariableRefVersion1.equals(sdtmDatasetVariableRefVersion2));
        System.assert(sdtmDatasetVariableRefVersion2.equals(sdtmDatasetVariableRefVersion1));
        System.assert(sdtmDatasetVariableRefVersion1.equals(sdtmDatasetVariableRefVersion1));
        System.assert(sdtmDatasetVariableRefVersion3.equals(sdtmDatasetVariableRefVersion4));
        System.assert(sdtmDatasetVariableRefVersion4.equals(sdtmDatasetVariableRefVersion3));
        System.assert(sdtmDatasetVariableRefVersion3.equals(sdtmDatasetVariableRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion3 = new OASSdtmDatasetVariableRefVersion();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion4 = new OASSdtmDatasetVariableRefVersion();

        System.assert(sdtmDatasetVariableRefVersion1.equals(sdtmDatasetVariableRefVersion2));
        System.assert(sdtmDatasetVariableRefVersion2.equals(sdtmDatasetVariableRefVersion1));
        System.assert(sdtmDatasetVariableRefVersion3.equals(sdtmDatasetVariableRefVersion4));
        System.assert(sdtmDatasetVariableRefVersion4.equals(sdtmDatasetVariableRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = new OASSdtmDatasetVariableRefVersion();

        System.assertEquals(false, sdtmDatasetVariableRefVersion1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariableRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = new OASSdtmDatasetVariableRefVersion();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion3;

        System.assertEquals(false, sdtmDatasetVariableRefVersion1.equals(sdtmDatasetVariableRefVersion3));
        System.assertEquals(false, sdtmDatasetVariableRefVersion2.equals(sdtmDatasetVariableRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = new OASSdtmDatasetVariableRefVersion();

        System.assertEquals(sdtmDatasetVariableRefVersion1.hashCode(), sdtmDatasetVariableRefVersion1.hashCode());
        System.assertEquals(sdtmDatasetVariableRefVersion2.hashCode(), sdtmDatasetVariableRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion1 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion2 = OASSdtmDatasetVariableRefVersion.getExample();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion3 = new OASSdtmDatasetVariableRefVersion();
        OASSdtmDatasetVariableRefVersion sdtmDatasetVariableRefVersion4 = new OASSdtmDatasetVariableRefVersion();

        System.assert(sdtmDatasetVariableRefVersion1.equals(sdtmDatasetVariableRefVersion2));
        System.assert(sdtmDatasetVariableRefVersion3.equals(sdtmDatasetVariableRefVersion4));
        System.assertEquals(sdtmDatasetVariableRefVersion1.hashCode(), sdtmDatasetVariableRefVersion2.hashCode());
        System.assertEquals(sdtmDatasetVariableRefVersion3.hashCode(), sdtmDatasetVariableRefVersion4.hashCode());
    }
}
