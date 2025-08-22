@isTest
private class OASCdashigProductClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = cdashigProductClasses1;
        OASCdashigProductClasses cdashigProductClasses3 = new OASCdashigProductClasses();
        OASCdashigProductClasses cdashigProductClasses4 = cdashigProductClasses3;

        System.assert(cdashigProductClasses1.equals(cdashigProductClasses2));
        System.assert(cdashigProductClasses2.equals(cdashigProductClasses1));
        System.assert(cdashigProductClasses1.equals(cdashigProductClasses1));
        System.assert(cdashigProductClasses3.equals(cdashigProductClasses4));
        System.assert(cdashigProductClasses4.equals(cdashigProductClasses3));
        System.assert(cdashigProductClasses3.equals(cdashigProductClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses3 = new OASCdashigProductClasses();
        OASCdashigProductClasses cdashigProductClasses4 = new OASCdashigProductClasses();

        System.assert(cdashigProductClasses1.equals(cdashigProductClasses2));
        System.assert(cdashigProductClasses2.equals(cdashigProductClasses1));
        System.assert(cdashigProductClasses3.equals(cdashigProductClasses4));
        System.assert(cdashigProductClasses4.equals(cdashigProductClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = new OASCdashigProductClasses();

        System.assertEquals(false, cdashigProductClasses1.equals('foo'));
        System.assertEquals(false, cdashigProductClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = new OASCdashigProductClasses();
        OASCdashigProductClasses cdashigProductClasses3;

        System.assertEquals(false, cdashigProductClasses1.equals(cdashigProductClasses3));
        System.assertEquals(false, cdashigProductClasses2.equals(cdashigProductClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = new OASCdashigProductClasses();

        System.assertEquals(cdashigProductClasses1.hashCode(), cdashigProductClasses1.hashCode());
        System.assertEquals(cdashigProductClasses2.hashCode(), cdashigProductClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductClasses cdashigProductClasses1 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses2 = OASCdashigProductClasses.getExample();
        OASCdashigProductClasses cdashigProductClasses3 = new OASCdashigProductClasses();
        OASCdashigProductClasses cdashigProductClasses4 = new OASCdashigProductClasses();

        System.assert(cdashigProductClasses1.equals(cdashigProductClasses2));
        System.assert(cdashigProductClasses3.equals(cdashigProductClasses4));
        System.assertEquals(cdashigProductClasses1.hashCode(), cdashigProductClasses2.hashCode());
        System.assertEquals(cdashigProductClasses3.hashCode(), cdashigProductClasses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigProductClasses cdashigProductClasses = new OASCdashigProductClasses();
        Map<String, String> x-property-mappings = cdashigProductClasses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
