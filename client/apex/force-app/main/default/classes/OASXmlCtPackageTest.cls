@isTest
private class OASXmlCtPackageTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = xmlCtPackage1;
        OASXmlCtPackage xmlCtPackage3 = new OASXmlCtPackage();
        OASXmlCtPackage xmlCtPackage4 = xmlCtPackage3;

        System.assert(xmlCtPackage1.equals(xmlCtPackage2));
        System.assert(xmlCtPackage2.equals(xmlCtPackage1));
        System.assert(xmlCtPackage1.equals(xmlCtPackage1));
        System.assert(xmlCtPackage3.equals(xmlCtPackage4));
        System.assert(xmlCtPackage4.equals(xmlCtPackage3));
        System.assert(xmlCtPackage3.equals(xmlCtPackage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage3 = new OASXmlCtPackage();
        OASXmlCtPackage xmlCtPackage4 = new OASXmlCtPackage();

        System.assert(xmlCtPackage1.equals(xmlCtPackage2));
        System.assert(xmlCtPackage2.equals(xmlCtPackage1));
        System.assert(xmlCtPackage3.equals(xmlCtPackage4));
        System.assert(xmlCtPackage4.equals(xmlCtPackage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = new OASXmlCtPackage();

        System.assertEquals(false, xmlCtPackage1.equals('foo'));
        System.assertEquals(false, xmlCtPackage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = new OASXmlCtPackage();
        OASXmlCtPackage xmlCtPackage3;

        System.assertEquals(false, xmlCtPackage1.equals(xmlCtPackage3));
        System.assertEquals(false, xmlCtPackage2.equals(xmlCtPackage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = new OASXmlCtPackage();

        System.assertEquals(xmlCtPackage1.hashCode(), xmlCtPackage1.hashCode());
        System.assertEquals(xmlCtPackage2.hashCode(), xmlCtPackage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtPackage xmlCtPackage1 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage2 = OASXmlCtPackage.getExample();
        OASXmlCtPackage xmlCtPackage3 = new OASXmlCtPackage();
        OASXmlCtPackage xmlCtPackage4 = new OASXmlCtPackage();

        System.assert(xmlCtPackage1.equals(xmlCtPackage2));
        System.assert(xmlCtPackage3.equals(xmlCtPackage4));
        System.assertEquals(xmlCtPackage1.hashCode(), xmlCtPackage2.hashCode());
        System.assertEquals(xmlCtPackage3.hashCode(), xmlCtPackage4.hashCode());
    }
}
