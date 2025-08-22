@isTest
private class OASXmlCdashClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = xmlCdashClass1;
        OASXmlCdashClass xmlCdashClass3 = new OASXmlCdashClass();
        OASXmlCdashClass xmlCdashClass4 = xmlCdashClass3;

        System.assert(xmlCdashClass1.equals(xmlCdashClass2));
        System.assert(xmlCdashClass2.equals(xmlCdashClass1));
        System.assert(xmlCdashClass1.equals(xmlCdashClass1));
        System.assert(xmlCdashClass3.equals(xmlCdashClass4));
        System.assert(xmlCdashClass4.equals(xmlCdashClass3));
        System.assert(xmlCdashClass3.equals(xmlCdashClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass3 = new OASXmlCdashClass();
        OASXmlCdashClass xmlCdashClass4 = new OASXmlCdashClass();

        System.assert(xmlCdashClass1.equals(xmlCdashClass2));
        System.assert(xmlCdashClass2.equals(xmlCdashClass1));
        System.assert(xmlCdashClass3.equals(xmlCdashClass4));
        System.assert(xmlCdashClass4.equals(xmlCdashClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = new OASXmlCdashClass();

        System.assertEquals(false, xmlCdashClass1.equals('foo'));
        System.assertEquals(false, xmlCdashClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = new OASXmlCdashClass();
        OASXmlCdashClass xmlCdashClass3;

        System.assertEquals(false, xmlCdashClass1.equals(xmlCdashClass3));
        System.assertEquals(false, xmlCdashClass2.equals(xmlCdashClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = new OASXmlCdashClass();

        System.assertEquals(xmlCdashClass1.hashCode(), xmlCdashClass1.hashCode());
        System.assertEquals(xmlCdashClass2.hashCode(), xmlCdashClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashClass xmlCdashClass1 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass2 = OASXmlCdashClass.getExample();
        OASXmlCdashClass xmlCdashClass3 = new OASXmlCdashClass();
        OASXmlCdashClass xmlCdashClass4 = new OASXmlCdashClass();

        System.assert(xmlCdashClass1.equals(xmlCdashClass2));
        System.assert(xmlCdashClass3.equals(xmlCdashClass4));
        System.assertEquals(xmlCdashClass1.hashCode(), xmlCdashClass2.hashCode());
        System.assertEquals(xmlCdashClass3.hashCode(), xmlCdashClass4.hashCode());
    }
}
