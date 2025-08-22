@isTest
private class OASXmlRootSdtmClassVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = xmlRootSdtmClassVariable1;
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable3 = new OASXmlRootSdtmClassVariable();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable4 = xmlRootSdtmClassVariable3;

        System.assert(xmlRootSdtmClassVariable1.equals(xmlRootSdtmClassVariable2));
        System.assert(xmlRootSdtmClassVariable2.equals(xmlRootSdtmClassVariable1));
        System.assert(xmlRootSdtmClassVariable1.equals(xmlRootSdtmClassVariable1));
        System.assert(xmlRootSdtmClassVariable3.equals(xmlRootSdtmClassVariable4));
        System.assert(xmlRootSdtmClassVariable4.equals(xmlRootSdtmClassVariable3));
        System.assert(xmlRootSdtmClassVariable3.equals(xmlRootSdtmClassVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable3 = new OASXmlRootSdtmClassVariable();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable4 = new OASXmlRootSdtmClassVariable();

        System.assert(xmlRootSdtmClassVariable1.equals(xmlRootSdtmClassVariable2));
        System.assert(xmlRootSdtmClassVariable2.equals(xmlRootSdtmClassVariable1));
        System.assert(xmlRootSdtmClassVariable3.equals(xmlRootSdtmClassVariable4));
        System.assert(xmlRootSdtmClassVariable4.equals(xmlRootSdtmClassVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = new OASXmlRootSdtmClassVariable();

        System.assertEquals(false, xmlRootSdtmClassVariable1.equals('foo'));
        System.assertEquals(false, xmlRootSdtmClassVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = new OASXmlRootSdtmClassVariable();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable3;

        System.assertEquals(false, xmlRootSdtmClassVariable1.equals(xmlRootSdtmClassVariable3));
        System.assertEquals(false, xmlRootSdtmClassVariable2.equals(xmlRootSdtmClassVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = new OASXmlRootSdtmClassVariable();

        System.assertEquals(xmlRootSdtmClassVariable1.hashCode(), xmlRootSdtmClassVariable1.hashCode());
        System.assertEquals(xmlRootSdtmClassVariable2.hashCode(), xmlRootSdtmClassVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable1 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable2 = OASXmlRootSdtmClassVariable.getExample();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable3 = new OASXmlRootSdtmClassVariable();
        OASXmlRootSdtmClassVariable xmlRootSdtmClassVariable4 = new OASXmlRootSdtmClassVariable();

        System.assert(xmlRootSdtmClassVariable1.equals(xmlRootSdtmClassVariable2));
        System.assert(xmlRootSdtmClassVariable3.equals(xmlRootSdtmClassVariable4));
        System.assertEquals(xmlRootSdtmClassVariable1.hashCode(), xmlRootSdtmClassVariable2.hashCode());
        System.assertEquals(xmlRootSdtmClassVariable3.hashCode(), xmlRootSdtmClassVariable4.hashCode());
    }
}
