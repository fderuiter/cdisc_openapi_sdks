@isTest
private class OASSdtmClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = sdtmClasses1;
        OASSdtmClasses sdtmClasses3 = new OASSdtmClasses();
        OASSdtmClasses sdtmClasses4 = sdtmClasses3;

        System.assert(sdtmClasses1.equals(sdtmClasses2));
        System.assert(sdtmClasses2.equals(sdtmClasses1));
        System.assert(sdtmClasses1.equals(sdtmClasses1));
        System.assert(sdtmClasses3.equals(sdtmClasses4));
        System.assert(sdtmClasses4.equals(sdtmClasses3));
        System.assert(sdtmClasses3.equals(sdtmClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses3 = new OASSdtmClasses();
        OASSdtmClasses sdtmClasses4 = new OASSdtmClasses();

        System.assert(sdtmClasses1.equals(sdtmClasses2));
        System.assert(sdtmClasses2.equals(sdtmClasses1));
        System.assert(sdtmClasses3.equals(sdtmClasses4));
        System.assert(sdtmClasses4.equals(sdtmClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = new OASSdtmClasses();

        System.assertEquals(false, sdtmClasses1.equals('foo'));
        System.assertEquals(false, sdtmClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = new OASSdtmClasses();
        OASSdtmClasses sdtmClasses3;

        System.assertEquals(false, sdtmClasses1.equals(sdtmClasses3));
        System.assertEquals(false, sdtmClasses2.equals(sdtmClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = new OASSdtmClasses();

        System.assertEquals(sdtmClasses1.hashCode(), sdtmClasses1.hashCode());
        System.assertEquals(sdtmClasses2.hashCode(), sdtmClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClasses sdtmClasses1 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses2 = OASSdtmClasses.getExample();
        OASSdtmClasses sdtmClasses3 = new OASSdtmClasses();
        OASSdtmClasses sdtmClasses4 = new OASSdtmClasses();

        System.assert(sdtmClasses1.equals(sdtmClasses2));
        System.assert(sdtmClasses3.equals(sdtmClasses4));
        System.assertEquals(sdtmClasses1.hashCode(), sdtmClasses2.hashCode());
        System.assertEquals(sdtmClasses3.hashCode(), sdtmClasses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmClasses sdtmClasses = new OASSdtmClasses();
        Map<String, String> x-property-mappings = sdtmClasses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
