@isTest
private class OASSdtmClassVariableRefQualifiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = sdtmClassVariableRefQualifies1;
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies3 = new OASSdtmClassVariableRefQualifies();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies4 = sdtmClassVariableRefQualifies3;

        System.assert(sdtmClassVariableRefQualifies1.equals(sdtmClassVariableRefQualifies2));
        System.assert(sdtmClassVariableRefQualifies2.equals(sdtmClassVariableRefQualifies1));
        System.assert(sdtmClassVariableRefQualifies1.equals(sdtmClassVariableRefQualifies1));
        System.assert(sdtmClassVariableRefQualifies3.equals(sdtmClassVariableRefQualifies4));
        System.assert(sdtmClassVariableRefQualifies4.equals(sdtmClassVariableRefQualifies3));
        System.assert(sdtmClassVariableRefQualifies3.equals(sdtmClassVariableRefQualifies3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies3 = new OASSdtmClassVariableRefQualifies();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies4 = new OASSdtmClassVariableRefQualifies();

        System.assert(sdtmClassVariableRefQualifies1.equals(sdtmClassVariableRefQualifies2));
        System.assert(sdtmClassVariableRefQualifies2.equals(sdtmClassVariableRefQualifies1));
        System.assert(sdtmClassVariableRefQualifies3.equals(sdtmClassVariableRefQualifies4));
        System.assert(sdtmClassVariableRefQualifies4.equals(sdtmClassVariableRefQualifies3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = new OASSdtmClassVariableRefQualifies();

        System.assertEquals(false, sdtmClassVariableRefQualifies1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableRefQualifies2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = new OASSdtmClassVariableRefQualifies();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies3;

        System.assertEquals(false, sdtmClassVariableRefQualifies1.equals(sdtmClassVariableRefQualifies3));
        System.assertEquals(false, sdtmClassVariableRefQualifies2.equals(sdtmClassVariableRefQualifies3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = new OASSdtmClassVariableRefQualifies();

        System.assertEquals(sdtmClassVariableRefQualifies1.hashCode(), sdtmClassVariableRefQualifies1.hashCode());
        System.assertEquals(sdtmClassVariableRefQualifies2.hashCode(), sdtmClassVariableRefQualifies2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies1 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies2 = OASSdtmClassVariableRefQualifies.getExample();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies3 = new OASSdtmClassVariableRefQualifies();
        OASSdtmClassVariableRefQualifies sdtmClassVariableRefQualifies4 = new OASSdtmClassVariableRefQualifies();

        System.assert(sdtmClassVariableRefQualifies1.equals(sdtmClassVariableRefQualifies2));
        System.assert(sdtmClassVariableRefQualifies3.equals(sdtmClassVariableRefQualifies4));
        System.assertEquals(sdtmClassVariableRefQualifies1.hashCode(), sdtmClassVariableRefQualifies2.hashCode());
        System.assertEquals(sdtmClassVariableRefQualifies3.hashCode(), sdtmClassVariableRefQualifies4.hashCode());
    }
}
