@isTest
private class OASXmlCtCodelistTermsTest {
    @isTest
    private static void equalsSameInstance() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = xmlCtCodelistTerms1;
        OASXmlCtCodelistTerms xmlCtCodelistTerms3 = new OASXmlCtCodelistTerms();
        OASXmlCtCodelistTerms xmlCtCodelistTerms4 = xmlCtCodelistTerms3;

        System.assert(xmlCtCodelistTerms1.equals(xmlCtCodelistTerms2));
        System.assert(xmlCtCodelistTerms2.equals(xmlCtCodelistTerms1));
        System.assert(xmlCtCodelistTerms1.equals(xmlCtCodelistTerms1));
        System.assert(xmlCtCodelistTerms3.equals(xmlCtCodelistTerms4));
        System.assert(xmlCtCodelistTerms4.equals(xmlCtCodelistTerms3));
        System.assert(xmlCtCodelistTerms3.equals(xmlCtCodelistTerms3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms3 = new OASXmlCtCodelistTerms();
        OASXmlCtCodelistTerms xmlCtCodelistTerms4 = new OASXmlCtCodelistTerms();

        System.assert(xmlCtCodelistTerms1.equals(xmlCtCodelistTerms2));
        System.assert(xmlCtCodelistTerms2.equals(xmlCtCodelistTerms1));
        System.assert(xmlCtCodelistTerms3.equals(xmlCtCodelistTerms4));
        System.assert(xmlCtCodelistTerms4.equals(xmlCtCodelistTerms3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = new OASXmlCtCodelistTerms();

        System.assertEquals(false, xmlCtCodelistTerms1.equals('foo'));
        System.assertEquals(false, xmlCtCodelistTerms2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = new OASXmlCtCodelistTerms();
        OASXmlCtCodelistTerms xmlCtCodelistTerms3;

        System.assertEquals(false, xmlCtCodelistTerms1.equals(xmlCtCodelistTerms3));
        System.assertEquals(false, xmlCtCodelistTerms2.equals(xmlCtCodelistTerms3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = new OASXmlCtCodelistTerms();

        System.assertEquals(xmlCtCodelistTerms1.hashCode(), xmlCtCodelistTerms1.hashCode());
        System.assertEquals(xmlCtCodelistTerms2.hashCode(), xmlCtCodelistTerms2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASXmlCtCodelistTerms xmlCtCodelistTerms1 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms2 = OASXmlCtCodelistTerms.getExample();
        OASXmlCtCodelistTerms xmlCtCodelistTerms3 = new OASXmlCtCodelistTerms();
        OASXmlCtCodelistTerms xmlCtCodelistTerms4 = new OASXmlCtCodelistTerms();

        System.assert(xmlCtCodelistTerms1.equals(xmlCtCodelistTerms2));
        System.assert(xmlCtCodelistTerms3.equals(xmlCtCodelistTerms4));
        System.assertEquals(xmlCtCodelistTerms1.hashCode(), xmlCtCodelistTerms2.hashCode());
        System.assertEquals(xmlCtCodelistTerms3.hashCode(), xmlCtCodelistTerms4.hashCode());
    }
}
