@isTest
private class OASXmlSdtmClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = xmlSdtmClasses1;
        OASXmlSdtmClasses xmlSdtmClasses3 = new OASXmlSdtmClasses();
        OASXmlSdtmClasses xmlSdtmClasses4 = xmlSdtmClasses3;

        System.assert(xmlSdtmClasses1.equals(xmlSdtmClasses2));
        System.assert(xmlSdtmClasses2.equals(xmlSdtmClasses1));
        System.assert(xmlSdtmClasses1.equals(xmlSdtmClasses1));
        System.assert(xmlSdtmClasses3.equals(xmlSdtmClasses4));
        System.assert(xmlSdtmClasses4.equals(xmlSdtmClasses3));
        System.assert(xmlSdtmClasses3.equals(xmlSdtmClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses3 = new OASXmlSdtmClasses();
        OASXmlSdtmClasses xmlSdtmClasses4 = new OASXmlSdtmClasses();

        System.assert(xmlSdtmClasses1.equals(xmlSdtmClasses2));
        System.assert(xmlSdtmClasses2.equals(xmlSdtmClasses1));
        System.assert(xmlSdtmClasses3.equals(xmlSdtmClasses4));
        System.assert(xmlSdtmClasses4.equals(xmlSdtmClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = new OASXmlSdtmClasses();

        System.assertEquals(false, xmlSdtmClasses1.equals('foo'));
        System.assertEquals(false, xmlSdtmClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = new OASXmlSdtmClasses();
        OASXmlSdtmClasses xmlSdtmClasses3;

        System.assertEquals(false, xmlSdtmClasses1.equals(xmlSdtmClasses3));
        System.assertEquals(false, xmlSdtmClasses2.equals(xmlSdtmClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = new OASXmlSdtmClasses();

        System.assertEquals(xmlSdtmClasses1.hashCode(), xmlSdtmClasses1.hashCode());
        System.assertEquals(xmlSdtmClasses2.hashCode(), xmlSdtmClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmClasses xmlSdtmClasses1 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses2 = OASXmlSdtmClasses.getExample();
        OASXmlSdtmClasses xmlSdtmClasses3 = new OASXmlSdtmClasses();
        OASXmlSdtmClasses xmlSdtmClasses4 = new OASXmlSdtmClasses();

        System.assert(xmlSdtmClasses1.equals(xmlSdtmClasses2));
        System.assert(xmlSdtmClasses3.equals(xmlSdtmClasses4));
        System.assertEquals(xmlSdtmClasses1.hashCode(), xmlSdtmClasses2.hashCode());
        System.assertEquals(xmlSdtmClasses3.hashCode(), xmlSdtmClasses4.hashCode());
    }
}
