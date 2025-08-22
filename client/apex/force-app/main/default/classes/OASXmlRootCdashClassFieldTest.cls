@isTest
private class OASXmlRootCdashClassFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = xmlRootCdashClassField1;
        OASXmlRootCdashClassField xmlRootCdashClassField3 = new OASXmlRootCdashClassField();
        OASXmlRootCdashClassField xmlRootCdashClassField4 = xmlRootCdashClassField3;

        System.assert(xmlRootCdashClassField1.equals(xmlRootCdashClassField2));
        System.assert(xmlRootCdashClassField2.equals(xmlRootCdashClassField1));
        System.assert(xmlRootCdashClassField1.equals(xmlRootCdashClassField1));
        System.assert(xmlRootCdashClassField3.equals(xmlRootCdashClassField4));
        System.assert(xmlRootCdashClassField4.equals(xmlRootCdashClassField3));
        System.assert(xmlRootCdashClassField3.equals(xmlRootCdashClassField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField3 = new OASXmlRootCdashClassField();
        OASXmlRootCdashClassField xmlRootCdashClassField4 = new OASXmlRootCdashClassField();

        System.assert(xmlRootCdashClassField1.equals(xmlRootCdashClassField2));
        System.assert(xmlRootCdashClassField2.equals(xmlRootCdashClassField1));
        System.assert(xmlRootCdashClassField3.equals(xmlRootCdashClassField4));
        System.assert(xmlRootCdashClassField4.equals(xmlRootCdashClassField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = new OASXmlRootCdashClassField();

        System.assertEquals(false, xmlRootCdashClassField1.equals('foo'));
        System.assertEquals(false, xmlRootCdashClassField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = new OASXmlRootCdashClassField();
        OASXmlRootCdashClassField xmlRootCdashClassField3;

        System.assertEquals(false, xmlRootCdashClassField1.equals(xmlRootCdashClassField3));
        System.assertEquals(false, xmlRootCdashClassField2.equals(xmlRootCdashClassField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = new OASXmlRootCdashClassField();

        System.assertEquals(xmlRootCdashClassField1.hashCode(), xmlRootCdashClassField1.hashCode());
        System.assertEquals(xmlRootCdashClassField2.hashCode(), xmlRootCdashClassField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCdashClassField xmlRootCdashClassField1 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField2 = OASXmlRootCdashClassField.getExample();
        OASXmlRootCdashClassField xmlRootCdashClassField3 = new OASXmlRootCdashClassField();
        OASXmlRootCdashClassField xmlRootCdashClassField4 = new OASXmlRootCdashClassField();

        System.assert(xmlRootCdashClassField1.equals(xmlRootCdashClassField2));
        System.assert(xmlRootCdashClassField3.equals(xmlRootCdashClassField4));
        System.assertEquals(xmlRootCdashClassField1.hashCode(), xmlRootCdashClassField2.hashCode());
        System.assertEquals(xmlRootCdashClassField3.hashCode(), xmlRootCdashClassField4.hashCode());
    }
}
