@isTest
private class OASXmlSdtmClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = xmlSdtmClass1;
        OASXmlSdtmClass xmlSdtmClass3 = new OASXmlSdtmClass();
        OASXmlSdtmClass xmlSdtmClass4 = xmlSdtmClass3;

        System.assert(xmlSdtmClass1.equals(xmlSdtmClass2));
        System.assert(xmlSdtmClass2.equals(xmlSdtmClass1));
        System.assert(xmlSdtmClass1.equals(xmlSdtmClass1));
        System.assert(xmlSdtmClass3.equals(xmlSdtmClass4));
        System.assert(xmlSdtmClass4.equals(xmlSdtmClass3));
        System.assert(xmlSdtmClass3.equals(xmlSdtmClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass3 = new OASXmlSdtmClass();
        OASXmlSdtmClass xmlSdtmClass4 = new OASXmlSdtmClass();

        System.assert(xmlSdtmClass1.equals(xmlSdtmClass2));
        System.assert(xmlSdtmClass2.equals(xmlSdtmClass1));
        System.assert(xmlSdtmClass3.equals(xmlSdtmClass4));
        System.assert(xmlSdtmClass4.equals(xmlSdtmClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = new OASXmlSdtmClass();

        System.assertEquals(false, xmlSdtmClass1.equals('foo'));
        System.assertEquals(false, xmlSdtmClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = new OASXmlSdtmClass();
        OASXmlSdtmClass xmlSdtmClass3;

        System.assertEquals(false, xmlSdtmClass1.equals(xmlSdtmClass3));
        System.assertEquals(false, xmlSdtmClass2.equals(xmlSdtmClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = new OASXmlSdtmClass();

        System.assertEquals(xmlSdtmClass1.hashCode(), xmlSdtmClass1.hashCode());
        System.assertEquals(xmlSdtmClass2.hashCode(), xmlSdtmClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmClass xmlSdtmClass1 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass2 = OASXmlSdtmClass.getExample();
        OASXmlSdtmClass xmlSdtmClass3 = new OASXmlSdtmClass();
        OASXmlSdtmClass xmlSdtmClass4 = new OASXmlSdtmClass();

        System.assert(xmlSdtmClass1.equals(xmlSdtmClass2));
        System.assert(xmlSdtmClass3.equals(xmlSdtmClass4));
        System.assertEquals(xmlSdtmClass1.hashCode(), xmlSdtmClass2.hashCode());
        System.assertEquals(xmlSdtmClass3.hashCode(), xmlSdtmClass4.hashCode());
    }
}
