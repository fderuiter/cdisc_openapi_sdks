@isTest
private class OASXmlSdtmigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = xmlSdtmigProduct1;
        OASXmlSdtmigProduct xmlSdtmigProduct3 = new OASXmlSdtmigProduct();
        OASXmlSdtmigProduct xmlSdtmigProduct4 = xmlSdtmigProduct3;

        System.assert(xmlSdtmigProduct1.equals(xmlSdtmigProduct2));
        System.assert(xmlSdtmigProduct2.equals(xmlSdtmigProduct1));
        System.assert(xmlSdtmigProduct1.equals(xmlSdtmigProduct1));
        System.assert(xmlSdtmigProduct3.equals(xmlSdtmigProduct4));
        System.assert(xmlSdtmigProduct4.equals(xmlSdtmigProduct3));
        System.assert(xmlSdtmigProduct3.equals(xmlSdtmigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct3 = new OASXmlSdtmigProduct();
        OASXmlSdtmigProduct xmlSdtmigProduct4 = new OASXmlSdtmigProduct();

        System.assert(xmlSdtmigProduct1.equals(xmlSdtmigProduct2));
        System.assert(xmlSdtmigProduct2.equals(xmlSdtmigProduct1));
        System.assert(xmlSdtmigProduct3.equals(xmlSdtmigProduct4));
        System.assert(xmlSdtmigProduct4.equals(xmlSdtmigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = new OASXmlSdtmigProduct();

        System.assertEquals(false, xmlSdtmigProduct1.equals('foo'));
        System.assertEquals(false, xmlSdtmigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = new OASXmlSdtmigProduct();
        OASXmlSdtmigProduct xmlSdtmigProduct3;

        System.assertEquals(false, xmlSdtmigProduct1.equals(xmlSdtmigProduct3));
        System.assertEquals(false, xmlSdtmigProduct2.equals(xmlSdtmigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = new OASXmlSdtmigProduct();

        System.assertEquals(xmlSdtmigProduct1.hashCode(), xmlSdtmigProduct1.hashCode());
        System.assertEquals(xmlSdtmigProduct2.hashCode(), xmlSdtmigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigProduct xmlSdtmigProduct1 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct2 = OASXmlSdtmigProduct.getExample();
        OASXmlSdtmigProduct xmlSdtmigProduct3 = new OASXmlSdtmigProduct();
        OASXmlSdtmigProduct xmlSdtmigProduct4 = new OASXmlSdtmigProduct();

        System.assert(xmlSdtmigProduct1.equals(xmlSdtmigProduct2));
        System.assert(xmlSdtmigProduct3.equals(xmlSdtmigProduct4));
        System.assertEquals(xmlSdtmigProduct1.hashCode(), xmlSdtmigProduct2.hashCode());
        System.assertEquals(xmlSdtmigProduct3.hashCode(), xmlSdtmigProduct4.hashCode());
    }
}
