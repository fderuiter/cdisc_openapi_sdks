@isTest
private class OASXmlCdashigClassScenariosTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = xmlCdashigClassScenarios1;
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios3 = new OASXmlCdashigClassScenarios();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios4 = xmlCdashigClassScenarios3;

        System.assert(xmlCdashigClassScenarios1.equals(xmlCdashigClassScenarios2));
        System.assert(xmlCdashigClassScenarios2.equals(xmlCdashigClassScenarios1));
        System.assert(xmlCdashigClassScenarios1.equals(xmlCdashigClassScenarios1));
        System.assert(xmlCdashigClassScenarios3.equals(xmlCdashigClassScenarios4));
        System.assert(xmlCdashigClassScenarios4.equals(xmlCdashigClassScenarios3));
        System.assert(xmlCdashigClassScenarios3.equals(xmlCdashigClassScenarios3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios3 = new OASXmlCdashigClassScenarios();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios4 = new OASXmlCdashigClassScenarios();

        System.assert(xmlCdashigClassScenarios1.equals(xmlCdashigClassScenarios2));
        System.assert(xmlCdashigClassScenarios2.equals(xmlCdashigClassScenarios1));
        System.assert(xmlCdashigClassScenarios3.equals(xmlCdashigClassScenarios4));
        System.assert(xmlCdashigClassScenarios4.equals(xmlCdashigClassScenarios3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = new OASXmlCdashigClassScenarios();

        System.assertEquals(false, xmlCdashigClassScenarios1.equals('foo'));
        System.assertEquals(false, xmlCdashigClassScenarios2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = new OASXmlCdashigClassScenarios();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios3;

        System.assertEquals(false, xmlCdashigClassScenarios1.equals(xmlCdashigClassScenarios3));
        System.assertEquals(false, xmlCdashigClassScenarios2.equals(xmlCdashigClassScenarios3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = new OASXmlCdashigClassScenarios();

        System.assertEquals(xmlCdashigClassScenarios1.hashCode(), xmlCdashigClassScenarios1.hashCode());
        System.assertEquals(xmlCdashigClassScenarios2.hashCode(), xmlCdashigClassScenarios2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios1 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios2 = OASXmlCdashigClassScenarios.getExample();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios3 = new OASXmlCdashigClassScenarios();
        OASXmlCdashigClassScenarios xmlCdashigClassScenarios4 = new OASXmlCdashigClassScenarios();

        System.assert(xmlCdashigClassScenarios1.equals(xmlCdashigClassScenarios2));
        System.assert(xmlCdashigClassScenarios3.equals(xmlCdashigClassScenarios4));
        System.assertEquals(xmlCdashigClassScenarios1.hashCode(), xmlCdashigClassScenarios2.hashCode());
        System.assertEquals(xmlCdashigClassScenarios3.hashCode(), xmlCdashigClassScenarios4.hashCode());
    }
}
