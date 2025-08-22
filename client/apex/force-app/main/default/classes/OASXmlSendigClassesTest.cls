@isTest
private class OASXmlSendigClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = xmlSendigClasses1;
        OASXmlSendigClasses xmlSendigClasses3 = new OASXmlSendigClasses();
        OASXmlSendigClasses xmlSendigClasses4 = xmlSendigClasses3;

        System.assert(xmlSendigClasses1.equals(xmlSendigClasses2));
        System.assert(xmlSendigClasses2.equals(xmlSendigClasses1));
        System.assert(xmlSendigClasses1.equals(xmlSendigClasses1));
        System.assert(xmlSendigClasses3.equals(xmlSendigClasses4));
        System.assert(xmlSendigClasses4.equals(xmlSendigClasses3));
        System.assert(xmlSendigClasses3.equals(xmlSendigClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses3 = new OASXmlSendigClasses();
        OASXmlSendigClasses xmlSendigClasses4 = new OASXmlSendigClasses();

        System.assert(xmlSendigClasses1.equals(xmlSendigClasses2));
        System.assert(xmlSendigClasses2.equals(xmlSendigClasses1));
        System.assert(xmlSendigClasses3.equals(xmlSendigClasses4));
        System.assert(xmlSendigClasses4.equals(xmlSendigClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = new OASXmlSendigClasses();

        System.assertEquals(false, xmlSendigClasses1.equals('foo'));
        System.assertEquals(false, xmlSendigClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = new OASXmlSendigClasses();
        OASXmlSendigClasses xmlSendigClasses3;

        System.assertEquals(false, xmlSendigClasses1.equals(xmlSendigClasses3));
        System.assertEquals(false, xmlSendigClasses2.equals(xmlSendigClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = new OASXmlSendigClasses();

        System.assertEquals(xmlSendigClasses1.hashCode(), xmlSendigClasses1.hashCode());
        System.assertEquals(xmlSendigClasses2.hashCode(), xmlSendigClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigClasses xmlSendigClasses1 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses2 = OASXmlSendigClasses.getExample();
        OASXmlSendigClasses xmlSendigClasses3 = new OASXmlSendigClasses();
        OASXmlSendigClasses xmlSendigClasses4 = new OASXmlSendigClasses();

        System.assert(xmlSendigClasses1.equals(xmlSendigClasses2));
        System.assert(xmlSendigClasses3.equals(xmlSendigClasses4));
        System.assertEquals(xmlSendigClasses1.hashCode(), xmlSendigClasses2.hashCode());
        System.assertEquals(xmlSendigClasses3.hashCode(), xmlSendigClasses4.hashCode());
    }
}
