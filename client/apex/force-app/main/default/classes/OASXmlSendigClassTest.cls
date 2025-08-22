@isTest
private class OASXmlSendigClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = xmlSendigClass1;
        OASXmlSendigClass xmlSendigClass3 = new OASXmlSendigClass();
        OASXmlSendigClass xmlSendigClass4 = xmlSendigClass3;

        System.assert(xmlSendigClass1.equals(xmlSendigClass2));
        System.assert(xmlSendigClass2.equals(xmlSendigClass1));
        System.assert(xmlSendigClass1.equals(xmlSendigClass1));
        System.assert(xmlSendigClass3.equals(xmlSendigClass4));
        System.assert(xmlSendigClass4.equals(xmlSendigClass3));
        System.assert(xmlSendigClass3.equals(xmlSendigClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass3 = new OASXmlSendigClass();
        OASXmlSendigClass xmlSendigClass4 = new OASXmlSendigClass();

        System.assert(xmlSendigClass1.equals(xmlSendigClass2));
        System.assert(xmlSendigClass2.equals(xmlSendigClass1));
        System.assert(xmlSendigClass3.equals(xmlSendigClass4));
        System.assert(xmlSendigClass4.equals(xmlSendigClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = new OASXmlSendigClass();

        System.assertEquals(false, xmlSendigClass1.equals('foo'));
        System.assertEquals(false, xmlSendigClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = new OASXmlSendigClass();
        OASXmlSendigClass xmlSendigClass3;

        System.assertEquals(false, xmlSendigClass1.equals(xmlSendigClass3));
        System.assertEquals(false, xmlSendigClass2.equals(xmlSendigClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = new OASXmlSendigClass();

        System.assertEquals(xmlSendigClass1.hashCode(), xmlSendigClass1.hashCode());
        System.assertEquals(xmlSendigClass2.hashCode(), xmlSendigClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigClass xmlSendigClass1 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass2 = OASXmlSendigClass.getExample();
        OASXmlSendigClass xmlSendigClass3 = new OASXmlSendigClass();
        OASXmlSendigClass xmlSendigClass4 = new OASXmlSendigClass();

        System.assert(xmlSendigClass1.equals(xmlSendigClass2));
        System.assert(xmlSendigClass3.equals(xmlSendigClass4));
        System.assertEquals(xmlSendigClass1.hashCode(), xmlSendigClass2.hashCode());
        System.assertEquals(xmlSendigClass3.hashCode(), xmlSendigClass4.hashCode());
    }
}
