@isTest
private class OASSdtmigDatasetVariableRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = sdtmigDatasetVariableRefVersion1;
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion3 = new OASSdtmigDatasetVariableRefVersion();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion4 = sdtmigDatasetVariableRefVersion3;

        System.assert(sdtmigDatasetVariableRefVersion1.equals(sdtmigDatasetVariableRefVersion2));
        System.assert(sdtmigDatasetVariableRefVersion2.equals(sdtmigDatasetVariableRefVersion1));
        System.assert(sdtmigDatasetVariableRefVersion1.equals(sdtmigDatasetVariableRefVersion1));
        System.assert(sdtmigDatasetVariableRefVersion3.equals(sdtmigDatasetVariableRefVersion4));
        System.assert(sdtmigDatasetVariableRefVersion4.equals(sdtmigDatasetVariableRefVersion3));
        System.assert(sdtmigDatasetVariableRefVersion3.equals(sdtmigDatasetVariableRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion3 = new OASSdtmigDatasetVariableRefVersion();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion4 = new OASSdtmigDatasetVariableRefVersion();

        System.assert(sdtmigDatasetVariableRefVersion1.equals(sdtmigDatasetVariableRefVersion2));
        System.assert(sdtmigDatasetVariableRefVersion2.equals(sdtmigDatasetVariableRefVersion1));
        System.assert(sdtmigDatasetVariableRefVersion3.equals(sdtmigDatasetVariableRefVersion4));
        System.assert(sdtmigDatasetVariableRefVersion4.equals(sdtmigDatasetVariableRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = new OASSdtmigDatasetVariableRefVersion();

        System.assertEquals(false, sdtmigDatasetVariableRefVersion1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariableRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = new OASSdtmigDatasetVariableRefVersion();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion3;

        System.assertEquals(false, sdtmigDatasetVariableRefVersion1.equals(sdtmigDatasetVariableRefVersion3));
        System.assertEquals(false, sdtmigDatasetVariableRefVersion2.equals(sdtmigDatasetVariableRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = new OASSdtmigDatasetVariableRefVersion();

        System.assertEquals(sdtmigDatasetVariableRefVersion1.hashCode(), sdtmigDatasetVariableRefVersion1.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefVersion2.hashCode(), sdtmigDatasetVariableRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion1 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion2 = OASSdtmigDatasetVariableRefVersion.getExample();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion3 = new OASSdtmigDatasetVariableRefVersion();
        OASSdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion4 = new OASSdtmigDatasetVariableRefVersion();

        System.assert(sdtmigDatasetVariableRefVersion1.equals(sdtmigDatasetVariableRefVersion2));
        System.assert(sdtmigDatasetVariableRefVersion3.equals(sdtmigDatasetVariableRefVersion4));
        System.assertEquals(sdtmigDatasetVariableRefVersion1.hashCode(), sdtmigDatasetVariableRefVersion2.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefVersion3.hashCode(), sdtmigDatasetVariableRefVersion4.hashCode());
    }
}
