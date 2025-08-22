@isTest
private class OASSdtmClassVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = sdtmClassVariable1;
        OASSdtmClassVariable sdtmClassVariable3 = new OASSdtmClassVariable();
        OASSdtmClassVariable sdtmClassVariable4 = sdtmClassVariable3;

        System.assert(sdtmClassVariable1.equals(sdtmClassVariable2));
        System.assert(sdtmClassVariable2.equals(sdtmClassVariable1));
        System.assert(sdtmClassVariable1.equals(sdtmClassVariable1));
        System.assert(sdtmClassVariable3.equals(sdtmClassVariable4));
        System.assert(sdtmClassVariable4.equals(sdtmClassVariable3));
        System.assert(sdtmClassVariable3.equals(sdtmClassVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable3 = new OASSdtmClassVariable();
        OASSdtmClassVariable sdtmClassVariable4 = new OASSdtmClassVariable();

        System.assert(sdtmClassVariable1.equals(sdtmClassVariable2));
        System.assert(sdtmClassVariable2.equals(sdtmClassVariable1));
        System.assert(sdtmClassVariable3.equals(sdtmClassVariable4));
        System.assert(sdtmClassVariable4.equals(sdtmClassVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = new OASSdtmClassVariable();

        System.assertEquals(false, sdtmClassVariable1.equals('foo'));
        System.assertEquals(false, sdtmClassVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = new OASSdtmClassVariable();
        OASSdtmClassVariable sdtmClassVariable3;

        System.assertEquals(false, sdtmClassVariable1.equals(sdtmClassVariable3));
        System.assertEquals(false, sdtmClassVariable2.equals(sdtmClassVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = new OASSdtmClassVariable();

        System.assertEquals(sdtmClassVariable1.hashCode(), sdtmClassVariable1.hashCode());
        System.assertEquals(sdtmClassVariable2.hashCode(), sdtmClassVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariable sdtmClassVariable1 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable2 = OASSdtmClassVariable.getExample();
        OASSdtmClassVariable sdtmClassVariable3 = new OASSdtmClassVariable();
        OASSdtmClassVariable sdtmClassVariable4 = new OASSdtmClassVariable();

        System.assert(sdtmClassVariable1.equals(sdtmClassVariable2));
        System.assert(sdtmClassVariable3.equals(sdtmClassVariable4));
        System.assertEquals(sdtmClassVariable1.hashCode(), sdtmClassVariable2.hashCode());
        System.assertEquals(sdtmClassVariable3.hashCode(), sdtmClassVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmClassVariable sdtmClassVariable = new OASSdtmClassVariable();
        Map<String, String> x-property-mappings = sdtmClassVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
