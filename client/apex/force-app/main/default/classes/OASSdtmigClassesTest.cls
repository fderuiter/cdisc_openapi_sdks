@isTest
private class OASSdtmigClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = sdtmigClasses1;
        OASSdtmigClasses sdtmigClasses3 = new OASSdtmigClasses();
        OASSdtmigClasses sdtmigClasses4 = sdtmigClasses3;

        System.assert(sdtmigClasses1.equals(sdtmigClasses2));
        System.assert(sdtmigClasses2.equals(sdtmigClasses1));
        System.assert(sdtmigClasses1.equals(sdtmigClasses1));
        System.assert(sdtmigClasses3.equals(sdtmigClasses4));
        System.assert(sdtmigClasses4.equals(sdtmigClasses3));
        System.assert(sdtmigClasses3.equals(sdtmigClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses3 = new OASSdtmigClasses();
        OASSdtmigClasses sdtmigClasses4 = new OASSdtmigClasses();

        System.assert(sdtmigClasses1.equals(sdtmigClasses2));
        System.assert(sdtmigClasses2.equals(sdtmigClasses1));
        System.assert(sdtmigClasses3.equals(sdtmigClasses4));
        System.assert(sdtmigClasses4.equals(sdtmigClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = new OASSdtmigClasses();

        System.assertEquals(false, sdtmigClasses1.equals('foo'));
        System.assertEquals(false, sdtmigClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = new OASSdtmigClasses();
        OASSdtmigClasses sdtmigClasses3;

        System.assertEquals(false, sdtmigClasses1.equals(sdtmigClasses3));
        System.assertEquals(false, sdtmigClasses2.equals(sdtmigClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = new OASSdtmigClasses();

        System.assertEquals(sdtmigClasses1.hashCode(), sdtmigClasses1.hashCode());
        System.assertEquals(sdtmigClasses2.hashCode(), sdtmigClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClasses sdtmigClasses1 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses2 = OASSdtmigClasses.getExample();
        OASSdtmigClasses sdtmigClasses3 = new OASSdtmigClasses();
        OASSdtmigClasses sdtmigClasses4 = new OASSdtmigClasses();

        System.assert(sdtmigClasses1.equals(sdtmigClasses2));
        System.assert(sdtmigClasses3.equals(sdtmigClasses4));
        System.assertEquals(sdtmigClasses1.hashCode(), sdtmigClasses2.hashCode());
        System.assertEquals(sdtmigClasses3.hashCode(), sdtmigClasses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigClasses sdtmigClasses = new OASSdtmigClasses();
        Map<String, String> x-property-mappings = sdtmigClasses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
