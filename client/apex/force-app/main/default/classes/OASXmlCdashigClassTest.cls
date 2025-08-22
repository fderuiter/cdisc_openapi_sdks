@isTest
private class OASXmlCdashigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = xmlCdashigClass1;
        OASXmlCdashigClass xmlCdashigClass3 = new OASXmlCdashigClass();
        OASXmlCdashigClass xmlCdashigClass4 = xmlCdashigClass3;

        System.assert(xmlCdashigClass1.equals(xmlCdashigClass2));
        System.assert(xmlCdashigClass2.equals(xmlCdashigClass1));
        System.assert(xmlCdashigClass1.equals(xmlCdashigClass1));
        System.assert(xmlCdashigClass3.equals(xmlCdashigClass4));
        System.assert(xmlCdashigClass4.equals(xmlCdashigClass3));
        System.assert(xmlCdashigClass3.equals(xmlCdashigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass3 = new OASXmlCdashigClass();
        OASXmlCdashigClass xmlCdashigClass4 = new OASXmlCdashigClass();

        System.assert(xmlCdashigClass1.equals(xmlCdashigClass2));
        System.assert(xmlCdashigClass2.equals(xmlCdashigClass1));
        System.assert(xmlCdashigClass3.equals(xmlCdashigClass4));
        System.assert(xmlCdashigClass4.equals(xmlCdashigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = new OASXmlCdashigClass();

        System.assertEquals(false, xmlCdashigClass1.equals('foo'));
        System.assertEquals(false, xmlCdashigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = new OASXmlCdashigClass();
        OASXmlCdashigClass xmlCdashigClass3;

        System.assertEquals(false, xmlCdashigClass1.equals(xmlCdashigClass3));
        System.assertEquals(false, xmlCdashigClass2.equals(xmlCdashigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = new OASXmlCdashigClass();

        System.assertEquals(xmlCdashigClass1.hashCode(), xmlCdashigClass1.hashCode());
        System.assertEquals(xmlCdashigClass2.hashCode(), xmlCdashigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigClass xmlCdashigClass1 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass2 = OASXmlCdashigClass.getExample();
        OASXmlCdashigClass xmlCdashigClass3 = new OASXmlCdashigClass();
        OASXmlCdashigClass xmlCdashigClass4 = new OASXmlCdashigClass();

        System.assert(xmlCdashigClass1.equals(xmlCdashigClass2));
        System.assert(xmlCdashigClass3.equals(xmlCdashigClass4));
        System.assertEquals(xmlCdashigClass1.hashCode(), xmlCdashigClass2.hashCode());
        System.assertEquals(xmlCdashigClass3.hashCode(), xmlCdashigClass4.hashCode());
    }
}
