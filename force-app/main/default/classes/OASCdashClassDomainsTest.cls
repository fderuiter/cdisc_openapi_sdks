@isTest
private class OASCdashClassDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = cdashClassDomains1;
        OASCdashClassDomains cdashClassDomains3 = new OASCdashClassDomains();
        OASCdashClassDomains cdashClassDomains4 = cdashClassDomains3;

        System.assert(cdashClassDomains1.equals(cdashClassDomains2));
        System.assert(cdashClassDomains2.equals(cdashClassDomains1));
        System.assert(cdashClassDomains1.equals(cdashClassDomains1));
        System.assert(cdashClassDomains3.equals(cdashClassDomains4));
        System.assert(cdashClassDomains4.equals(cdashClassDomains3));
        System.assert(cdashClassDomains3.equals(cdashClassDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains3 = new OASCdashClassDomains();
        OASCdashClassDomains cdashClassDomains4 = new OASCdashClassDomains();

        System.assert(cdashClassDomains1.equals(cdashClassDomains2));
        System.assert(cdashClassDomains2.equals(cdashClassDomains1));
        System.assert(cdashClassDomains3.equals(cdashClassDomains4));
        System.assert(cdashClassDomains4.equals(cdashClassDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = new OASCdashClassDomains();

        System.assertEquals(false, cdashClassDomains1.equals('foo'));
        System.assertEquals(false, cdashClassDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = new OASCdashClassDomains();
        OASCdashClassDomains cdashClassDomains3;

        System.assertEquals(false, cdashClassDomains1.equals(cdashClassDomains3));
        System.assertEquals(false, cdashClassDomains2.equals(cdashClassDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = new OASCdashClassDomains();

        System.assertEquals(cdashClassDomains1.hashCode(), cdashClassDomains1.hashCode());
        System.assertEquals(cdashClassDomains2.hashCode(), cdashClassDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassDomains cdashClassDomains1 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains2 = OASCdashClassDomains.getExample();
        OASCdashClassDomains cdashClassDomains3 = new OASCdashClassDomains();
        OASCdashClassDomains cdashClassDomains4 = new OASCdashClassDomains();

        System.assert(cdashClassDomains1.equals(cdashClassDomains2));
        System.assert(cdashClassDomains3.equals(cdashClassDomains4));
        System.assertEquals(cdashClassDomains1.hashCode(), cdashClassDomains2.hashCode());
        System.assertEquals(cdashClassDomains3.hashCode(), cdashClassDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashClassDomains cdashClassDomains = new OASCdashClassDomains();
        Map<String, String> x-property-mappings = cdashClassDomains.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
