@isTest
private class OASXmlRootSdtmigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = xmlRootSdtmigDatasetVariable1;
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable3 = new OASXmlRootSdtmigDatasetVariable();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable4 = xmlRootSdtmigDatasetVariable3;

        System.assert(xmlRootSdtmigDatasetVariable1.equals(xmlRootSdtmigDatasetVariable2));
        System.assert(xmlRootSdtmigDatasetVariable2.equals(xmlRootSdtmigDatasetVariable1));
        System.assert(xmlRootSdtmigDatasetVariable1.equals(xmlRootSdtmigDatasetVariable1));
        System.assert(xmlRootSdtmigDatasetVariable3.equals(xmlRootSdtmigDatasetVariable4));
        System.assert(xmlRootSdtmigDatasetVariable4.equals(xmlRootSdtmigDatasetVariable3));
        System.assert(xmlRootSdtmigDatasetVariable3.equals(xmlRootSdtmigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable3 = new OASXmlRootSdtmigDatasetVariable();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable4 = new OASXmlRootSdtmigDatasetVariable();

        System.assert(xmlRootSdtmigDatasetVariable1.equals(xmlRootSdtmigDatasetVariable2));
        System.assert(xmlRootSdtmigDatasetVariable2.equals(xmlRootSdtmigDatasetVariable1));
        System.assert(xmlRootSdtmigDatasetVariable3.equals(xmlRootSdtmigDatasetVariable4));
        System.assert(xmlRootSdtmigDatasetVariable4.equals(xmlRootSdtmigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = new OASXmlRootSdtmigDatasetVariable();

        System.assertEquals(false, xmlRootSdtmigDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlRootSdtmigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = new OASXmlRootSdtmigDatasetVariable();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable3;

        System.assertEquals(false, xmlRootSdtmigDatasetVariable1.equals(xmlRootSdtmigDatasetVariable3));
        System.assertEquals(false, xmlRootSdtmigDatasetVariable2.equals(xmlRootSdtmigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = new OASXmlRootSdtmigDatasetVariable();

        System.assertEquals(xmlRootSdtmigDatasetVariable1.hashCode(), xmlRootSdtmigDatasetVariable1.hashCode());
        System.assertEquals(xmlRootSdtmigDatasetVariable2.hashCode(), xmlRootSdtmigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable1 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable2 = OASXmlRootSdtmigDatasetVariable.getExample();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable3 = new OASXmlRootSdtmigDatasetVariable();
        OASXmlRootSdtmigDatasetVariable xmlRootSdtmigDatasetVariable4 = new OASXmlRootSdtmigDatasetVariable();

        System.assert(xmlRootSdtmigDatasetVariable1.equals(xmlRootSdtmigDatasetVariable2));
        System.assert(xmlRootSdtmigDatasetVariable3.equals(xmlRootSdtmigDatasetVariable4));
        System.assertEquals(xmlRootSdtmigDatasetVariable1.hashCode(), xmlRootSdtmigDatasetVariable2.hashCode());
        System.assertEquals(xmlRootSdtmigDatasetVariable3.hashCode(), xmlRootSdtmigDatasetVariable4.hashCode());
    }
}
