@isTest
private class OASXmlRootSdtmDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = xmlRootSdtmDatasetVariable1;
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable3 = new OASXmlRootSdtmDatasetVariable();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable4 = xmlRootSdtmDatasetVariable3;

        System.assert(xmlRootSdtmDatasetVariable1.equals(xmlRootSdtmDatasetVariable2));
        System.assert(xmlRootSdtmDatasetVariable2.equals(xmlRootSdtmDatasetVariable1));
        System.assert(xmlRootSdtmDatasetVariable1.equals(xmlRootSdtmDatasetVariable1));
        System.assert(xmlRootSdtmDatasetVariable3.equals(xmlRootSdtmDatasetVariable4));
        System.assert(xmlRootSdtmDatasetVariable4.equals(xmlRootSdtmDatasetVariable3));
        System.assert(xmlRootSdtmDatasetVariable3.equals(xmlRootSdtmDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable3 = new OASXmlRootSdtmDatasetVariable();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable4 = new OASXmlRootSdtmDatasetVariable();

        System.assert(xmlRootSdtmDatasetVariable1.equals(xmlRootSdtmDatasetVariable2));
        System.assert(xmlRootSdtmDatasetVariable2.equals(xmlRootSdtmDatasetVariable1));
        System.assert(xmlRootSdtmDatasetVariable3.equals(xmlRootSdtmDatasetVariable4));
        System.assert(xmlRootSdtmDatasetVariable4.equals(xmlRootSdtmDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = new OASXmlRootSdtmDatasetVariable();

        System.assertEquals(false, xmlRootSdtmDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlRootSdtmDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = new OASXmlRootSdtmDatasetVariable();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable3;

        System.assertEquals(false, xmlRootSdtmDatasetVariable1.equals(xmlRootSdtmDatasetVariable3));
        System.assertEquals(false, xmlRootSdtmDatasetVariable2.equals(xmlRootSdtmDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = new OASXmlRootSdtmDatasetVariable();

        System.assertEquals(xmlRootSdtmDatasetVariable1.hashCode(), xmlRootSdtmDatasetVariable1.hashCode());
        System.assertEquals(xmlRootSdtmDatasetVariable2.hashCode(), xmlRootSdtmDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable1 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable2 = OASXmlRootSdtmDatasetVariable.getExample();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable3 = new OASXmlRootSdtmDatasetVariable();
        OASXmlRootSdtmDatasetVariable xmlRootSdtmDatasetVariable4 = new OASXmlRootSdtmDatasetVariable();

        System.assert(xmlRootSdtmDatasetVariable1.equals(xmlRootSdtmDatasetVariable2));
        System.assert(xmlRootSdtmDatasetVariable3.equals(xmlRootSdtmDatasetVariable4));
        System.assertEquals(xmlRootSdtmDatasetVariable1.hashCode(), xmlRootSdtmDatasetVariable2.hashCode());
        System.assertEquals(xmlRootSdtmDatasetVariable3.hashCode(), xmlRootSdtmDatasetVariable4.hashCode());
    }
}
