@isTest
private class OASXmlCdashigScenarioTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = xmlCdashigScenario1;
        OASXmlCdashigScenario xmlCdashigScenario3 = new OASXmlCdashigScenario();
        OASXmlCdashigScenario xmlCdashigScenario4 = xmlCdashigScenario3;

        System.assert(xmlCdashigScenario1.equals(xmlCdashigScenario2));
        System.assert(xmlCdashigScenario2.equals(xmlCdashigScenario1));
        System.assert(xmlCdashigScenario1.equals(xmlCdashigScenario1));
        System.assert(xmlCdashigScenario3.equals(xmlCdashigScenario4));
        System.assert(xmlCdashigScenario4.equals(xmlCdashigScenario3));
        System.assert(xmlCdashigScenario3.equals(xmlCdashigScenario3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario3 = new OASXmlCdashigScenario();
        OASXmlCdashigScenario xmlCdashigScenario4 = new OASXmlCdashigScenario();

        System.assert(xmlCdashigScenario1.equals(xmlCdashigScenario2));
        System.assert(xmlCdashigScenario2.equals(xmlCdashigScenario1));
        System.assert(xmlCdashigScenario3.equals(xmlCdashigScenario4));
        System.assert(xmlCdashigScenario4.equals(xmlCdashigScenario3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = new OASXmlCdashigScenario();

        System.assertEquals(false, xmlCdashigScenario1.equals('foo'));
        System.assertEquals(false, xmlCdashigScenario2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = new OASXmlCdashigScenario();
        OASXmlCdashigScenario xmlCdashigScenario3;

        System.assertEquals(false, xmlCdashigScenario1.equals(xmlCdashigScenario3));
        System.assertEquals(false, xmlCdashigScenario2.equals(xmlCdashigScenario3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = new OASXmlCdashigScenario();

        System.assertEquals(xmlCdashigScenario1.hashCode(), xmlCdashigScenario1.hashCode());
        System.assertEquals(xmlCdashigScenario2.hashCode(), xmlCdashigScenario2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigScenario xmlCdashigScenario1 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario2 = OASXmlCdashigScenario.getExample();
        OASXmlCdashigScenario xmlCdashigScenario3 = new OASXmlCdashigScenario();
        OASXmlCdashigScenario xmlCdashigScenario4 = new OASXmlCdashigScenario();

        System.assert(xmlCdashigScenario1.equals(xmlCdashigScenario2));
        System.assert(xmlCdashigScenario3.equals(xmlCdashigScenario4));
        System.assertEquals(xmlCdashigScenario1.hashCode(), xmlCdashigScenario2.hashCode());
        System.assertEquals(xmlCdashigScenario3.hashCode(), xmlCdashigScenario4.hashCode());
    }
}
