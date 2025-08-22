@isTest
private class OASXmlAdamVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = xmlAdamVariable1;
        OASXmlAdamVariable xmlAdamVariable3 = new OASXmlAdamVariable();
        OASXmlAdamVariable xmlAdamVariable4 = xmlAdamVariable3;

        System.assert(xmlAdamVariable1.equals(xmlAdamVariable2));
        System.assert(xmlAdamVariable2.equals(xmlAdamVariable1));
        System.assert(xmlAdamVariable1.equals(xmlAdamVariable1));
        System.assert(xmlAdamVariable3.equals(xmlAdamVariable4));
        System.assert(xmlAdamVariable4.equals(xmlAdamVariable3));
        System.assert(xmlAdamVariable3.equals(xmlAdamVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable3 = new OASXmlAdamVariable();
        OASXmlAdamVariable xmlAdamVariable4 = new OASXmlAdamVariable();

        System.assert(xmlAdamVariable1.equals(xmlAdamVariable2));
        System.assert(xmlAdamVariable2.equals(xmlAdamVariable1));
        System.assert(xmlAdamVariable3.equals(xmlAdamVariable4));
        System.assert(xmlAdamVariable4.equals(xmlAdamVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = new OASXmlAdamVariable();

        System.assertEquals(false, xmlAdamVariable1.equals('foo'));
        System.assertEquals(false, xmlAdamVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = new OASXmlAdamVariable();
        OASXmlAdamVariable xmlAdamVariable3;

        System.assertEquals(false, xmlAdamVariable1.equals(xmlAdamVariable3));
        System.assertEquals(false, xmlAdamVariable2.equals(xmlAdamVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = new OASXmlAdamVariable();

        System.assertEquals(xmlAdamVariable1.hashCode(), xmlAdamVariable1.hashCode());
        System.assertEquals(xmlAdamVariable2.hashCode(), xmlAdamVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamVariable xmlAdamVariable1 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable2 = OASXmlAdamVariable.getExample();
        OASXmlAdamVariable xmlAdamVariable3 = new OASXmlAdamVariable();
        OASXmlAdamVariable xmlAdamVariable4 = new OASXmlAdamVariable();

        System.assert(xmlAdamVariable1.equals(xmlAdamVariable2));
        System.assert(xmlAdamVariable3.equals(xmlAdamVariable4));
        System.assertEquals(xmlAdamVariable1.hashCode(), xmlAdamVariable2.hashCode());
        System.assertEquals(xmlAdamVariable3.hashCode(), xmlAdamVariable4.hashCode());
    }
}
