@isTest
private class OASXmlAdamProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = xmlAdamProduct1;
        OASXmlAdamProduct xmlAdamProduct3 = new OASXmlAdamProduct();
        OASXmlAdamProduct xmlAdamProduct4 = xmlAdamProduct3;

        System.assert(xmlAdamProduct1.equals(xmlAdamProduct2));
        System.assert(xmlAdamProduct2.equals(xmlAdamProduct1));
        System.assert(xmlAdamProduct1.equals(xmlAdamProduct1));
        System.assert(xmlAdamProduct3.equals(xmlAdamProduct4));
        System.assert(xmlAdamProduct4.equals(xmlAdamProduct3));
        System.assert(xmlAdamProduct3.equals(xmlAdamProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct3 = new OASXmlAdamProduct();
        OASXmlAdamProduct xmlAdamProduct4 = new OASXmlAdamProduct();

        System.assert(xmlAdamProduct1.equals(xmlAdamProduct2));
        System.assert(xmlAdamProduct2.equals(xmlAdamProduct1));
        System.assert(xmlAdamProduct3.equals(xmlAdamProduct4));
        System.assert(xmlAdamProduct4.equals(xmlAdamProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = new OASXmlAdamProduct();

        System.assertEquals(false, xmlAdamProduct1.equals('foo'));
        System.assertEquals(false, xmlAdamProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = new OASXmlAdamProduct();
        OASXmlAdamProduct xmlAdamProduct3;

        System.assertEquals(false, xmlAdamProduct1.equals(xmlAdamProduct3));
        System.assertEquals(false, xmlAdamProduct2.equals(xmlAdamProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = new OASXmlAdamProduct();

        System.assertEquals(xmlAdamProduct1.hashCode(), xmlAdamProduct1.hashCode());
        System.assertEquals(xmlAdamProduct2.hashCode(), xmlAdamProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamProduct xmlAdamProduct1 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct2 = OASXmlAdamProduct.getExample();
        OASXmlAdamProduct xmlAdamProduct3 = new OASXmlAdamProduct();
        OASXmlAdamProduct xmlAdamProduct4 = new OASXmlAdamProduct();

        System.assert(xmlAdamProduct1.equals(xmlAdamProduct2));
        System.assert(xmlAdamProduct3.equals(xmlAdamProduct4));
        System.assertEquals(xmlAdamProduct1.hashCode(), xmlAdamProduct2.hashCode());
        System.assertEquals(xmlAdamProduct3.hashCode(), xmlAdamProduct4.hashCode());
    }
}
