@isTest
private class OASXmlSendigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = xmlSendigDatasetVariable1;
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable3 = new OASXmlSendigDatasetVariable();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable4 = xmlSendigDatasetVariable3;

        System.assert(xmlSendigDatasetVariable1.equals(xmlSendigDatasetVariable2));
        System.assert(xmlSendigDatasetVariable2.equals(xmlSendigDatasetVariable1));
        System.assert(xmlSendigDatasetVariable1.equals(xmlSendigDatasetVariable1));
        System.assert(xmlSendigDatasetVariable3.equals(xmlSendigDatasetVariable4));
        System.assert(xmlSendigDatasetVariable4.equals(xmlSendigDatasetVariable3));
        System.assert(xmlSendigDatasetVariable3.equals(xmlSendigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable3 = new OASXmlSendigDatasetVariable();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable4 = new OASXmlSendigDatasetVariable();

        System.assert(xmlSendigDatasetVariable1.equals(xmlSendigDatasetVariable2));
        System.assert(xmlSendigDatasetVariable2.equals(xmlSendigDatasetVariable1));
        System.assert(xmlSendigDatasetVariable3.equals(xmlSendigDatasetVariable4));
        System.assert(xmlSendigDatasetVariable4.equals(xmlSendigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = new OASXmlSendigDatasetVariable();

        System.assertEquals(false, xmlSendigDatasetVariable1.equals('foo'));
        System.assertEquals(false, xmlSendigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = new OASXmlSendigDatasetVariable();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable3;

        System.assertEquals(false, xmlSendigDatasetVariable1.equals(xmlSendigDatasetVariable3));
        System.assertEquals(false, xmlSendigDatasetVariable2.equals(xmlSendigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = new OASXmlSendigDatasetVariable();

        System.assertEquals(xmlSendigDatasetVariable1.hashCode(), xmlSendigDatasetVariable1.hashCode());
        System.assertEquals(xmlSendigDatasetVariable2.hashCode(), xmlSendigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable1 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable2 = OASXmlSendigDatasetVariable.getExample();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable3 = new OASXmlSendigDatasetVariable();
        OASXmlSendigDatasetVariable xmlSendigDatasetVariable4 = new OASXmlSendigDatasetVariable();

        System.assert(xmlSendigDatasetVariable1.equals(xmlSendigDatasetVariable2));
        System.assert(xmlSendigDatasetVariable3.equals(xmlSendigDatasetVariable4));
        System.assertEquals(xmlSendigDatasetVariable1.hashCode(), xmlSendigDatasetVariable2.hashCode());
        System.assertEquals(xmlSendigDatasetVariable3.hashCode(), xmlSendigDatasetVariable4.hashCode());
    }
}
