@isTest
private class OASProductgroupTerminologyTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = productgroupTerminology1;
        OASProductgroupTerminology productgroupTerminology3 = new OASProductgroupTerminology();
        OASProductgroupTerminology productgroupTerminology4 = productgroupTerminology3;

        System.assert(productgroupTerminology1.equals(productgroupTerminology2));
        System.assert(productgroupTerminology2.equals(productgroupTerminology1));
        System.assert(productgroupTerminology1.equals(productgroupTerminology1));
        System.assert(productgroupTerminology3.equals(productgroupTerminology4));
        System.assert(productgroupTerminology4.equals(productgroupTerminology3));
        System.assert(productgroupTerminology3.equals(productgroupTerminology3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology3 = new OASProductgroupTerminology();
        OASProductgroupTerminology productgroupTerminology4 = new OASProductgroupTerminology();

        System.assert(productgroupTerminology1.equals(productgroupTerminology2));
        System.assert(productgroupTerminology2.equals(productgroupTerminology1));
        System.assert(productgroupTerminology3.equals(productgroupTerminology4));
        System.assert(productgroupTerminology4.equals(productgroupTerminology3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = new OASProductgroupTerminology();

        System.assertEquals(false, productgroupTerminology1.equals('foo'));
        System.assertEquals(false, productgroupTerminology2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = new OASProductgroupTerminology();
        OASProductgroupTerminology productgroupTerminology3;

        System.assertEquals(false, productgroupTerminology1.equals(productgroupTerminology3));
        System.assertEquals(false, productgroupTerminology2.equals(productgroupTerminology3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = new OASProductgroupTerminology();

        System.assertEquals(productgroupTerminology1.hashCode(), productgroupTerminology1.hashCode());
        System.assertEquals(productgroupTerminology2.hashCode(), productgroupTerminology2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductgroupTerminology productgroupTerminology1 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology2 = OASProductgroupTerminology.getExample();
        OASProductgroupTerminology productgroupTerminology3 = new OASProductgroupTerminology();
        OASProductgroupTerminology productgroupTerminology4 = new OASProductgroupTerminology();

        System.assert(productgroupTerminology1.equals(productgroupTerminology2));
        System.assert(productgroupTerminology3.equals(productgroupTerminology4));
        System.assertEquals(productgroupTerminology1.hashCode(), productgroupTerminology2.hashCode());
        System.assertEquals(productgroupTerminology3.hashCode(), productgroupTerminology4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductgroupTerminology productgroupTerminology = new OASProductgroupTerminology();
        Map<String, String> x-property-mappings = productgroupTerminology.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
