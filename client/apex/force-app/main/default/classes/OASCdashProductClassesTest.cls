@isTest
private class OASCdashProductClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = cdashProductClasses1;
        OASCdashProductClasses cdashProductClasses3 = new OASCdashProductClasses();
        OASCdashProductClasses cdashProductClasses4 = cdashProductClasses3;

        System.assert(cdashProductClasses1.equals(cdashProductClasses2));
        System.assert(cdashProductClasses2.equals(cdashProductClasses1));
        System.assert(cdashProductClasses1.equals(cdashProductClasses1));
        System.assert(cdashProductClasses3.equals(cdashProductClasses4));
        System.assert(cdashProductClasses4.equals(cdashProductClasses3));
        System.assert(cdashProductClasses3.equals(cdashProductClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses3 = new OASCdashProductClasses();
        OASCdashProductClasses cdashProductClasses4 = new OASCdashProductClasses();

        System.assert(cdashProductClasses1.equals(cdashProductClasses2));
        System.assert(cdashProductClasses2.equals(cdashProductClasses1));
        System.assert(cdashProductClasses3.equals(cdashProductClasses4));
        System.assert(cdashProductClasses4.equals(cdashProductClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = new OASCdashProductClasses();

        System.assertEquals(false, cdashProductClasses1.equals('foo'));
        System.assertEquals(false, cdashProductClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = new OASCdashProductClasses();
        OASCdashProductClasses cdashProductClasses3;

        System.assertEquals(false, cdashProductClasses1.equals(cdashProductClasses3));
        System.assertEquals(false, cdashProductClasses2.equals(cdashProductClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = new OASCdashProductClasses();

        System.assertEquals(cdashProductClasses1.hashCode(), cdashProductClasses1.hashCode());
        System.assertEquals(cdashProductClasses2.hashCode(), cdashProductClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductClasses cdashProductClasses1 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses2 = OASCdashProductClasses.getExample();
        OASCdashProductClasses cdashProductClasses3 = new OASCdashProductClasses();
        OASCdashProductClasses cdashProductClasses4 = new OASCdashProductClasses();

        System.assert(cdashProductClasses1.equals(cdashProductClasses2));
        System.assert(cdashProductClasses3.equals(cdashProductClasses4));
        System.assertEquals(cdashProductClasses1.hashCode(), cdashProductClasses2.hashCode());
        System.assertEquals(cdashProductClasses3.hashCode(), cdashProductClasses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashProductClasses cdashProductClasses = new OASCdashProductClasses();
        Map<String, String> x-property-mappings = cdashProductClasses.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
