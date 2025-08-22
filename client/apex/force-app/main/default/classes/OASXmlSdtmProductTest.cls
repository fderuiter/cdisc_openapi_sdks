@isTest
private class OASXmlSdtmProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = xmlSdtmProduct1;
        OASXmlSdtmProduct xmlSdtmProduct3 = new OASXmlSdtmProduct();
        OASXmlSdtmProduct xmlSdtmProduct4 = xmlSdtmProduct3;

        System.assert(xmlSdtmProduct1.equals(xmlSdtmProduct2));
        System.assert(xmlSdtmProduct2.equals(xmlSdtmProduct1));
        System.assert(xmlSdtmProduct1.equals(xmlSdtmProduct1));
        System.assert(xmlSdtmProduct3.equals(xmlSdtmProduct4));
        System.assert(xmlSdtmProduct4.equals(xmlSdtmProduct3));
        System.assert(xmlSdtmProduct3.equals(xmlSdtmProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct3 = new OASXmlSdtmProduct();
        OASXmlSdtmProduct xmlSdtmProduct4 = new OASXmlSdtmProduct();

        System.assert(xmlSdtmProduct1.equals(xmlSdtmProduct2));
        System.assert(xmlSdtmProduct2.equals(xmlSdtmProduct1));
        System.assert(xmlSdtmProduct3.equals(xmlSdtmProduct4));
        System.assert(xmlSdtmProduct4.equals(xmlSdtmProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = new OASXmlSdtmProduct();

        System.assertEquals(false, xmlSdtmProduct1.equals('foo'));
        System.assertEquals(false, xmlSdtmProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = new OASXmlSdtmProduct();
        OASXmlSdtmProduct xmlSdtmProduct3;

        System.assertEquals(false, xmlSdtmProduct1.equals(xmlSdtmProduct3));
        System.assertEquals(false, xmlSdtmProduct2.equals(xmlSdtmProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = new OASXmlSdtmProduct();

        System.assertEquals(xmlSdtmProduct1.hashCode(), xmlSdtmProduct1.hashCode());
        System.assertEquals(xmlSdtmProduct2.hashCode(), xmlSdtmProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmProduct xmlSdtmProduct1 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct2 = OASXmlSdtmProduct.getExample();
        OASXmlSdtmProduct xmlSdtmProduct3 = new OASXmlSdtmProduct();
        OASXmlSdtmProduct xmlSdtmProduct4 = new OASXmlSdtmProduct();

        System.assert(xmlSdtmProduct1.equals(xmlSdtmProduct2));
        System.assert(xmlSdtmProduct3.equals(xmlSdtmProduct4));
        System.assertEquals(xmlSdtmProduct1.hashCode(), xmlSdtmProduct2.hashCode());
        System.assertEquals(xmlSdtmProduct3.hashCode(), xmlSdtmProduct4.hashCode());
    }
}
