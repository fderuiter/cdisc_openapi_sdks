@isTest
private class OASCdashProductDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = cdashProductDomains1;
        OASCdashProductDomains cdashProductDomains3 = new OASCdashProductDomains();
        OASCdashProductDomains cdashProductDomains4 = cdashProductDomains3;

        System.assert(cdashProductDomains1.equals(cdashProductDomains2));
        System.assert(cdashProductDomains2.equals(cdashProductDomains1));
        System.assert(cdashProductDomains1.equals(cdashProductDomains1));
        System.assert(cdashProductDomains3.equals(cdashProductDomains4));
        System.assert(cdashProductDomains4.equals(cdashProductDomains3));
        System.assert(cdashProductDomains3.equals(cdashProductDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains3 = new OASCdashProductDomains();
        OASCdashProductDomains cdashProductDomains4 = new OASCdashProductDomains();

        System.assert(cdashProductDomains1.equals(cdashProductDomains2));
        System.assert(cdashProductDomains2.equals(cdashProductDomains1));
        System.assert(cdashProductDomains3.equals(cdashProductDomains4));
        System.assert(cdashProductDomains4.equals(cdashProductDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = new OASCdashProductDomains();

        System.assertEquals(false, cdashProductDomains1.equals('foo'));
        System.assertEquals(false, cdashProductDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = new OASCdashProductDomains();
        OASCdashProductDomains cdashProductDomains3;

        System.assertEquals(false, cdashProductDomains1.equals(cdashProductDomains3));
        System.assertEquals(false, cdashProductDomains2.equals(cdashProductDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = new OASCdashProductDomains();

        System.assertEquals(cdashProductDomains1.hashCode(), cdashProductDomains1.hashCode());
        System.assertEquals(cdashProductDomains2.hashCode(), cdashProductDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductDomains cdashProductDomains1 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains2 = OASCdashProductDomains.getExample();
        OASCdashProductDomains cdashProductDomains3 = new OASCdashProductDomains();
        OASCdashProductDomains cdashProductDomains4 = new OASCdashProductDomains();

        System.assert(cdashProductDomains1.equals(cdashProductDomains2));
        System.assert(cdashProductDomains3.equals(cdashProductDomains4));
        System.assertEquals(cdashProductDomains1.hashCode(), cdashProductDomains2.hashCode());
        System.assertEquals(cdashProductDomains3.hashCode(), cdashProductDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashProductDomains cdashProductDomains = new OASCdashProductDomains();
        Map<String, String> x-property-mappings = cdashProductDomains.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
