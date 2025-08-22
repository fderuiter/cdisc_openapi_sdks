@isTest
private class OASXmlSdtmigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = xmlSdtmigDatasetVariable1;
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable3 = new OASXmlSdtmigDatasetVariable();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable4 = xmlSdtmigDatasetVariable3;

        System.assert(xmlSdtmigDatasetVariable1.equals(xmlSdtmigDatasetVariable2));
        System.assert(xmlSdtmigDatasetVariable2.equals(xmlSdtmigDatasetVariable1));
        System.assert(xmlSdtmigDatasetVariable1.equals(xmlSdtmigDatasetVariable1));
        System.assert(xmlSdtmigDatasetVariable3.equals(xmlSdtmigDatasetVariable4));
        System.assert(xmlSdtmigDatasetVariable4.equals(xmlSdtmigDatasetVariable3));
        System.assert(xmlSdtmigDatasetVariable3.equals(xmlSdtmigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable3 = new OASXmlSdtmigDatasetVariable();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable4 = new OASXmlSdtmigDatasetVariable();

        System.assert(xmlSdtmigDatasetVariable1.equals(xmlSdtmigDatasetVariable2));
        System.assert(xmlSdtmigDatasetVariable2.equals(xmlSdtmigDatasetVariable1));
        System.assert(xmlSdtmigDatasetVariable3.equals(xmlSdtmigDatasetVariable4));
        System.assert(xmlSdtmigDatasetVariable4.equals(xmlSdtmigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = new OASXmlSdtmigDatasetVariable();

        System.assertEquals(false, xmlSdtmigDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlSdtmigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = new OASXmlSdtmigDatasetVariable();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable3;

        System.assertEquals(false, xmlSdtmigDatasetVariable1.equals(xmlSdtmigDatasetVariable3));
        System.assertEquals(false, xmlSdtmigDatasetVariable2.equals(xmlSdtmigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = new OASXmlSdtmigDatasetVariable();

        System.assertEquals(xmlSdtmigDatasetVariable1.hashCode(), xmlSdtmigDatasetVariable1.hashCode());
        System.assertEquals(xmlSdtmigDatasetVariable2.hashCode(), xmlSdtmigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable1 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable2 = OASXmlSdtmigDatasetVariable.getExample();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable3 = new OASXmlSdtmigDatasetVariable();
        OASXmlSdtmigDatasetVariable xmlSdtmigDatasetVariable4 = new OASXmlSdtmigDatasetVariable();

        System.assert(xmlSdtmigDatasetVariable1.equals(xmlSdtmigDatasetVariable2));
        System.assert(xmlSdtmigDatasetVariable3.equals(xmlSdtmigDatasetVariable4));
        System.assertEquals(xmlSdtmigDatasetVariable1.hashCode(), xmlSdtmigDatasetVariable2.hashCode());
        System.assertEquals(xmlSdtmigDatasetVariable3.hashCode(), xmlSdtmigDatasetVariable4.hashCode());
    }
}
