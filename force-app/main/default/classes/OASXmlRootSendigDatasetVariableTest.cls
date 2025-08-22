@isTest
private class OASXmlRootSendigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = xmlRootSendigDatasetVariable1;
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable3 = new OASXmlRootSendigDatasetVariable();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable4 = xmlRootSendigDatasetVariable3;

        System.assert(xmlRootSendigDatasetVariable1.equals(xmlRootSendigDatasetVariable2));
        System.assert(xmlRootSendigDatasetVariable2.equals(xmlRootSendigDatasetVariable1));
        System.assert(xmlRootSendigDatasetVariable1.equals(xmlRootSendigDatasetVariable1));
        System.assert(xmlRootSendigDatasetVariable3.equals(xmlRootSendigDatasetVariable4));
        System.assert(xmlRootSendigDatasetVariable4.equals(xmlRootSendigDatasetVariable3));
        System.assert(xmlRootSendigDatasetVariable3.equals(xmlRootSendigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable3 = new OASXmlRootSendigDatasetVariable();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable4 = new OASXmlRootSendigDatasetVariable();

        System.assert(xmlRootSendigDatasetVariable1.equals(xmlRootSendigDatasetVariable2));
        System.assert(xmlRootSendigDatasetVariable2.equals(xmlRootSendigDatasetVariable1));
        System.assert(xmlRootSendigDatasetVariable3.equals(xmlRootSendigDatasetVariable4));
        System.assert(xmlRootSendigDatasetVariable4.equals(xmlRootSendigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = new OASXmlRootSendigDatasetVariable();

        System.assertEquals(false, xmlRootSendigDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlRootSendigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = new OASXmlRootSendigDatasetVariable();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable3;

        System.assertEquals(false, xmlRootSendigDatasetVariable1.equals(xmlRootSendigDatasetVariable3));
        System.assertEquals(false, xmlRootSendigDatasetVariable2.equals(xmlRootSendigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = new OASXmlRootSendigDatasetVariable();

        System.assertEquals(xmlRootSendigDatasetVariable1.hashCode(), xmlRootSendigDatasetVariable1.hashCode());
        System.assertEquals(xmlRootSendigDatasetVariable2.hashCode(), xmlRootSendigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable1 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable2 = OASXmlRootSendigDatasetVariable.getExample();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable3 = new OASXmlRootSendigDatasetVariable();
        OASXmlRootSendigDatasetVariable xmlRootSendigDatasetVariable4 = new OASXmlRootSendigDatasetVariable();

        System.assert(xmlRootSendigDatasetVariable1.equals(xmlRootSendigDatasetVariable2));
        System.assert(xmlRootSendigDatasetVariable3.equals(xmlRootSendigDatasetVariable4));
        System.assertEquals(xmlRootSendigDatasetVariable1.hashCode(), xmlRootSendigDatasetVariable2.hashCode());
        System.assertEquals(xmlRootSendigDatasetVariable3.hashCode(), xmlRootSendigDatasetVariable4.hashCode());
    }
}
