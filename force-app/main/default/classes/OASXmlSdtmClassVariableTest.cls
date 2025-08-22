@isTest
private class OASXmlSdtmClassVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = xmlSdtmClassVariable1;
        OASXmlSdtmClassVariable xmlSdtmClassVariable3 = new OASXmlSdtmClassVariable();
        OASXmlSdtmClassVariable xmlSdtmClassVariable4 = xmlSdtmClassVariable3;

        System.assert(xmlSdtmClassVariable1.equals(xmlSdtmClassVariable2));
        System.assert(xmlSdtmClassVariable2.equals(xmlSdtmClassVariable1));
        System.assert(xmlSdtmClassVariable1.equals(xmlSdtmClassVariable1));
        System.assert(xmlSdtmClassVariable3.equals(xmlSdtmClassVariable4));
        System.assert(xmlSdtmClassVariable4.equals(xmlSdtmClassVariable3));
        System.assert(xmlSdtmClassVariable3.equals(xmlSdtmClassVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable3 = new OASXmlSdtmClassVariable();
        OASXmlSdtmClassVariable xmlSdtmClassVariable4 = new OASXmlSdtmClassVariable();

        System.assert(xmlSdtmClassVariable1.equals(xmlSdtmClassVariable2));
        System.assert(xmlSdtmClassVariable2.equals(xmlSdtmClassVariable1));
        System.assert(xmlSdtmClassVariable3.equals(xmlSdtmClassVariable4));
        System.assert(xmlSdtmClassVariable4.equals(xmlSdtmClassVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = new OASXmlSdtmClassVariable();

        System.assertEquals(false, xmlSdtmClassVariable1.equals('foo'));
        System.assertEquals(false, xmlSdtmClassVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = new OASXmlSdtmClassVariable();
        OASXmlSdtmClassVariable xmlSdtmClassVariable3;

        System.assertEquals(false, xmlSdtmClassVariable1.equals(xmlSdtmClassVariable3));
        System.assertEquals(false, xmlSdtmClassVariable2.equals(xmlSdtmClassVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = new OASXmlSdtmClassVariable();

        System.assertEquals(xmlSdtmClassVariable1.hashCode(), xmlSdtmClassVariable1.hashCode());
        System.assertEquals(xmlSdtmClassVariable2.hashCode(), xmlSdtmClassVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlSdtmClassVariable xmlSdtmClassVariable1 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable2 = OASXmlSdtmClassVariable.getExample();
        OASXmlSdtmClassVariable xmlSdtmClassVariable3 = new OASXmlSdtmClassVariable();
        OASXmlSdtmClassVariable xmlSdtmClassVariable4 = new OASXmlSdtmClassVariable();

        System.assert(xmlSdtmClassVariable1.equals(xmlSdtmClassVariable2));
        System.assert(xmlSdtmClassVariable3.equals(xmlSdtmClassVariable4));
        System.assertEquals(xmlSdtmClassVariable1.hashCode(), xmlSdtmClassVariable2.hashCode());
        System.assertEquals(xmlSdtmClassVariable3.hashCode(), xmlSdtmClassVariable4.hashCode());
    }
}
