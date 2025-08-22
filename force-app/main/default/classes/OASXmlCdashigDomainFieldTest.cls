@isTest
private class OASXmlCdashigDomainFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = xmlCdashigDomainField1;
        OASXmlCdashigDomainField xmlCdashigDomainField3 = new OASXmlCdashigDomainField();
        OASXmlCdashigDomainField xmlCdashigDomainField4 = xmlCdashigDomainField3;

        System.assert(xmlCdashigDomainField1.equals(xmlCdashigDomainField2));
        System.assert(xmlCdashigDomainField2.equals(xmlCdashigDomainField1));
        System.assert(xmlCdashigDomainField1.equals(xmlCdashigDomainField1));
        System.assert(xmlCdashigDomainField3.equals(xmlCdashigDomainField4));
        System.assert(xmlCdashigDomainField4.equals(xmlCdashigDomainField3));
        System.assert(xmlCdashigDomainField3.equals(xmlCdashigDomainField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField3 = new OASXmlCdashigDomainField();
        OASXmlCdashigDomainField xmlCdashigDomainField4 = new OASXmlCdashigDomainField();

        System.assert(xmlCdashigDomainField1.equals(xmlCdashigDomainField2));
        System.assert(xmlCdashigDomainField2.equals(xmlCdashigDomainField1));
        System.assert(xmlCdashigDomainField3.equals(xmlCdashigDomainField4));
        System.assert(xmlCdashigDomainField4.equals(xmlCdashigDomainField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = new OASXmlCdashigDomainField();

        System.assertEquals(false, xmlCdashigDomainField1.equals('foo'));
        System.assertEquals(false, xmlCdashigDomainField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = new OASXmlCdashigDomainField();
        OASXmlCdashigDomainField xmlCdashigDomainField3;

        System.assertEquals(false, xmlCdashigDomainField1.equals(xmlCdashigDomainField3));
        System.assertEquals(false, xmlCdashigDomainField2.equals(xmlCdashigDomainField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = new OASXmlCdashigDomainField();

        System.assertEquals(xmlCdashigDomainField1.hashCode(), xmlCdashigDomainField1.hashCode());
        System.assertEquals(xmlCdashigDomainField2.hashCode(), xmlCdashigDomainField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigDomainField xmlCdashigDomainField1 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField2 = OASXmlCdashigDomainField.getExample();
        OASXmlCdashigDomainField xmlCdashigDomainField3 = new OASXmlCdashigDomainField();
        OASXmlCdashigDomainField xmlCdashigDomainField4 = new OASXmlCdashigDomainField();

        System.assert(xmlCdashigDomainField1.equals(xmlCdashigDomainField2));
        System.assert(xmlCdashigDomainField3.equals(xmlCdashigDomainField4));
        System.assertEquals(xmlCdashigDomainField1.hashCode(), xmlCdashigDomainField2.hashCode());
        System.assertEquals(xmlCdashigDomainField3.hashCode(), xmlCdashigDomainField4.hashCode());
    }
}
