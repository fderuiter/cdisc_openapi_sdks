@isTest
private class OASCdashClassTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = cdashClass1;
        OASCdashClass cdashClass3 = new OASCdashClass();
        OASCdashClass cdashClass4 = cdashClass3;

        System.assert(cdashClass1.equals(cdashClass2));
        System.assert(cdashClass2.equals(cdashClass1));
        System.assert(cdashClass1.equals(cdashClass1));
        System.assert(cdashClass3.equals(cdashClass4));
        System.assert(cdashClass4.equals(cdashClass3));
        System.assert(cdashClass3.equals(cdashClass3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = OASCdashClass.getExample();
        OASCdashClass cdashClass3 = new OASCdashClass();
        OASCdashClass cdashClass4 = new OASCdashClass();

        System.assert(cdashClass1.equals(cdashClass2));
        System.assert(cdashClass2.equals(cdashClass1));
        System.assert(cdashClass3.equals(cdashClass4));
        System.assert(cdashClass4.equals(cdashClass3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = new OASCdashClass();

        System.assertEquals(false, cdashClass1.equals('foo'));
        System.assertEquals(false, cdashClass2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = new OASCdashClass();
        OASCdashClass cdashClass3;

        System.assertEquals(false, cdashClass1.equals(cdashClass3));
        System.assertEquals(false, cdashClass2.equals(cdashClass3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = new OASCdashClass();

        System.assertEquals(cdashClass1.hashCode(), cdashClass1.hashCode());
        System.assertEquals(cdashClass2.hashCode(), cdashClass2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClass cdashClass1 = OASCdashClass.getExample();
        OASCdashClass cdashClass2 = OASCdashClass.getExample();
        OASCdashClass cdashClass3 = new OASCdashClass();
        OASCdashClass cdashClass4 = new OASCdashClass();

        System.assert(cdashClass1.equals(cdashClass2));
        System.assert(cdashClass3.equals(cdashClass4));
        System.assertEquals(cdashClass1.hashCode(), cdashClass2.hashCode());
        System.assertEquals(cdashClass3.hashCode(), cdashClass4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashClass cdashClass = new OASCdashClass();
        Map<String, String> x-property-mappings = cdashClass.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashClass cdashClass = new OASCdashClass();
        System.assertEquals(new List<OASCdashClassField>(), cdashClass.cdashModelFields);
        System.assertEquals(null, cdashClass.ordinal);
        System.assertEquals(null, cdashClass.name);
        System.assertEquals(null, cdashClass.label);
        System.assertEquals(null, cdashClass.description);
        System.assertEquals(null, cdashClass.links);
    }
}
