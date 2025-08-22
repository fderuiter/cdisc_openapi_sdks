@isTest
private class OASXmlRootCdashDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = xmlRootCdashDomainField1;
        OASXmlRootCdashDomainField xmlRootCdashDomainField3 = new OASXmlRootCdashDomainField();
        OASXmlRootCdashDomainField xmlRootCdashDomainField4 = xmlRootCdashDomainField3;

        System.assert(xmlRootCdashDomainField1.equals(xmlRootCdashDomainField2));
        System.assert(xmlRootCdashDomainField2.equals(xmlRootCdashDomainField1));
        System.assert(xmlRootCdashDomainField1.equals(xmlRootCdashDomainField1));
        System.assert(xmlRootCdashDomainField3.equals(xmlRootCdashDomainField4));
        System.assert(xmlRootCdashDomainField4.equals(xmlRootCdashDomainField3));
        System.assert(xmlRootCdashDomainField3.equals(xmlRootCdashDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField3 = new OASXmlRootCdashDomainField();
        OASXmlRootCdashDomainField xmlRootCdashDomainField4 = new OASXmlRootCdashDomainField();

        System.assert(xmlRootCdashDomainField1.equals(xmlRootCdashDomainField2));
        System.assert(xmlRootCdashDomainField2.equals(xmlRootCdashDomainField1));
        System.assert(xmlRootCdashDomainField3.equals(xmlRootCdashDomainField4));
        System.assert(xmlRootCdashDomainField4.equals(xmlRootCdashDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = new OASXmlRootCdashDomainField();

        System.assertEquals(false, xmlRootCdashDomainField1.equals('foo'));
        System.assertEquals(false, xmlRootCdashDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = new OASXmlRootCdashDomainField();
        OASXmlRootCdashDomainField xmlRootCdashDomainField3;

        System.assertEquals(false, xmlRootCdashDomainField1.equals(xmlRootCdashDomainField3));
        System.assertEquals(false, xmlRootCdashDomainField2.equals(xmlRootCdashDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = new OASXmlRootCdashDomainField();

        System.assertEquals(xmlRootCdashDomainField1.hashCode(), xmlRootCdashDomainField1.hashCode());
        System.assertEquals(xmlRootCdashDomainField2.hashCode(), xmlRootCdashDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCdashDomainField xmlRootCdashDomainField1 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField2 = OASXmlRootCdashDomainField.getExample();
        OASXmlRootCdashDomainField xmlRootCdashDomainField3 = new OASXmlRootCdashDomainField();
        OASXmlRootCdashDomainField xmlRootCdashDomainField4 = new OASXmlRootCdashDomainField();

        System.assert(xmlRootCdashDomainField1.equals(xmlRootCdashDomainField2));
        System.assert(xmlRootCdashDomainField3.equals(xmlRootCdashDomainField4));
        System.assertEquals(xmlRootCdashDomainField1.hashCode(), xmlRootCdashDomainField2.hashCode());
        System.assertEquals(xmlRootCdashDomainField3.hashCode(), xmlRootCdashDomainField4.hashCode());
    }
}
