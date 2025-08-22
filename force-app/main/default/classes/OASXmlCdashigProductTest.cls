@isTest
private class OASXmlCdashigProductTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = xmlCdashigProduct1;
        OASXmlCdashigProduct xmlCdashigProduct3 = new OASXmlCdashigProduct();
        OASXmlCdashigProduct xmlCdashigProduct4 = xmlCdashigProduct3;

        System.assert(xmlCdashigProduct1.equals(xmlCdashigProduct2));
        System.assert(xmlCdashigProduct2.equals(xmlCdashigProduct1));
        System.assert(xmlCdashigProduct1.equals(xmlCdashigProduct1));
        System.assert(xmlCdashigProduct3.equals(xmlCdashigProduct4));
        System.assert(xmlCdashigProduct4.equals(xmlCdashigProduct3));
        System.assert(xmlCdashigProduct3.equals(xmlCdashigProduct3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct3 = new OASXmlCdashigProduct();
        OASXmlCdashigProduct xmlCdashigProduct4 = new OASXmlCdashigProduct();

        System.assert(xmlCdashigProduct1.equals(xmlCdashigProduct2));
        System.assert(xmlCdashigProduct2.equals(xmlCdashigProduct1));
        System.assert(xmlCdashigProduct3.equals(xmlCdashigProduct4));
        System.assert(xmlCdashigProduct4.equals(xmlCdashigProduct3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = new OASXmlCdashigProduct();

        System.assertEquals(false, xmlCdashigProduct1.equals('foo'));
        System.assertEquals(false, xmlCdashigProduct2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = new OASXmlCdashigProduct();
        OASXmlCdashigProduct xmlCdashigProduct3;

        System.assertEquals(false, xmlCdashigProduct1.equals(xmlCdashigProduct3));
        System.assertEquals(false, xmlCdashigProduct2.equals(xmlCdashigProduct3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = new OASXmlCdashigProduct();

        System.assertEquals(xmlCdashigProduct1.hashCode(), xmlCdashigProduct1.hashCode());
        System.assertEquals(xmlCdashigProduct2.hashCode(), xmlCdashigProduct2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigProduct xmlCdashigProduct1 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct2 = OASXmlCdashigProduct.getExample();
        OASXmlCdashigProduct xmlCdashigProduct3 = new OASXmlCdashigProduct();
        OASXmlCdashigProduct xmlCdashigProduct4 = new OASXmlCdashigProduct();

        System.assert(xmlCdashigProduct1.equals(xmlCdashigProduct2));
        System.assert(xmlCdashigProduct3.equals(xmlCdashigProduct4));
        System.assertEquals(xmlCdashigProduct1.hashCode(), xmlCdashigProduct2.hashCode());
        System.assertEquals(xmlCdashigProduct3.hashCode(), xmlCdashigProduct4.hashCode());
    }
}
