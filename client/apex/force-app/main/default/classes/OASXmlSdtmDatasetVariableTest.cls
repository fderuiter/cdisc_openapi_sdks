@isTest
private class OASXmlSdtmDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = xmlSdtmDatasetVariable1;
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable3 = new OASXmlSdtmDatasetVariable();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable4 = xmlSdtmDatasetVariable3;

        System.assert(xmlSdtmDatasetVariable1.equals(xmlSdtmDatasetVariable2));
        System.assert(xmlSdtmDatasetVariable2.equals(xmlSdtmDatasetVariable1));
        System.assert(xmlSdtmDatasetVariable1.equals(xmlSdtmDatasetVariable1));
        System.assert(xmlSdtmDatasetVariable3.equals(xmlSdtmDatasetVariable4));
        System.assert(xmlSdtmDatasetVariable4.equals(xmlSdtmDatasetVariable3));
        System.assert(xmlSdtmDatasetVariable3.equals(xmlSdtmDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable3 = new OASXmlSdtmDatasetVariable();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable4 = new OASXmlSdtmDatasetVariable();

        System.assert(xmlSdtmDatasetVariable1.equals(xmlSdtmDatasetVariable2));
        System.assert(xmlSdtmDatasetVariable2.equals(xmlSdtmDatasetVariable1));
        System.assert(xmlSdtmDatasetVariable3.equals(xmlSdtmDatasetVariable4));
        System.assert(xmlSdtmDatasetVariable4.equals(xmlSdtmDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = new OASXmlSdtmDatasetVariable();

        System.assertEquals(false, xmlSdtmDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlSdtmDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = new OASXmlSdtmDatasetVariable();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable3;

        System.assertEquals(false, xmlSdtmDatasetVariable1.equals(xmlSdtmDatasetVariable3));
        System.assertEquals(false, xmlSdtmDatasetVariable2.equals(xmlSdtmDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = new OASXmlSdtmDatasetVariable();

        System.assertEquals(xmlSdtmDatasetVariable1.hashCode(), xmlSdtmDatasetVariable1.hashCode());
        System.assertEquals(xmlSdtmDatasetVariable2.hashCode(), xmlSdtmDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable1 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable2 = OASXmlSdtmDatasetVariable.getExample();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable3 = new OASXmlSdtmDatasetVariable();
        OASXmlSdtmDatasetVariable xmlSdtmDatasetVariable4 = new OASXmlSdtmDatasetVariable();

        System.assert(xmlSdtmDatasetVariable1.equals(xmlSdtmDatasetVariable2));
        System.assert(xmlSdtmDatasetVariable3.equals(xmlSdtmDatasetVariable4));
        System.assertEquals(xmlSdtmDatasetVariable1.hashCode(), xmlSdtmDatasetVariable2.hashCode());
        System.assertEquals(xmlSdtmDatasetVariable3.hashCode(), xmlSdtmDatasetVariable4.hashCode());
    }
}
