@isTest
private class OASXmlCdashDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = xmlCdashDomainField1;
        OASXmlCdashDomainField xmlCdashDomainField3 = new OASXmlCdashDomainField();
        OASXmlCdashDomainField xmlCdashDomainField4 = xmlCdashDomainField3;

        System.assert(xmlCdashDomainField1.equals(xmlCdashDomainField2));
        System.assert(xmlCdashDomainField2.equals(xmlCdashDomainField1));
        System.assert(xmlCdashDomainField1.equals(xmlCdashDomainField1));
        System.assert(xmlCdashDomainField3.equals(xmlCdashDomainField4));
        System.assert(xmlCdashDomainField4.equals(xmlCdashDomainField3));
        System.assert(xmlCdashDomainField3.equals(xmlCdashDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField3 = new OASXmlCdashDomainField();
        OASXmlCdashDomainField xmlCdashDomainField4 = new OASXmlCdashDomainField();

        System.assert(xmlCdashDomainField1.equals(xmlCdashDomainField2));
        System.assert(xmlCdashDomainField2.equals(xmlCdashDomainField1));
        System.assert(xmlCdashDomainField3.equals(xmlCdashDomainField4));
        System.assert(xmlCdashDomainField4.equals(xmlCdashDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = new OASXmlCdashDomainField();

        System.assertEquals(false, xmlCdashDomainField1.equals('foo'));
        System.assertEquals(false, xmlCdashDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = new OASXmlCdashDomainField();
        OASXmlCdashDomainField xmlCdashDomainField3;

        System.assertEquals(false, xmlCdashDomainField1.equals(xmlCdashDomainField3));
        System.assertEquals(false, xmlCdashDomainField2.equals(xmlCdashDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = new OASXmlCdashDomainField();

        System.assertEquals(xmlCdashDomainField1.hashCode(), xmlCdashDomainField1.hashCode());
        System.assertEquals(xmlCdashDomainField2.hashCode(), xmlCdashDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashDomainField xmlCdashDomainField1 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField2 = OASXmlCdashDomainField.getExample();
        OASXmlCdashDomainField xmlCdashDomainField3 = new OASXmlCdashDomainField();
        OASXmlCdashDomainField xmlCdashDomainField4 = new OASXmlCdashDomainField();

        System.assert(xmlCdashDomainField1.equals(xmlCdashDomainField2));
        System.assert(xmlCdashDomainField3.equals(xmlCdashDomainField4));
        System.assertEquals(xmlCdashDomainField1.hashCode(), xmlCdashDomainField2.hashCode());
        System.assertEquals(xmlCdashDomainField3.hashCode(), xmlCdashDomainField4.hashCode());
    }
}
