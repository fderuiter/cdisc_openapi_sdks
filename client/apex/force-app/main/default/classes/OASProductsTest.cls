@isTest
private class OASProductsTest {
    @isTest
    private static void equalsSameInstance() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = products1;
        OASProducts products3 = new OASProducts();
        OASProducts products4 = products3;

        System.assert(products1.equals(products2));
        System.assert(products2.equals(products1));
        System.assert(products1.equals(products1));
        System.assert(products3.equals(products4));
        System.assert(products4.equals(products3));
        System.assert(products3.equals(products3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = OASProducts.getExample();
        OASProducts products3 = new OASProducts();
        OASProducts products4 = new OASProducts();

        System.assert(products1.equals(products2));
        System.assert(products2.equals(products1));
        System.assert(products3.equals(products4));
        System.assert(products4.equals(products3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = new OASProducts();

        System.assertEquals(false, products1.equals('foo'));
        System.assertEquals(false, products2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = new OASProducts();
        OASProducts products3;

        System.assertEquals(false, products1.equals(products3));
        System.assertEquals(false, products2.equals(products3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = new OASProducts();

        System.assertEquals(products1.hashCode(), products1.hashCode());
        System.assertEquals(products2.hashCode(), products2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProducts products1 = OASProducts.getExample();
        OASProducts products2 = OASProducts.getExample();
        OASProducts products3 = new OASProducts();
        OASProducts products4 = new OASProducts();

        System.assert(products1.equals(products2));
        System.assert(products3.equals(products4));
        System.assertEquals(products1.hashCode(), products2.hashCode());
        System.assertEquals(products3.hashCode(), products4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProducts products = new OASProducts();
        Map<String, String> x-property-mappings = products.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
