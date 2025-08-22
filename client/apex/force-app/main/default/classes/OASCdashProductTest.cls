@isTest
private class OASCdashProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = cdashProduct1;
        OASCdashProduct cdashProduct3 = new OASCdashProduct();
        OASCdashProduct cdashProduct4 = cdashProduct3;

        System.assert(cdashProduct1.equals(cdashProduct2));
        System.assert(cdashProduct2.equals(cdashProduct1));
        System.assert(cdashProduct1.equals(cdashProduct1));
        System.assert(cdashProduct3.equals(cdashProduct4));
        System.assert(cdashProduct4.equals(cdashProduct3));
        System.assert(cdashProduct3.equals(cdashProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct3 = new OASCdashProduct();
        OASCdashProduct cdashProduct4 = new OASCdashProduct();

        System.assert(cdashProduct1.equals(cdashProduct2));
        System.assert(cdashProduct2.equals(cdashProduct1));
        System.assert(cdashProduct3.equals(cdashProduct4));
        System.assert(cdashProduct4.equals(cdashProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = new OASCdashProduct();

        System.assertEquals(false, cdashProduct1.equals('foo'));
        System.assertEquals(false, cdashProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = new OASCdashProduct();
        OASCdashProduct cdashProduct3;

        System.assertEquals(false, cdashProduct1.equals(cdashProduct3));
        System.assertEquals(false, cdashProduct2.equals(cdashProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = new OASCdashProduct();

        System.assertEquals(cdashProduct1.hashCode(), cdashProduct1.hashCode());
        System.assertEquals(cdashProduct2.hashCode(), cdashProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProduct cdashProduct1 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct2 = OASCdashProduct.getExample();
        OASCdashProduct cdashProduct3 = new OASCdashProduct();
        OASCdashProduct cdashProduct4 = new OASCdashProduct();

        System.assert(cdashProduct1.equals(cdashProduct2));
        System.assert(cdashProduct3.equals(cdashProduct4));
        System.assertEquals(cdashProduct1.hashCode(), cdashProduct2.hashCode());
        System.assertEquals(cdashProduct3.hashCode(), cdashProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashProduct cdashProduct = new OASCdashProduct();
        Map<String, String> x-property-mappings = cdashProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashProduct cdashProduct = new OASCdashProduct();
        System.assertEquals(new List<OASCdashClass>(), cdashProduct.classes);
        System.assertEquals(new List<OASCdashDomain>(), cdashProduct.domains);
        System.assertEquals(null, cdashProduct.name);
        System.assertEquals(null, cdashProduct.label);
        System.assertEquals(null, cdashProduct.description);
        System.assertEquals(null, cdashProduct.source);
        System.assertEquals(null, cdashProduct.effectiveDate);
        System.assertEquals(null, cdashProduct.registrationStatus);
        System.assertEquals(null, cdashProduct.version);
        System.assertEquals(null, cdashProduct.links);
    }
}
