@isTest
private class OASCdashigProductDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = cdashigProductDomains1;
        OASCdashigProductDomains cdashigProductDomains3 = new OASCdashigProductDomains();
        OASCdashigProductDomains cdashigProductDomains4 = cdashigProductDomains3;

        System.assert(cdashigProductDomains1.equals(cdashigProductDomains2));
        System.assert(cdashigProductDomains2.equals(cdashigProductDomains1));
        System.assert(cdashigProductDomains1.equals(cdashigProductDomains1));
        System.assert(cdashigProductDomains3.equals(cdashigProductDomains4));
        System.assert(cdashigProductDomains4.equals(cdashigProductDomains3));
        System.assert(cdashigProductDomains3.equals(cdashigProductDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains3 = new OASCdashigProductDomains();
        OASCdashigProductDomains cdashigProductDomains4 = new OASCdashigProductDomains();

        System.assert(cdashigProductDomains1.equals(cdashigProductDomains2));
        System.assert(cdashigProductDomains2.equals(cdashigProductDomains1));
        System.assert(cdashigProductDomains3.equals(cdashigProductDomains4));
        System.assert(cdashigProductDomains4.equals(cdashigProductDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = new OASCdashigProductDomains();

        System.assertEquals(false, cdashigProductDomains1.equals('foo'));
        System.assertEquals(false, cdashigProductDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = new OASCdashigProductDomains();
        OASCdashigProductDomains cdashigProductDomains3;

        System.assertEquals(false, cdashigProductDomains1.equals(cdashigProductDomains3));
        System.assertEquals(false, cdashigProductDomains2.equals(cdashigProductDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = new OASCdashigProductDomains();

        System.assertEquals(cdashigProductDomains1.hashCode(), cdashigProductDomains1.hashCode());
        System.assertEquals(cdashigProductDomains2.hashCode(), cdashigProductDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductDomains cdashigProductDomains1 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains2 = OASCdashigProductDomains.getExample();
        OASCdashigProductDomains cdashigProductDomains3 = new OASCdashigProductDomains();
        OASCdashigProductDomains cdashigProductDomains4 = new OASCdashigProductDomains();

        System.assert(cdashigProductDomains1.equals(cdashigProductDomains2));
        System.assert(cdashigProductDomains3.equals(cdashigProductDomains4));
        System.assertEquals(cdashigProductDomains1.hashCode(), cdashigProductDomains2.hashCode());
        System.assertEquals(cdashigProductDomains3.hashCode(), cdashigProductDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigProductDomains cdashigProductDomains = new OASCdashigProductDomains();
        Map<String, String> x-property-mappings = cdashigProductDomains.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
