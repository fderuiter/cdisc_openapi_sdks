@isTest
private class OASCdashigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = cdashigProduct1;
        OASCdashigProduct cdashigProduct3 = new OASCdashigProduct();
        OASCdashigProduct cdashigProduct4 = cdashigProduct3;

        System.assert(cdashigProduct1.equals(cdashigProduct2));
        System.assert(cdashigProduct2.equals(cdashigProduct1));
        System.assert(cdashigProduct1.equals(cdashigProduct1));
        System.assert(cdashigProduct3.equals(cdashigProduct4));
        System.assert(cdashigProduct4.equals(cdashigProduct3));
        System.assert(cdashigProduct3.equals(cdashigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct3 = new OASCdashigProduct();
        OASCdashigProduct cdashigProduct4 = new OASCdashigProduct();

        System.assert(cdashigProduct1.equals(cdashigProduct2));
        System.assert(cdashigProduct2.equals(cdashigProduct1));
        System.assert(cdashigProduct3.equals(cdashigProduct4));
        System.assert(cdashigProduct4.equals(cdashigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = new OASCdashigProduct();

        System.assertEquals(false, cdashigProduct1.equals('foo'));
        System.assertEquals(false, cdashigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = new OASCdashigProduct();
        OASCdashigProduct cdashigProduct3;

        System.assertEquals(false, cdashigProduct1.equals(cdashigProduct3));
        System.assertEquals(false, cdashigProduct2.equals(cdashigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = new OASCdashigProduct();

        System.assertEquals(cdashigProduct1.hashCode(), cdashigProduct1.hashCode());
        System.assertEquals(cdashigProduct2.hashCode(), cdashigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProduct cdashigProduct1 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct2 = OASCdashigProduct.getExample();
        OASCdashigProduct cdashigProduct3 = new OASCdashigProduct();
        OASCdashigProduct cdashigProduct4 = new OASCdashigProduct();

        System.assert(cdashigProduct1.equals(cdashigProduct2));
        System.assert(cdashigProduct3.equals(cdashigProduct4));
        System.assertEquals(cdashigProduct1.hashCode(), cdashigProduct2.hashCode());
        System.assertEquals(cdashigProduct3.hashCode(), cdashigProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigProduct cdashigProduct = new OASCdashigProduct();
        Map<String, String> x-property-mappings = cdashigProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigProduct cdashigProduct = new OASCdashigProduct();
        System.assertEquals(new List<OASCdashigClass>(), cdashigProduct.classes);
        System.assertEquals(null, cdashigProduct.name);
        System.assertEquals(null, cdashigProduct.label);
        System.assertEquals(null, cdashigProduct.description);
        System.assertEquals(null, cdashigProduct.source);
        System.assertEquals(null, cdashigProduct.effectiveDate);
        System.assertEquals(null, cdashigProduct.registrationStatus);
        System.assertEquals(null, cdashigProduct.version);
        System.assertEquals(null, cdashigProduct.links);
    }
}
