@isTest
private class OASXmlQrsProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = xmlQrsProduct1;
        OASXmlQrsProduct xmlQrsProduct3 = new OASXmlQrsProduct();
        OASXmlQrsProduct xmlQrsProduct4 = xmlQrsProduct3;

        System.assert(xmlQrsProduct1.equals(xmlQrsProduct2));
        System.assert(xmlQrsProduct2.equals(xmlQrsProduct1));
        System.assert(xmlQrsProduct1.equals(xmlQrsProduct1));
        System.assert(xmlQrsProduct3.equals(xmlQrsProduct4));
        System.assert(xmlQrsProduct4.equals(xmlQrsProduct3));
        System.assert(xmlQrsProduct3.equals(xmlQrsProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct3 = new OASXmlQrsProduct();
        OASXmlQrsProduct xmlQrsProduct4 = new OASXmlQrsProduct();

        System.assert(xmlQrsProduct1.equals(xmlQrsProduct2));
        System.assert(xmlQrsProduct2.equals(xmlQrsProduct1));
        System.assert(xmlQrsProduct3.equals(xmlQrsProduct4));
        System.assert(xmlQrsProduct4.equals(xmlQrsProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = new OASXmlQrsProduct();

        System.assertEquals(false, xmlQrsProduct1.equals('foo'));
        System.assertEquals(false, xmlQrsProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = new OASXmlQrsProduct();
        OASXmlQrsProduct xmlQrsProduct3;

        System.assertEquals(false, xmlQrsProduct1.equals(xmlQrsProduct3));
        System.assertEquals(false, xmlQrsProduct2.equals(xmlQrsProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = new OASXmlQrsProduct();

        System.assertEquals(xmlQrsProduct1.hashCode(), xmlQrsProduct1.hashCode());
        System.assertEquals(xmlQrsProduct2.hashCode(), xmlQrsProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlQrsProduct xmlQrsProduct1 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct2 = OASXmlQrsProduct.getExample();
        OASXmlQrsProduct xmlQrsProduct3 = new OASXmlQrsProduct();
        OASXmlQrsProduct xmlQrsProduct4 = new OASXmlQrsProduct();

        System.assert(xmlQrsProduct1.equals(xmlQrsProduct2));
        System.assert(xmlQrsProduct3.equals(xmlQrsProduct4));
        System.assertEquals(xmlQrsProduct1.hashCode(), xmlQrsProduct2.hashCode());
        System.assertEquals(xmlQrsProduct3.hashCode(), xmlQrsProduct4.hashCode());
    }
}
