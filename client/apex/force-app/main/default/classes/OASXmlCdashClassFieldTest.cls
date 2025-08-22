@isTest
private class OASXmlCdashClassFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = xmlCdashClassField1;
        OASXmlCdashClassField xmlCdashClassField3 = new OASXmlCdashClassField();
        OASXmlCdashClassField xmlCdashClassField4 = xmlCdashClassField3;

        System.assert(xmlCdashClassField1.equals(xmlCdashClassField2));
        System.assert(xmlCdashClassField2.equals(xmlCdashClassField1));
        System.assert(xmlCdashClassField1.equals(xmlCdashClassField1));
        System.assert(xmlCdashClassField3.equals(xmlCdashClassField4));
        System.assert(xmlCdashClassField4.equals(xmlCdashClassField3));
        System.assert(xmlCdashClassField3.equals(xmlCdashClassField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField3 = new OASXmlCdashClassField();
        OASXmlCdashClassField xmlCdashClassField4 = new OASXmlCdashClassField();

        System.assert(xmlCdashClassField1.equals(xmlCdashClassField2));
        System.assert(xmlCdashClassField2.equals(xmlCdashClassField1));
        System.assert(xmlCdashClassField3.equals(xmlCdashClassField4));
        System.assert(xmlCdashClassField4.equals(xmlCdashClassField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = new OASXmlCdashClassField();

        System.assertEquals(false, xmlCdashClassField1.equals('foo'));
        System.assertEquals(false, xmlCdashClassField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = new OASXmlCdashClassField();
        OASXmlCdashClassField xmlCdashClassField3;

        System.assertEquals(false, xmlCdashClassField1.equals(xmlCdashClassField3));
        System.assertEquals(false, xmlCdashClassField2.equals(xmlCdashClassField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = new OASXmlCdashClassField();

        System.assertEquals(xmlCdashClassField1.hashCode(), xmlCdashClassField1.hashCode());
        System.assertEquals(xmlCdashClassField2.hashCode(), xmlCdashClassField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashClassField xmlCdashClassField1 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField2 = OASXmlCdashClassField.getExample();
        OASXmlCdashClassField xmlCdashClassField3 = new OASXmlCdashClassField();
        OASXmlCdashClassField xmlCdashClassField4 = new OASXmlCdashClassField();

        System.assert(xmlCdashClassField1.equals(xmlCdashClassField2));
        System.assert(xmlCdashClassField3.equals(xmlCdashClassField4));
        System.assertEquals(xmlCdashClassField1.hashCode(), xmlCdashClassField2.hashCode());
        System.assertEquals(xmlCdashClassField3.hashCode(), xmlCdashClassField4.hashCode());
    }
}
