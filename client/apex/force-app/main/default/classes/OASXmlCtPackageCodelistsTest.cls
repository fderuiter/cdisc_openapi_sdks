@isTest
private class OASXmlCtPackageCodelistsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = xmlCtPackageCodelists1;
        OASXmlCtPackageCodelists xmlCtPackageCodelists3 = new OASXmlCtPackageCodelists();
        OASXmlCtPackageCodelists xmlCtPackageCodelists4 = xmlCtPackageCodelists3;

        System.assert(xmlCtPackageCodelists1.equals(xmlCtPackageCodelists2));
        System.assert(xmlCtPackageCodelists2.equals(xmlCtPackageCodelists1));
        System.assert(xmlCtPackageCodelists1.equals(xmlCtPackageCodelists1));
        System.assert(xmlCtPackageCodelists3.equals(xmlCtPackageCodelists4));
        System.assert(xmlCtPackageCodelists4.equals(xmlCtPackageCodelists3));
        System.assert(xmlCtPackageCodelists3.equals(xmlCtPackageCodelists3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists3 = new OASXmlCtPackageCodelists();
        OASXmlCtPackageCodelists xmlCtPackageCodelists4 = new OASXmlCtPackageCodelists();

        System.assert(xmlCtPackageCodelists1.equals(xmlCtPackageCodelists2));
        System.assert(xmlCtPackageCodelists2.equals(xmlCtPackageCodelists1));
        System.assert(xmlCtPackageCodelists3.equals(xmlCtPackageCodelists4));
        System.assert(xmlCtPackageCodelists4.equals(xmlCtPackageCodelists3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = new OASXmlCtPackageCodelists();

        System.assertEquals(false, xmlCtPackageCodelists1.equals('foo'));
        System.assertEquals(false, xmlCtPackageCodelists2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = new OASXmlCtPackageCodelists();
        OASXmlCtPackageCodelists xmlCtPackageCodelists3;

        System.assertEquals(false, xmlCtPackageCodelists1.equals(xmlCtPackageCodelists3));
        System.assertEquals(false, xmlCtPackageCodelists2.equals(xmlCtPackageCodelists3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = new OASXmlCtPackageCodelists();

        System.assertEquals(xmlCtPackageCodelists1.hashCode(), xmlCtPackageCodelists1.hashCode());
        System.assertEquals(xmlCtPackageCodelists2.hashCode(), xmlCtPackageCodelists2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtPackageCodelists xmlCtPackageCodelists1 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists2 = OASXmlCtPackageCodelists.getExample();
        OASXmlCtPackageCodelists xmlCtPackageCodelists3 = new OASXmlCtPackageCodelists();
        OASXmlCtPackageCodelists xmlCtPackageCodelists4 = new OASXmlCtPackageCodelists();

        System.assert(xmlCtPackageCodelists1.equals(xmlCtPackageCodelists2));
        System.assert(xmlCtPackageCodelists3.equals(xmlCtPackageCodelists4));
        System.assertEquals(xmlCtPackageCodelists1.hashCode(), xmlCtPackageCodelists2.hashCode());
        System.assertEquals(xmlCtPackageCodelists3.hashCode(), xmlCtPackageCodelists4.hashCode());
    }
}
