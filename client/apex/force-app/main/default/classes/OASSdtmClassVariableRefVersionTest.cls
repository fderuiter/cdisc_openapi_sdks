@isTest
private class OASSdtmClassVariableRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = sdtmClassVariableRefVersion1;
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion3 = new OASSdtmClassVariableRefVersion();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion4 = sdtmClassVariableRefVersion3;

        System.assert(sdtmClassVariableRefVersion1.equals(sdtmClassVariableRefVersion2));
        System.assert(sdtmClassVariableRefVersion2.equals(sdtmClassVariableRefVersion1));
        System.assert(sdtmClassVariableRefVersion1.equals(sdtmClassVariableRefVersion1));
        System.assert(sdtmClassVariableRefVersion3.equals(sdtmClassVariableRefVersion4));
        System.assert(sdtmClassVariableRefVersion4.equals(sdtmClassVariableRefVersion3));
        System.assert(sdtmClassVariableRefVersion3.equals(sdtmClassVariableRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion3 = new OASSdtmClassVariableRefVersion();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion4 = new OASSdtmClassVariableRefVersion();

        System.assert(sdtmClassVariableRefVersion1.equals(sdtmClassVariableRefVersion2));
        System.assert(sdtmClassVariableRefVersion2.equals(sdtmClassVariableRefVersion1));
        System.assert(sdtmClassVariableRefVersion3.equals(sdtmClassVariableRefVersion4));
        System.assert(sdtmClassVariableRefVersion4.equals(sdtmClassVariableRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = new OASSdtmClassVariableRefVersion();

        System.assertEquals(false, sdtmClassVariableRefVersion1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = new OASSdtmClassVariableRefVersion();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion3;

        System.assertEquals(false, sdtmClassVariableRefVersion1.equals(sdtmClassVariableRefVersion3));
        System.assertEquals(false, sdtmClassVariableRefVersion2.equals(sdtmClassVariableRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = new OASSdtmClassVariableRefVersion();

        System.assertEquals(sdtmClassVariableRefVersion1.hashCode(), sdtmClassVariableRefVersion1.hashCode());
        System.assertEquals(sdtmClassVariableRefVersion2.hashCode(), sdtmClassVariableRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion1 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion2 = OASSdtmClassVariableRefVersion.getExample();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion3 = new OASSdtmClassVariableRefVersion();
        OASSdtmClassVariableRefVersion sdtmClassVariableRefVersion4 = new OASSdtmClassVariableRefVersion();

        System.assert(sdtmClassVariableRefVersion1.equals(sdtmClassVariableRefVersion2));
        System.assert(sdtmClassVariableRefVersion3.equals(sdtmClassVariableRefVersion4));
        System.assertEquals(sdtmClassVariableRefVersion1.hashCode(), sdtmClassVariableRefVersion2.hashCode());
        System.assertEquals(sdtmClassVariableRefVersion3.hashCode(), sdtmClassVariableRefVersion4.hashCode());
    }
}
