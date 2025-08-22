@isTest
private class OASXmlCtPackagesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = xmlCtPackages1;
        OASXmlCtPackages xmlCtPackages3 = new OASXmlCtPackages();
        OASXmlCtPackages xmlCtPackages4 = xmlCtPackages3;

        System.assert(xmlCtPackages1.equals(xmlCtPackages2));
        System.assert(xmlCtPackages2.equals(xmlCtPackages1));
        System.assert(xmlCtPackages1.equals(xmlCtPackages1));
        System.assert(xmlCtPackages3.equals(xmlCtPackages4));
        System.assert(xmlCtPackages4.equals(xmlCtPackages3));
        System.assert(xmlCtPackages3.equals(xmlCtPackages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages3 = new OASXmlCtPackages();
        OASXmlCtPackages xmlCtPackages4 = new OASXmlCtPackages();

        System.assert(xmlCtPackages1.equals(xmlCtPackages2));
        System.assert(xmlCtPackages2.equals(xmlCtPackages1));
        System.assert(xmlCtPackages3.equals(xmlCtPackages4));
        System.assert(xmlCtPackages4.equals(xmlCtPackages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = new OASXmlCtPackages();

        System.assertEquals(false, xmlCtPackages1.equals('foo'));
        System.assertEquals(false, xmlCtPackages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = new OASXmlCtPackages();
        OASXmlCtPackages xmlCtPackages3;

        System.assertEquals(false, xmlCtPackages1.equals(xmlCtPackages3));
        System.assertEquals(false, xmlCtPackages2.equals(xmlCtPackages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = new OASXmlCtPackages();

        System.assertEquals(xmlCtPackages1.hashCode(), xmlCtPackages1.hashCode());
        System.assertEquals(xmlCtPackages2.hashCode(), xmlCtPackages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtPackages xmlCtPackages1 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages2 = OASXmlCtPackages.getExample();
        OASXmlCtPackages xmlCtPackages3 = new OASXmlCtPackages();
        OASXmlCtPackages xmlCtPackages4 = new OASXmlCtPackages();

        System.assert(xmlCtPackages1.equals(xmlCtPackages2));
        System.assert(xmlCtPackages3.equals(xmlCtPackages4));
        System.assertEquals(xmlCtPackages1.hashCode(), xmlCtPackages2.hashCode());
        System.assertEquals(xmlCtPackages3.hashCode(), xmlCtPackages4.hashCode());
    }
}
