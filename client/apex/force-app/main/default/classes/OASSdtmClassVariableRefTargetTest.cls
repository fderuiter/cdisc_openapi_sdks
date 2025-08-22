@isTest
private class OASSdtmClassVariableRefTargetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = sdtmClassVariableRefTarget1;
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget3 = new OASSdtmClassVariableRefTarget();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget4 = sdtmClassVariableRefTarget3;

        System.assert(sdtmClassVariableRefTarget1.equals(sdtmClassVariableRefTarget2));
        System.assert(sdtmClassVariableRefTarget2.equals(sdtmClassVariableRefTarget1));
        System.assert(sdtmClassVariableRefTarget1.equals(sdtmClassVariableRefTarget1));
        System.assert(sdtmClassVariableRefTarget3.equals(sdtmClassVariableRefTarget4));
        System.assert(sdtmClassVariableRefTarget4.equals(sdtmClassVariableRefTarget3));
        System.assert(sdtmClassVariableRefTarget3.equals(sdtmClassVariableRefTarget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget3 = new OASSdtmClassVariableRefTarget();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget4 = new OASSdtmClassVariableRefTarget();

        System.assert(sdtmClassVariableRefTarget1.equals(sdtmClassVariableRefTarget2));
        System.assert(sdtmClassVariableRefTarget2.equals(sdtmClassVariableRefTarget1));
        System.assert(sdtmClassVariableRefTarget3.equals(sdtmClassVariableRefTarget4));
        System.assert(sdtmClassVariableRefTarget4.equals(sdtmClassVariableRefTarget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = new OASSdtmClassVariableRefTarget();

        System.assertEquals(false, sdtmClassVariableRefTarget1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableRefTarget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = new OASSdtmClassVariableRefTarget();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget3;

        System.assertEquals(false, sdtmClassVariableRefTarget1.equals(sdtmClassVariableRefTarget3));
        System.assertEquals(false, sdtmClassVariableRefTarget2.equals(sdtmClassVariableRefTarget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = new OASSdtmClassVariableRefTarget();

        System.assertEquals(sdtmClassVariableRefTarget1.hashCode(), sdtmClassVariableRefTarget1.hashCode());
        System.assertEquals(sdtmClassVariableRefTarget2.hashCode(), sdtmClassVariableRefTarget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget1 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget2 = OASSdtmClassVariableRefTarget.getExample();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget3 = new OASSdtmClassVariableRefTarget();
        OASSdtmClassVariableRefTarget sdtmClassVariableRefTarget4 = new OASSdtmClassVariableRefTarget();

        System.assert(sdtmClassVariableRefTarget1.equals(sdtmClassVariableRefTarget2));
        System.assert(sdtmClassVariableRefTarget3.equals(sdtmClassVariableRefTarget4));
        System.assertEquals(sdtmClassVariableRefTarget1.hashCode(), sdtmClassVariableRefTarget2.hashCode());
        System.assertEquals(sdtmClassVariableRefTarget3.hashCode(), sdtmClassVariableRefTarget4.hashCode());
    }
}
