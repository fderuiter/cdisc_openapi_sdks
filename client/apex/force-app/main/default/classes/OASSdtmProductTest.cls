@isTest
private class OASSdtmProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = sdtmProduct1;
        OASSdtmProduct sdtmProduct3 = new OASSdtmProduct();
        OASSdtmProduct sdtmProduct4 = sdtmProduct3;

        System.assert(sdtmProduct1.equals(sdtmProduct2));
        System.assert(sdtmProduct2.equals(sdtmProduct1));
        System.assert(sdtmProduct1.equals(sdtmProduct1));
        System.assert(sdtmProduct3.equals(sdtmProduct4));
        System.assert(sdtmProduct4.equals(sdtmProduct3));
        System.assert(sdtmProduct3.equals(sdtmProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct3 = new OASSdtmProduct();
        OASSdtmProduct sdtmProduct4 = new OASSdtmProduct();

        System.assert(sdtmProduct1.equals(sdtmProduct2));
        System.assert(sdtmProduct2.equals(sdtmProduct1));
        System.assert(sdtmProduct3.equals(sdtmProduct4));
        System.assert(sdtmProduct4.equals(sdtmProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = new OASSdtmProduct();

        System.assertEquals(false, sdtmProduct1.equals('foo'));
        System.assertEquals(false, sdtmProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = new OASSdtmProduct();
        OASSdtmProduct sdtmProduct3;

        System.assertEquals(false, sdtmProduct1.equals(sdtmProduct3));
        System.assertEquals(false, sdtmProduct2.equals(sdtmProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = new OASSdtmProduct();

        System.assertEquals(sdtmProduct1.hashCode(), sdtmProduct1.hashCode());
        System.assertEquals(sdtmProduct2.hashCode(), sdtmProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmProduct sdtmProduct1 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct2 = OASSdtmProduct.getExample();
        OASSdtmProduct sdtmProduct3 = new OASSdtmProduct();
        OASSdtmProduct sdtmProduct4 = new OASSdtmProduct();

        System.assert(sdtmProduct1.equals(sdtmProduct2));
        System.assert(sdtmProduct3.equals(sdtmProduct4));
        System.assertEquals(sdtmProduct1.hashCode(), sdtmProduct2.hashCode());
        System.assertEquals(sdtmProduct3.hashCode(), sdtmProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmProduct sdtmProduct = new OASSdtmProduct();
        Map<String, String> x-property-mappings = sdtmProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmProduct sdtmProduct = new OASSdtmProduct();
        System.assertEquals(new List<OASSdtmClass>(), sdtmProduct.classes);
        System.assertEquals(new List<OASSdtmDataset>(), sdtmProduct.datasets);
        System.assertEquals(null, sdtmProduct.name);
        System.assertEquals(null, sdtmProduct.label);
        System.assertEquals(null, sdtmProduct.description);
        System.assertEquals(null, sdtmProduct.source);
        System.assertEquals(null, sdtmProduct.effectiveDate);
        System.assertEquals(null, sdtmProduct.registrationStatus);
        System.assertEquals(null, sdtmProduct.version);
        System.assertEquals(null, sdtmProduct.links);
    }
}
