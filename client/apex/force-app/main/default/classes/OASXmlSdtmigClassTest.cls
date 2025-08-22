@isTest
private class OASXmlSdtmigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = xmlSdtmigClass1;
        OASXmlSdtmigClass xmlSdtmigClass3 = new OASXmlSdtmigClass();
        OASXmlSdtmigClass xmlSdtmigClass4 = xmlSdtmigClass3;

        System.assert(xmlSdtmigClass1.equals(xmlSdtmigClass2));
        System.assert(xmlSdtmigClass2.equals(xmlSdtmigClass1));
        System.assert(xmlSdtmigClass1.equals(xmlSdtmigClass1));
        System.assert(xmlSdtmigClass3.equals(xmlSdtmigClass4));
        System.assert(xmlSdtmigClass4.equals(xmlSdtmigClass3));
        System.assert(xmlSdtmigClass3.equals(xmlSdtmigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass3 = new OASXmlSdtmigClass();
        OASXmlSdtmigClass xmlSdtmigClass4 = new OASXmlSdtmigClass();

        System.assert(xmlSdtmigClass1.equals(xmlSdtmigClass2));
        System.assert(xmlSdtmigClass2.equals(xmlSdtmigClass1));
        System.assert(xmlSdtmigClass3.equals(xmlSdtmigClass4));
        System.assert(xmlSdtmigClass4.equals(xmlSdtmigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = new OASXmlSdtmigClass();

        System.assertEquals(false, xmlSdtmigClass1.equals('foo'));
        System.assertEquals(false, xmlSdtmigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = new OASXmlSdtmigClass();
        OASXmlSdtmigClass xmlSdtmigClass3;

        System.assertEquals(false, xmlSdtmigClass1.equals(xmlSdtmigClass3));
        System.assertEquals(false, xmlSdtmigClass2.equals(xmlSdtmigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = new OASXmlSdtmigClass();

        System.assertEquals(xmlSdtmigClass1.hashCode(), xmlSdtmigClass1.hashCode());
        System.assertEquals(xmlSdtmigClass2.hashCode(), xmlSdtmigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigClass xmlSdtmigClass1 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass2 = OASXmlSdtmigClass.getExample();
        OASXmlSdtmigClass xmlSdtmigClass3 = new OASXmlSdtmigClass();
        OASXmlSdtmigClass xmlSdtmigClass4 = new OASXmlSdtmigClass();

        System.assert(xmlSdtmigClass1.equals(xmlSdtmigClass2));
        System.assert(xmlSdtmigClass3.equals(xmlSdtmigClass4));
        System.assertEquals(xmlSdtmigClass1.hashCode(), xmlSdtmigClass2.hashCode());
        System.assertEquals(xmlSdtmigClass3.hashCode(), xmlSdtmigClass4.hashCode());
    }
}
