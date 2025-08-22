@isTest
private class OASXmlCdashProductClassesTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = xmlCdashProductClasses1;
        OASXmlCdashProductClasses xmlCdashProductClasses3 = new OASXmlCdashProductClasses();
        OASXmlCdashProductClasses xmlCdashProductClasses4 = xmlCdashProductClasses3;

        System.assert(xmlCdashProductClasses1.equals(xmlCdashProductClasses2));
        System.assert(xmlCdashProductClasses2.equals(xmlCdashProductClasses1));
        System.assert(xmlCdashProductClasses1.equals(xmlCdashProductClasses1));
        System.assert(xmlCdashProductClasses3.equals(xmlCdashProductClasses4));
        System.assert(xmlCdashProductClasses4.equals(xmlCdashProductClasses3));
        System.assert(xmlCdashProductClasses3.equals(xmlCdashProductClasses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses3 = new OASXmlCdashProductClasses();
        OASXmlCdashProductClasses xmlCdashProductClasses4 = new OASXmlCdashProductClasses();

        System.assert(xmlCdashProductClasses1.equals(xmlCdashProductClasses2));
        System.assert(xmlCdashProductClasses2.equals(xmlCdashProductClasses1));
        System.assert(xmlCdashProductClasses3.equals(xmlCdashProductClasses4));
        System.assert(xmlCdashProductClasses4.equals(xmlCdashProductClasses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = new OASXmlCdashProductClasses();

        System.assertEquals(false, xmlCdashProductClasses1.equals('foo'));
        System.assertEquals(false, xmlCdashProductClasses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = new OASXmlCdashProductClasses();
        OASXmlCdashProductClasses xmlCdashProductClasses3;

        System.assertEquals(false, xmlCdashProductClasses1.equals(xmlCdashProductClasses3));
        System.assertEquals(false, xmlCdashProductClasses2.equals(xmlCdashProductClasses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = new OASXmlCdashProductClasses();

        System.assertEquals(xmlCdashProductClasses1.hashCode(), xmlCdashProductClasses1.hashCode());
        System.assertEquals(xmlCdashProductClasses2.hashCode(), xmlCdashProductClasses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashProductClasses xmlCdashProductClasses1 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses2 = OASXmlCdashProductClasses.getExample();
        OASXmlCdashProductClasses xmlCdashProductClasses3 = new OASXmlCdashProductClasses();
        OASXmlCdashProductClasses xmlCdashProductClasses4 = new OASXmlCdashProductClasses();

        System.assert(xmlCdashProductClasses1.equals(xmlCdashProductClasses2));
        System.assert(xmlCdashProductClasses3.equals(xmlCdashProductClasses4));
        System.assertEquals(xmlCdashProductClasses1.hashCode(), xmlCdashProductClasses2.hashCode());
        System.assertEquals(xmlCdashProductClasses3.hashCode(), xmlCdashProductClasses4.hashCode());
    }
}
