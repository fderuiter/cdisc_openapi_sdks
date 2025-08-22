@isTest
private class OASXmlRootCdashigScenarioFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = xmlRootCdashigScenarioField1;
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField3 = new OASXmlRootCdashigScenarioField();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField4 = xmlRootCdashigScenarioField3;

        System.assert(xmlRootCdashigScenarioField1.equals(xmlRootCdashigScenarioField2));
        System.assert(xmlRootCdashigScenarioField2.equals(xmlRootCdashigScenarioField1));
        System.assert(xmlRootCdashigScenarioField1.equals(xmlRootCdashigScenarioField1));
        System.assert(xmlRootCdashigScenarioField3.equals(xmlRootCdashigScenarioField4));
        System.assert(xmlRootCdashigScenarioField4.equals(xmlRootCdashigScenarioField3));
        System.assert(xmlRootCdashigScenarioField3.equals(xmlRootCdashigScenarioField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField3 = new OASXmlRootCdashigScenarioField();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField4 = new OASXmlRootCdashigScenarioField();

        System.assert(xmlRootCdashigScenarioField1.equals(xmlRootCdashigScenarioField2));
        System.assert(xmlRootCdashigScenarioField2.equals(xmlRootCdashigScenarioField1));
        System.assert(xmlRootCdashigScenarioField3.equals(xmlRootCdashigScenarioField4));
        System.assert(xmlRootCdashigScenarioField4.equals(xmlRootCdashigScenarioField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = new OASXmlRootCdashigScenarioField();

        System.assertEquals(false, xmlRootCdashigScenarioField1.equals('foo'));
        System.assertEquals(false, xmlRootCdashigScenarioField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = new OASXmlRootCdashigScenarioField();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField3;

        System.assertEquals(false, xmlRootCdashigScenarioField1.equals(xmlRootCdashigScenarioField3));
        System.assertEquals(false, xmlRootCdashigScenarioField2.equals(xmlRootCdashigScenarioField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = new OASXmlRootCdashigScenarioField();

        System.assertEquals(xmlRootCdashigScenarioField1.hashCode(), xmlRootCdashigScenarioField1.hashCode());
        System.assertEquals(xmlRootCdashigScenarioField2.hashCode(), xmlRootCdashigScenarioField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField1 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField2 = OASXmlRootCdashigScenarioField.getExample();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField3 = new OASXmlRootCdashigScenarioField();
        OASXmlRootCdashigScenarioField xmlRootCdashigScenarioField4 = new OASXmlRootCdashigScenarioField();

        System.assert(xmlRootCdashigScenarioField1.equals(xmlRootCdashigScenarioField2));
        System.assert(xmlRootCdashigScenarioField3.equals(xmlRootCdashigScenarioField4));
        System.assertEquals(xmlRootCdashigScenarioField1.hashCode(), xmlRootCdashigScenarioField2.hashCode());
        System.assertEquals(xmlRootCdashigScenarioField3.hashCode(), xmlRootCdashigScenarioField4.hashCode());
    }
}
