@isTest
private class OASXmlSendigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = xmlSendigProduct1;
        OASXmlSendigProduct xmlSendigProduct3 = new OASXmlSendigProduct();
        OASXmlSendigProduct xmlSendigProduct4 = xmlSendigProduct3;

        System.assert(xmlSendigProduct1.equals(xmlSendigProduct2));
        System.assert(xmlSendigProduct2.equals(xmlSendigProduct1));
        System.assert(xmlSendigProduct1.equals(xmlSendigProduct1));
        System.assert(xmlSendigProduct3.equals(xmlSendigProduct4));
        System.assert(xmlSendigProduct4.equals(xmlSendigProduct3));
        System.assert(xmlSendigProduct3.equals(xmlSendigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct3 = new OASXmlSendigProduct();
        OASXmlSendigProduct xmlSendigProduct4 = new OASXmlSendigProduct();

        System.assert(xmlSendigProduct1.equals(xmlSendigProduct2));
        System.assert(xmlSendigProduct2.equals(xmlSendigProduct1));
        System.assert(xmlSendigProduct3.equals(xmlSendigProduct4));
        System.assert(xmlSendigProduct4.equals(xmlSendigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = new OASXmlSendigProduct();

        System.assertEquals(false, xmlSendigProduct1.equals('foo'));
        System.assertEquals(false, xmlSendigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = new OASXmlSendigProduct();
        OASXmlSendigProduct xmlSendigProduct3;

        System.assertEquals(false, xmlSendigProduct1.equals(xmlSendigProduct3));
        System.assertEquals(false, xmlSendigProduct2.equals(xmlSendigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = new OASXmlSendigProduct();

        System.assertEquals(xmlSendigProduct1.hashCode(), xmlSendigProduct1.hashCode());
        System.assertEquals(xmlSendigProduct2.hashCode(), xmlSendigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigProduct xmlSendigProduct1 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct2 = OASXmlSendigProduct.getExample();
        OASXmlSendigProduct xmlSendigProduct3 = new OASXmlSendigProduct();
        OASXmlSendigProduct xmlSendigProduct4 = new OASXmlSendigProduct();

        System.assert(xmlSendigProduct1.equals(xmlSendigProduct2));
        System.assert(xmlSendigProduct3.equals(xmlSendigProduct4));
        System.assertEquals(xmlSendigProduct1.hashCode(), xmlSendigProduct2.hashCode());
        System.assertEquals(xmlSendigProduct3.hashCode(), xmlSendigProduct4.hashCode());
    }
}
