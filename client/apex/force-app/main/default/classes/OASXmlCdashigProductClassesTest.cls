@isTest
private class OASXmlCdashigProductClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = xmlCdashigProductClasses1;
        OASXmlCdashigProductClasses xmlCdashigProductClasses3 = new OASXmlCdashigProductClasses();
        OASXmlCdashigProductClasses xmlCdashigProductClasses4 = xmlCdashigProductClasses3;

        System.assert(xmlCdashigProductClasses1.equals(xmlCdashigProductClasses2));
        System.assert(xmlCdashigProductClasses2.equals(xmlCdashigProductClasses1));
        System.assert(xmlCdashigProductClasses1.equals(xmlCdashigProductClasses1));
        System.assert(xmlCdashigProductClasses3.equals(xmlCdashigProductClasses4));
        System.assert(xmlCdashigProductClasses4.equals(xmlCdashigProductClasses3));
        System.assert(xmlCdashigProductClasses3.equals(xmlCdashigProductClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses3 = new OASXmlCdashigProductClasses();
        OASXmlCdashigProductClasses xmlCdashigProductClasses4 = new OASXmlCdashigProductClasses();

        System.assert(xmlCdashigProductClasses1.equals(xmlCdashigProductClasses2));
        System.assert(xmlCdashigProductClasses2.equals(xmlCdashigProductClasses1));
        System.assert(xmlCdashigProductClasses3.equals(xmlCdashigProductClasses4));
        System.assert(xmlCdashigProductClasses4.equals(xmlCdashigProductClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = new OASXmlCdashigProductClasses();

        System.assertEquals(false, xmlCdashigProductClasses1.equals('foo'));
        System.assertEquals(false, xmlCdashigProductClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = new OASXmlCdashigProductClasses();
        OASXmlCdashigProductClasses xmlCdashigProductClasses3;

        System.assertEquals(false, xmlCdashigProductClasses1.equals(xmlCdashigProductClasses3));
        System.assertEquals(false, xmlCdashigProductClasses2.equals(xmlCdashigProductClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = new OASXmlCdashigProductClasses();

        System.assertEquals(xmlCdashigProductClasses1.hashCode(), xmlCdashigProductClasses1.hashCode());
        System.assertEquals(xmlCdashigProductClasses2.hashCode(), xmlCdashigProductClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigProductClasses xmlCdashigProductClasses1 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses2 = OASXmlCdashigProductClasses.getExample();
        OASXmlCdashigProductClasses xmlCdashigProductClasses3 = new OASXmlCdashigProductClasses();
        OASXmlCdashigProductClasses xmlCdashigProductClasses4 = new OASXmlCdashigProductClasses();

        System.assert(xmlCdashigProductClasses1.equals(xmlCdashigProductClasses2));
        System.assert(xmlCdashigProductClasses3.equals(xmlCdashigProductClasses4));
        System.assertEquals(xmlCdashigProductClasses1.hashCode(), xmlCdashigProductClasses2.hashCode());
        System.assertEquals(xmlCdashigProductClasses3.hashCode(), xmlCdashigProductClasses4.hashCode());
    }
}
