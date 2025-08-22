@isTest
private class OASXmlCdashigProductScenariosTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = xmlCdashigProductScenarios1;
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios3 = new OASXmlCdashigProductScenarios();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios4 = xmlCdashigProductScenarios3;

        System.assert(xmlCdashigProductScenarios1.equals(xmlCdashigProductScenarios2));
        System.assert(xmlCdashigProductScenarios2.equals(xmlCdashigProductScenarios1));
        System.assert(xmlCdashigProductScenarios1.equals(xmlCdashigProductScenarios1));
        System.assert(xmlCdashigProductScenarios3.equals(xmlCdashigProductScenarios4));
        System.assert(xmlCdashigProductScenarios4.equals(xmlCdashigProductScenarios3));
        System.assert(xmlCdashigProductScenarios3.equals(xmlCdashigProductScenarios3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios3 = new OASXmlCdashigProductScenarios();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios4 = new OASXmlCdashigProductScenarios();

        System.assert(xmlCdashigProductScenarios1.equals(xmlCdashigProductScenarios2));
        System.assert(xmlCdashigProductScenarios2.equals(xmlCdashigProductScenarios1));
        System.assert(xmlCdashigProductScenarios3.equals(xmlCdashigProductScenarios4));
        System.assert(xmlCdashigProductScenarios4.equals(xmlCdashigProductScenarios3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = new OASXmlCdashigProductScenarios();

        System.assertEquals(false, xmlCdashigProductScenarios1.equals('foo'));
        System.assertEquals(false, xmlCdashigProductScenarios2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = new OASXmlCdashigProductScenarios();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios3;

        System.assertEquals(false, xmlCdashigProductScenarios1.equals(xmlCdashigProductScenarios3));
        System.assertEquals(false, xmlCdashigProductScenarios2.equals(xmlCdashigProductScenarios3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = new OASXmlCdashigProductScenarios();

        System.assertEquals(xmlCdashigProductScenarios1.hashCode(), xmlCdashigProductScenarios1.hashCode());
        System.assertEquals(xmlCdashigProductScenarios2.hashCode(), xmlCdashigProductScenarios2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios1 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios2 = OASXmlCdashigProductScenarios.getExample();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios3 = new OASXmlCdashigProductScenarios();
        OASXmlCdashigProductScenarios xmlCdashigProductScenarios4 = new OASXmlCdashigProductScenarios();

        System.assert(xmlCdashigProductScenarios1.equals(xmlCdashigProductScenarios2));
        System.assert(xmlCdashigProductScenarios3.equals(xmlCdashigProductScenarios4));
        System.assertEquals(xmlCdashigProductScenarios1.hashCode(), xmlCdashigProductScenarios2.hashCode());
        System.assertEquals(xmlCdashigProductScenarios3.hashCode(), xmlCdashigProductScenarios4.hashCode());
    }
}
