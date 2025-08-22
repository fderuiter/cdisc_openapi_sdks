@isTest
private class OASSdtmigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = sdtmigProduct1;
        OASSdtmigProduct sdtmigProduct3 = new OASSdtmigProduct();
        OASSdtmigProduct sdtmigProduct4 = sdtmigProduct3;

        System.assert(sdtmigProduct1.equals(sdtmigProduct2));
        System.assert(sdtmigProduct2.equals(sdtmigProduct1));
        System.assert(sdtmigProduct1.equals(sdtmigProduct1));
        System.assert(sdtmigProduct3.equals(sdtmigProduct4));
        System.assert(sdtmigProduct4.equals(sdtmigProduct3));
        System.assert(sdtmigProduct3.equals(sdtmigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct3 = new OASSdtmigProduct();
        OASSdtmigProduct sdtmigProduct4 = new OASSdtmigProduct();

        System.assert(sdtmigProduct1.equals(sdtmigProduct2));
        System.assert(sdtmigProduct2.equals(sdtmigProduct1));
        System.assert(sdtmigProduct3.equals(sdtmigProduct4));
        System.assert(sdtmigProduct4.equals(sdtmigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = new OASSdtmigProduct();

        System.assertEquals(false, sdtmigProduct1.equals('foo'));
        System.assertEquals(false, sdtmigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = new OASSdtmigProduct();
        OASSdtmigProduct sdtmigProduct3;

        System.assertEquals(false, sdtmigProduct1.equals(sdtmigProduct3));
        System.assertEquals(false, sdtmigProduct2.equals(sdtmigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = new OASSdtmigProduct();

        System.assertEquals(sdtmigProduct1.hashCode(), sdtmigProduct1.hashCode());
        System.assertEquals(sdtmigProduct2.hashCode(), sdtmigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigProduct sdtmigProduct1 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct2 = OASSdtmigProduct.getExample();
        OASSdtmigProduct sdtmigProduct3 = new OASSdtmigProduct();
        OASSdtmigProduct sdtmigProduct4 = new OASSdtmigProduct();

        System.assert(sdtmigProduct1.equals(sdtmigProduct2));
        System.assert(sdtmigProduct3.equals(sdtmigProduct4));
        System.assertEquals(sdtmigProduct1.hashCode(), sdtmigProduct2.hashCode());
        System.assertEquals(sdtmigProduct3.hashCode(), sdtmigProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigProduct sdtmigProduct = new OASSdtmigProduct();
        Map<String, String> x-property-mappings = sdtmigProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigProduct sdtmigProduct = new OASSdtmigProduct();
        System.assertEquals(new List<OASSdtmigClass>(), sdtmigProduct.classes);
        System.assertEquals(null, sdtmigProduct.name);
        System.assertEquals(null, sdtmigProduct.label);
        System.assertEquals(null, sdtmigProduct.description);
        System.assertEquals(null, sdtmigProduct.source);
        System.assertEquals(null, sdtmigProduct.effectiveDate);
        System.assertEquals(null, sdtmigProduct.registrationStatus);
        System.assertEquals(null, sdtmigProduct.version);
        System.assertEquals(null, sdtmigProduct.links);
    }
}
