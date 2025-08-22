@isTest
private class OASCdashigClassDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = cdashigClassDomains1;
        OASCdashigClassDomains cdashigClassDomains3 = new OASCdashigClassDomains();
        OASCdashigClassDomains cdashigClassDomains4 = cdashigClassDomains3;

        System.assert(cdashigClassDomains1.equals(cdashigClassDomains2));
        System.assert(cdashigClassDomains2.equals(cdashigClassDomains1));
        System.assert(cdashigClassDomains1.equals(cdashigClassDomains1));
        System.assert(cdashigClassDomains3.equals(cdashigClassDomains4));
        System.assert(cdashigClassDomains4.equals(cdashigClassDomains3));
        System.assert(cdashigClassDomains3.equals(cdashigClassDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains3 = new OASCdashigClassDomains();
        OASCdashigClassDomains cdashigClassDomains4 = new OASCdashigClassDomains();

        System.assert(cdashigClassDomains1.equals(cdashigClassDomains2));
        System.assert(cdashigClassDomains2.equals(cdashigClassDomains1));
        System.assert(cdashigClassDomains3.equals(cdashigClassDomains4));
        System.assert(cdashigClassDomains4.equals(cdashigClassDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = new OASCdashigClassDomains();

        System.assertEquals(false, cdashigClassDomains1.equals('foo'));
        System.assertEquals(false, cdashigClassDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = new OASCdashigClassDomains();
        OASCdashigClassDomains cdashigClassDomains3;

        System.assertEquals(false, cdashigClassDomains1.equals(cdashigClassDomains3));
        System.assertEquals(false, cdashigClassDomains2.equals(cdashigClassDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = new OASCdashigClassDomains();

        System.assertEquals(cdashigClassDomains1.hashCode(), cdashigClassDomains1.hashCode());
        System.assertEquals(cdashigClassDomains2.hashCode(), cdashigClassDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassDomains cdashigClassDomains1 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains2 = OASCdashigClassDomains.getExample();
        OASCdashigClassDomains cdashigClassDomains3 = new OASCdashigClassDomains();
        OASCdashigClassDomains cdashigClassDomains4 = new OASCdashigClassDomains();

        System.assert(cdashigClassDomains1.equals(cdashigClassDomains2));
        System.assert(cdashigClassDomains3.equals(cdashigClassDomains4));
        System.assertEquals(cdashigClassDomains1.hashCode(), cdashigClassDomains2.hashCode());
        System.assertEquals(cdashigClassDomains3.hashCode(), cdashigClassDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigClassDomains cdashigClassDomains = new OASCdashigClassDomains();
        Map<String, String> x-property-mappings = cdashigClassDomains.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
