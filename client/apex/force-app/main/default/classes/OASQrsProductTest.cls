@isTest
private class OASQrsProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = qrsProduct1;
        OASQrsProduct qrsProduct3 = new OASQrsProduct();
        OASQrsProduct qrsProduct4 = qrsProduct3;

        System.assert(qrsProduct1.equals(qrsProduct2));
        System.assert(qrsProduct2.equals(qrsProduct1));
        System.assert(qrsProduct1.equals(qrsProduct1));
        System.assert(qrsProduct3.equals(qrsProduct4));
        System.assert(qrsProduct4.equals(qrsProduct3));
        System.assert(qrsProduct3.equals(qrsProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct3 = new OASQrsProduct();
        OASQrsProduct qrsProduct4 = new OASQrsProduct();

        System.assert(qrsProduct1.equals(qrsProduct2));
        System.assert(qrsProduct2.equals(qrsProduct1));
        System.assert(qrsProduct3.equals(qrsProduct4));
        System.assert(qrsProduct4.equals(qrsProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = new OASQrsProduct();

        System.assertEquals(false, qrsProduct1.equals('foo'));
        System.assertEquals(false, qrsProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = new OASQrsProduct();
        OASQrsProduct qrsProduct3;

        System.assertEquals(false, qrsProduct1.equals(qrsProduct3));
        System.assertEquals(false, qrsProduct2.equals(qrsProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = new OASQrsProduct();

        System.assertEquals(qrsProduct1.hashCode(), qrsProduct1.hashCode());
        System.assertEquals(qrsProduct2.hashCode(), qrsProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsProduct qrsProduct1 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct2 = OASQrsProduct.getExample();
        OASQrsProduct qrsProduct3 = new OASQrsProduct();
        OASQrsProduct qrsProduct4 = new OASQrsProduct();

        System.assert(qrsProduct1.equals(qrsProduct2));
        System.assert(qrsProduct3.equals(qrsProduct4));
        System.assertEquals(qrsProduct1.hashCode(), qrsProduct2.hashCode());
        System.assertEquals(qrsProduct3.hashCode(), qrsProduct4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsProduct qrsProduct = new OASQrsProduct();
        Map<String, String> x-property-mappings = qrsProduct.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQrsProduct qrsProduct = new OASQrsProduct();
        System.assertEquals(new List<OASQrsItem>(), qrsProduct.items);
        System.assertEquals(null, qrsProduct.name);
        System.assertEquals(null, qrsProduct.label);
        System.assertEquals(null, qrsProduct.description);
        System.assertEquals(null, qrsProduct.effectiveDate);
        System.assertEquals(null, qrsProduct.untilDate);
        System.assertEquals(null, qrsProduct.registrationStatus);
        System.assertEquals(null, qrsProduct.version);
        System.assertEquals(null, qrsProduct.qrsType);
        System.assertEquals(null, qrsProduct.links);
    }
}
