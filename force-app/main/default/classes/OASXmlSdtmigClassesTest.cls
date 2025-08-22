@isTest
private class OASXmlSdtmigClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = xmlSdtmigClasses1;
        OASXmlSdtmigClasses xmlSdtmigClasses3 = new OASXmlSdtmigClasses();
        OASXmlSdtmigClasses xmlSdtmigClasses4 = xmlSdtmigClasses3;

        System.assert(xmlSdtmigClasses1.equals(xmlSdtmigClasses2));
        System.assert(xmlSdtmigClasses2.equals(xmlSdtmigClasses1));
        System.assert(xmlSdtmigClasses1.equals(xmlSdtmigClasses1));
        System.assert(xmlSdtmigClasses3.equals(xmlSdtmigClasses4));
        System.assert(xmlSdtmigClasses4.equals(xmlSdtmigClasses3));
        System.assert(xmlSdtmigClasses3.equals(xmlSdtmigClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses3 = new OASXmlSdtmigClasses();
        OASXmlSdtmigClasses xmlSdtmigClasses4 = new OASXmlSdtmigClasses();

        System.assert(xmlSdtmigClasses1.equals(xmlSdtmigClasses2));
        System.assert(xmlSdtmigClasses2.equals(xmlSdtmigClasses1));
        System.assert(xmlSdtmigClasses3.equals(xmlSdtmigClasses4));
        System.assert(xmlSdtmigClasses4.equals(xmlSdtmigClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = new OASXmlSdtmigClasses();

        System.assertEquals(false, xmlSdtmigClasses1.equals('foo'));
        System.assertEquals(false, xmlSdtmigClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = new OASXmlSdtmigClasses();
        OASXmlSdtmigClasses xmlSdtmigClasses3;

        System.assertEquals(false, xmlSdtmigClasses1.equals(xmlSdtmigClasses3));
        System.assertEquals(false, xmlSdtmigClasses2.equals(xmlSdtmigClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = new OASXmlSdtmigClasses();

        System.assertEquals(xmlSdtmigClasses1.hashCode(), xmlSdtmigClasses1.hashCode());
        System.assertEquals(xmlSdtmigClasses2.hashCode(), xmlSdtmigClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigClasses xmlSdtmigClasses1 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses2 = OASXmlSdtmigClasses.getExample();
        OASXmlSdtmigClasses xmlSdtmigClasses3 = new OASXmlSdtmigClasses();
        OASXmlSdtmigClasses xmlSdtmigClasses4 = new OASXmlSdtmigClasses();

        System.assert(xmlSdtmigClasses1.equals(xmlSdtmigClasses2));
        System.assert(xmlSdtmigClasses3.equals(xmlSdtmigClasses4));
        System.assertEquals(xmlSdtmigClasses1.hashCode(), xmlSdtmigClasses2.hashCode());
        System.assertEquals(xmlSdtmigClasses3.hashCode(), xmlSdtmigClasses4.hashCode());
    }
}
