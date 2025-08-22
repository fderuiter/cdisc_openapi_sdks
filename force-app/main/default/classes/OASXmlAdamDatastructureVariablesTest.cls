@isTest
private class OASXmlAdamDatastructureVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = xmlAdamDatastructureVariables1;
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables3 = new OASXmlAdamDatastructureVariables();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables4 = xmlAdamDatastructureVariables3;

        System.assert(xmlAdamDatastructureVariables1.equals(xmlAdamDatastructureVariables2));
        System.assert(xmlAdamDatastructureVariables2.equals(xmlAdamDatastructureVariables1));
        System.assert(xmlAdamDatastructureVariables1.equals(xmlAdamDatastructureVariables1));
        System.assert(xmlAdamDatastructureVariables3.equals(xmlAdamDatastructureVariables4));
        System.assert(xmlAdamDatastructureVariables4.equals(xmlAdamDatastructureVariables3));
        System.assert(xmlAdamDatastructureVariables3.equals(xmlAdamDatastructureVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables3 = new OASXmlAdamDatastructureVariables();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables4 = new OASXmlAdamDatastructureVariables();

        System.assert(xmlAdamDatastructureVariables1.equals(xmlAdamDatastructureVariables2));
        System.assert(xmlAdamDatastructureVariables2.equals(xmlAdamDatastructureVariables1));
        System.assert(xmlAdamDatastructureVariables3.equals(xmlAdamDatastructureVariables4));
        System.assert(xmlAdamDatastructureVariables4.equals(xmlAdamDatastructureVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = new OASXmlAdamDatastructureVariables();

        System.assertEquals(false, xmlAdamDatastructureVariables1.equals('foo'));
        System.assertEquals(false, xmlAdamDatastructureVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = new OASXmlAdamDatastructureVariables();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables3;

        System.assertEquals(false, xmlAdamDatastructureVariables1.equals(xmlAdamDatastructureVariables3));
        System.assertEquals(false, xmlAdamDatastructureVariables2.equals(xmlAdamDatastructureVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = new OASXmlAdamDatastructureVariables();

        System.assertEquals(xmlAdamDatastructureVariables1.hashCode(), xmlAdamDatastructureVariables1.hashCode());
        System.assertEquals(xmlAdamDatastructureVariables2.hashCode(), xmlAdamDatastructureVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables1 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables2 = OASXmlAdamDatastructureVariables.getExample();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables3 = new OASXmlAdamDatastructureVariables();
        OASXmlAdamDatastructureVariables xmlAdamDatastructureVariables4 = new OASXmlAdamDatastructureVariables();

        System.assert(xmlAdamDatastructureVariables1.equals(xmlAdamDatastructureVariables2));
        System.assert(xmlAdamDatastructureVariables3.equals(xmlAdamDatastructureVariables4));
        System.assertEquals(xmlAdamDatastructureVariables1.hashCode(), xmlAdamDatastructureVariables2.hashCode());
        System.assertEquals(xmlAdamDatastructureVariables3.hashCode(), xmlAdamDatastructureVariables4.hashCode());
    }
}
