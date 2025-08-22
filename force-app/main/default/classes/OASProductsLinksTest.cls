@isTest
private class OASProductsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = productsLinks1;
        OASProductsLinks productsLinks3 = new OASProductsLinks();
        OASProductsLinks productsLinks4 = productsLinks3;

        System.assert(productsLinks1.equals(productsLinks2));
        System.assert(productsLinks2.equals(productsLinks1));
        System.assert(productsLinks1.equals(productsLinks1));
        System.assert(productsLinks3.equals(productsLinks4));
        System.assert(productsLinks4.equals(productsLinks3));
        System.assert(productsLinks3.equals(productsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks3 = new OASProductsLinks();
        OASProductsLinks productsLinks4 = new OASProductsLinks();

        System.assert(productsLinks1.equals(productsLinks2));
        System.assert(productsLinks2.equals(productsLinks1));
        System.assert(productsLinks3.equals(productsLinks4));
        System.assert(productsLinks4.equals(productsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = new OASProductsLinks();

        System.assertEquals(false, productsLinks1.equals('foo'));
        System.assertEquals(false, productsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = new OASProductsLinks();
        OASProductsLinks productsLinks3;

        System.assertEquals(false, productsLinks1.equals(productsLinks3));
        System.assertEquals(false, productsLinks2.equals(productsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = new OASProductsLinks();

        System.assertEquals(productsLinks1.hashCode(), productsLinks1.hashCode());
        System.assertEquals(productsLinks2.hashCode(), productsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductsLinks productsLinks1 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks2 = OASProductsLinks.getExample();
        OASProductsLinks productsLinks3 = new OASProductsLinks();
        OASProductsLinks productsLinks4 = new OASProductsLinks();

        System.assert(productsLinks1.equals(productsLinks2));
        System.assert(productsLinks3.equals(productsLinks4));
        System.assertEquals(productsLinks1.hashCode(), productsLinks2.hashCode());
        System.assertEquals(productsLinks3.hashCode(), productsLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductsLinks productsLinks = new OASProductsLinks();
        Map<String, String> x-property-mappings = productsLinks.getx-property-mappings();
        System.assertEquals('dataCollection', x-property-mappings.get('data-collection'));
        System.assertEquals('dataTabulation', x-property-mappings.get('data-tabulation'));
        System.assertEquals('dataAnalysis', x-property-mappings.get('data-analysis'));
    }
}
