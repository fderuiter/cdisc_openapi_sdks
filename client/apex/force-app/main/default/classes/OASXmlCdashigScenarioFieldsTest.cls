@isTest
private class OASXmlCdashigScenarioFieldsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = xmlCdashigScenarioFields1;
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields3 = new OASXmlCdashigScenarioFields();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields4 = xmlCdashigScenarioFields3;

        System.assert(xmlCdashigScenarioFields1.equals(xmlCdashigScenarioFields2));
        System.assert(xmlCdashigScenarioFields2.equals(xmlCdashigScenarioFields1));
        System.assert(xmlCdashigScenarioFields1.equals(xmlCdashigScenarioFields1));
        System.assert(xmlCdashigScenarioFields3.equals(xmlCdashigScenarioFields4));
        System.assert(xmlCdashigScenarioFields4.equals(xmlCdashigScenarioFields3));
        System.assert(xmlCdashigScenarioFields3.equals(xmlCdashigScenarioFields3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields3 = new OASXmlCdashigScenarioFields();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields4 = new OASXmlCdashigScenarioFields();

        System.assert(xmlCdashigScenarioFields1.equals(xmlCdashigScenarioFields2));
        System.assert(xmlCdashigScenarioFields2.equals(xmlCdashigScenarioFields1));
        System.assert(xmlCdashigScenarioFields3.equals(xmlCdashigScenarioFields4));
        System.assert(xmlCdashigScenarioFields4.equals(xmlCdashigScenarioFields3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = new OASXmlCdashigScenarioFields();

        System.assertEquals(false, xmlCdashigScenarioFields1.equals('foo'));
        System.assertEquals(false, xmlCdashigScenarioFields2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = new OASXmlCdashigScenarioFields();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields3;

        System.assertEquals(false, xmlCdashigScenarioFields1.equals(xmlCdashigScenarioFields3));
        System.assertEquals(false, xmlCdashigScenarioFields2.equals(xmlCdashigScenarioFields3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = new OASXmlCdashigScenarioFields();

        System.assertEquals(xmlCdashigScenarioFields1.hashCode(), xmlCdashigScenarioFields1.hashCode());
        System.assertEquals(xmlCdashigScenarioFields2.hashCode(), xmlCdashigScenarioFields2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields1 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields2 = OASXmlCdashigScenarioFields.getExample();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields3 = new OASXmlCdashigScenarioFields();
        OASXmlCdashigScenarioFields xmlCdashigScenarioFields4 = new OASXmlCdashigScenarioFields();

        System.assert(xmlCdashigScenarioFields1.equals(xmlCdashigScenarioFields2));
        System.assert(xmlCdashigScenarioFields3.equals(xmlCdashigScenarioFields4));
        System.assertEquals(xmlCdashigScenarioFields1.hashCode(), xmlCdashigScenarioFields2.hashCode());
        System.assertEquals(xmlCdashigScenarioFields3.hashCode(), xmlCdashigScenarioFields4.hashCode());
    }
}
