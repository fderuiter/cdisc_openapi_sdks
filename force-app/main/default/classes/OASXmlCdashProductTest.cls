@isTest
private class OASXmlCdashProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = xmlCdashProduct1;
        OASXmlCdashProduct xmlCdashProduct3 = new OASXmlCdashProduct();
        OASXmlCdashProduct xmlCdashProduct4 = xmlCdashProduct3;

        System.assert(xmlCdashProduct1.equals(xmlCdashProduct2));
        System.assert(xmlCdashProduct2.equals(xmlCdashProduct1));
        System.assert(xmlCdashProduct1.equals(xmlCdashProduct1));
        System.assert(xmlCdashProduct3.equals(xmlCdashProduct4));
        System.assert(xmlCdashProduct4.equals(xmlCdashProduct3));
        System.assert(xmlCdashProduct3.equals(xmlCdashProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct3 = new OASXmlCdashProduct();
        OASXmlCdashProduct xmlCdashProduct4 = new OASXmlCdashProduct();

        System.assert(xmlCdashProduct1.equals(xmlCdashProduct2));
        System.assert(xmlCdashProduct2.equals(xmlCdashProduct1));
        System.assert(xmlCdashProduct3.equals(xmlCdashProduct4));
        System.assert(xmlCdashProduct4.equals(xmlCdashProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = new OASXmlCdashProduct();

        System.assertEquals(false, xmlCdashProduct1.equals('foo'));
        System.assertEquals(false, xmlCdashProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = new OASXmlCdashProduct();
        OASXmlCdashProduct xmlCdashProduct3;

        System.assertEquals(false, xmlCdashProduct1.equals(xmlCdashProduct3));
        System.assertEquals(false, xmlCdashProduct2.equals(xmlCdashProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = new OASXmlCdashProduct();

        System.assertEquals(xmlCdashProduct1.hashCode(), xmlCdashProduct1.hashCode());
        System.assertEquals(xmlCdashProduct2.hashCode(), xmlCdashProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashProduct xmlCdashProduct1 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct2 = OASXmlCdashProduct.getExample();
        OASXmlCdashProduct xmlCdashProduct3 = new OASXmlCdashProduct();
        OASXmlCdashProduct xmlCdashProduct4 = new OASXmlCdashProduct();

        System.assert(xmlCdashProduct1.equals(xmlCdashProduct2));
        System.assert(xmlCdashProduct3.equals(xmlCdashProduct4));
        System.assertEquals(xmlCdashProduct1.hashCode(), xmlCdashProduct2.hashCode());
        System.assertEquals(xmlCdashProduct3.hashCode(), xmlCdashProduct4.hashCode());
    }
}
