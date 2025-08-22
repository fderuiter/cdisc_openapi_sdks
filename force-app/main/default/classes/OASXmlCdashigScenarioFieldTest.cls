@isTest
private class OASXmlCdashigScenarioFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = xmlCdashigScenarioField1;
        OASXmlCdashigScenarioField xmlCdashigScenarioField3 = new OASXmlCdashigScenarioField();
        OASXmlCdashigScenarioField xmlCdashigScenarioField4 = xmlCdashigScenarioField3;

        System.assert(xmlCdashigScenarioField1.equals(xmlCdashigScenarioField2));
        System.assert(xmlCdashigScenarioField2.equals(xmlCdashigScenarioField1));
        System.assert(xmlCdashigScenarioField1.equals(xmlCdashigScenarioField1));
        System.assert(xmlCdashigScenarioField3.equals(xmlCdashigScenarioField4));
        System.assert(xmlCdashigScenarioField4.equals(xmlCdashigScenarioField3));
        System.assert(xmlCdashigScenarioField3.equals(xmlCdashigScenarioField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField3 = new OASXmlCdashigScenarioField();
        OASXmlCdashigScenarioField xmlCdashigScenarioField4 = new OASXmlCdashigScenarioField();

        System.assert(xmlCdashigScenarioField1.equals(xmlCdashigScenarioField2));
        System.assert(xmlCdashigScenarioField2.equals(xmlCdashigScenarioField1));
        System.assert(xmlCdashigScenarioField3.equals(xmlCdashigScenarioField4));
        System.assert(xmlCdashigScenarioField4.equals(xmlCdashigScenarioField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = new OASXmlCdashigScenarioField();

        System.assertEquals(false, xmlCdashigScenarioField1.equals('foo'));
        System.assertEquals(false, xmlCdashigScenarioField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = new OASXmlCdashigScenarioField();
        OASXmlCdashigScenarioField xmlCdashigScenarioField3;

        System.assertEquals(false, xmlCdashigScenarioField1.equals(xmlCdashigScenarioField3));
        System.assertEquals(false, xmlCdashigScenarioField2.equals(xmlCdashigScenarioField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = new OASXmlCdashigScenarioField();

        System.assertEquals(xmlCdashigScenarioField1.hashCode(), xmlCdashigScenarioField1.hashCode());
        System.assertEquals(xmlCdashigScenarioField2.hashCode(), xmlCdashigScenarioField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigScenarioField xmlCdashigScenarioField1 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField2 = OASXmlCdashigScenarioField.getExample();
        OASXmlCdashigScenarioField xmlCdashigScenarioField3 = new OASXmlCdashigScenarioField();
        OASXmlCdashigScenarioField xmlCdashigScenarioField4 = new OASXmlCdashigScenarioField();

        System.assert(xmlCdashigScenarioField1.equals(xmlCdashigScenarioField2));
        System.assert(xmlCdashigScenarioField3.equals(xmlCdashigScenarioField4));
        System.assertEquals(xmlCdashigScenarioField1.hashCode(), xmlCdashigScenarioField2.hashCode());
        System.assertEquals(xmlCdashigScenarioField3.hashCode(), xmlCdashigScenarioField4.hashCode());
    }
}
