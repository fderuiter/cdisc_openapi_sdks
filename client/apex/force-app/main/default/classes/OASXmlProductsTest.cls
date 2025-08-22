@isTest
private class OASXmlProductsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = xmlProducts1;
        OASXmlProducts xmlProducts3 = new OASXmlProducts();
        OASXmlProducts xmlProducts4 = xmlProducts3;

        System.assert(xmlProducts1.equals(xmlProducts2));
        System.assert(xmlProducts2.equals(xmlProducts1));
        System.assert(xmlProducts1.equals(xmlProducts1));
        System.assert(xmlProducts3.equals(xmlProducts4));
        System.assert(xmlProducts4.equals(xmlProducts3));
        System.assert(xmlProducts3.equals(xmlProducts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts3 = new OASXmlProducts();
        OASXmlProducts xmlProducts4 = new OASXmlProducts();

        System.assert(xmlProducts1.equals(xmlProducts2));
        System.assert(xmlProducts2.equals(xmlProducts1));
        System.assert(xmlProducts3.equals(xmlProducts4));
        System.assert(xmlProducts4.equals(xmlProducts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = new OASXmlProducts();

        System.assertEquals(false, xmlProducts1.equals('foo'));
        System.assertEquals(false, xmlProducts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = new OASXmlProducts();
        OASXmlProducts xmlProducts3;

        System.assertEquals(false, xmlProducts1.equals(xmlProducts3));
        System.assertEquals(false, xmlProducts2.equals(xmlProducts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = new OASXmlProducts();

        System.assertEquals(xmlProducts1.hashCode(), xmlProducts1.hashCode());
        System.assertEquals(xmlProducts2.hashCode(), xmlProducts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlProducts xmlProducts1 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts2 = OASXmlProducts.getExample();
        OASXmlProducts xmlProducts3 = new OASXmlProducts();
        OASXmlProducts xmlProducts4 = new OASXmlProducts();

        System.assert(xmlProducts1.equals(xmlProducts2));
        System.assert(xmlProducts3.equals(xmlProducts4));
        System.assertEquals(xmlProducts1.hashCode(), xmlProducts2.hashCode());
        System.assertEquals(xmlProducts3.hashCode(), xmlProducts4.hashCode());
    }
}
