@isTest
private class OASXmlRootCdashigDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = xmlRootCdashigDomainField1;
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField3 = new OASXmlRootCdashigDomainField();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField4 = xmlRootCdashigDomainField3;

        System.assert(xmlRootCdashigDomainField1.equals(xmlRootCdashigDomainField2));
        System.assert(xmlRootCdashigDomainField2.equals(xmlRootCdashigDomainField1));
        System.assert(xmlRootCdashigDomainField1.equals(xmlRootCdashigDomainField1));
        System.assert(xmlRootCdashigDomainField3.equals(xmlRootCdashigDomainField4));
        System.assert(xmlRootCdashigDomainField4.equals(xmlRootCdashigDomainField3));
        System.assert(xmlRootCdashigDomainField3.equals(xmlRootCdashigDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField3 = new OASXmlRootCdashigDomainField();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField4 = new OASXmlRootCdashigDomainField();

        System.assert(xmlRootCdashigDomainField1.equals(xmlRootCdashigDomainField2));
        System.assert(xmlRootCdashigDomainField2.equals(xmlRootCdashigDomainField1));
        System.assert(xmlRootCdashigDomainField3.equals(xmlRootCdashigDomainField4));
        System.assert(xmlRootCdashigDomainField4.equals(xmlRootCdashigDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = new OASXmlRootCdashigDomainField();

        System.assertEquals(false, xmlRootCdashigDomainField1.equals('foo'));
        System.assertEquals(false, xmlRootCdashigDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = new OASXmlRootCdashigDomainField();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField3;

        System.assertEquals(false, xmlRootCdashigDomainField1.equals(xmlRootCdashigDomainField3));
        System.assertEquals(false, xmlRootCdashigDomainField2.equals(xmlRootCdashigDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = new OASXmlRootCdashigDomainField();

        System.assertEquals(xmlRootCdashigDomainField1.hashCode(), xmlRootCdashigDomainField1.hashCode());
        System.assertEquals(xmlRootCdashigDomainField2.hashCode(), xmlRootCdashigDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField1 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField2 = OASXmlRootCdashigDomainField.getExample();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField3 = new OASXmlRootCdashigDomainField();
        OASXmlRootCdashigDomainField xmlRootCdashigDomainField4 = new OASXmlRootCdashigDomainField();

        System.assert(xmlRootCdashigDomainField1.equals(xmlRootCdashigDomainField2));
        System.assert(xmlRootCdashigDomainField3.equals(xmlRootCdashigDomainField4));
        System.assertEquals(xmlRootCdashigDomainField1.hashCode(), xmlRootCdashigDomainField2.hashCode());
        System.assertEquals(xmlRootCdashigDomainField3.hashCode(), xmlRootCdashigDomainField4.hashCode());
    }
}
