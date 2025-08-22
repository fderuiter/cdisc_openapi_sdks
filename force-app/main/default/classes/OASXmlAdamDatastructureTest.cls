@isTest
private class OASXmlAdamDatastructureTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = xmlAdamDatastructure1;
        OASXmlAdamDatastructure xmlAdamDatastructure3 = new OASXmlAdamDatastructure();
        OASXmlAdamDatastructure xmlAdamDatastructure4 = xmlAdamDatastructure3;

        System.assert(xmlAdamDatastructure1.equals(xmlAdamDatastructure2));
        System.assert(xmlAdamDatastructure2.equals(xmlAdamDatastructure1));
        System.assert(xmlAdamDatastructure1.equals(xmlAdamDatastructure1));
        System.assert(xmlAdamDatastructure3.equals(xmlAdamDatastructure4));
        System.assert(xmlAdamDatastructure4.equals(xmlAdamDatastructure3));
        System.assert(xmlAdamDatastructure3.equals(xmlAdamDatastructure3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure3 = new OASXmlAdamDatastructure();
        OASXmlAdamDatastructure xmlAdamDatastructure4 = new OASXmlAdamDatastructure();

        System.assert(xmlAdamDatastructure1.equals(xmlAdamDatastructure2));
        System.assert(xmlAdamDatastructure2.equals(xmlAdamDatastructure1));
        System.assert(xmlAdamDatastructure3.equals(xmlAdamDatastructure4));
        System.assert(xmlAdamDatastructure4.equals(xmlAdamDatastructure3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = new OASXmlAdamDatastructure();

        System.assertEquals(false, xmlAdamDatastructure1.equals('foo'));
        System.assertEquals(false, xmlAdamDatastructure2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = new OASXmlAdamDatastructure();
        OASXmlAdamDatastructure xmlAdamDatastructure3;

        System.assertEquals(false, xmlAdamDatastructure1.equals(xmlAdamDatastructure3));
        System.assertEquals(false, xmlAdamDatastructure2.equals(xmlAdamDatastructure3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = new OASXmlAdamDatastructure();

        System.assertEquals(xmlAdamDatastructure1.hashCode(), xmlAdamDatastructure1.hashCode());
        System.assertEquals(xmlAdamDatastructure2.hashCode(), xmlAdamDatastructure2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlAdamDatastructure xmlAdamDatastructure1 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure2 = OASXmlAdamDatastructure.getExample();
        OASXmlAdamDatastructure xmlAdamDatastructure3 = new OASXmlAdamDatastructure();
        OASXmlAdamDatastructure xmlAdamDatastructure4 = new OASXmlAdamDatastructure();

        System.assert(xmlAdamDatastructure1.equals(xmlAdamDatastructure2));
        System.assert(xmlAdamDatastructure3.equals(xmlAdamDatastructure4));
        System.assertEquals(xmlAdamDatastructure1.hashCode(), xmlAdamDatastructure2.hashCode());
        System.assertEquals(xmlAdamDatastructure3.hashCode(), xmlAdamDatastructure4.hashCode());
    }
}
