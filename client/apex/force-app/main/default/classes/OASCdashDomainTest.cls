@isTest
private class OASCdashDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = cdashDomain1;
        OASCdashDomain cdashDomain3 = new OASCdashDomain();
        OASCdashDomain cdashDomain4 = cdashDomain3;

        System.assert(cdashDomain1.equals(cdashDomain2));
        System.assert(cdashDomain2.equals(cdashDomain1));
        System.assert(cdashDomain1.equals(cdashDomain1));
        System.assert(cdashDomain3.equals(cdashDomain4));
        System.assert(cdashDomain4.equals(cdashDomain3));
        System.assert(cdashDomain3.equals(cdashDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain3 = new OASCdashDomain();
        OASCdashDomain cdashDomain4 = new OASCdashDomain();

        System.assert(cdashDomain1.equals(cdashDomain2));
        System.assert(cdashDomain2.equals(cdashDomain1));
        System.assert(cdashDomain3.equals(cdashDomain4));
        System.assert(cdashDomain4.equals(cdashDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = new OASCdashDomain();

        System.assertEquals(false, cdashDomain1.equals('foo'));
        System.assertEquals(false, cdashDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = new OASCdashDomain();
        OASCdashDomain cdashDomain3;

        System.assertEquals(false, cdashDomain1.equals(cdashDomain3));
        System.assertEquals(false, cdashDomain2.equals(cdashDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = new OASCdashDomain();

        System.assertEquals(cdashDomain1.hashCode(), cdashDomain1.hashCode());
        System.assertEquals(cdashDomain2.hashCode(), cdashDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomain cdashDomain1 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain2 = OASCdashDomain.getExample();
        OASCdashDomain cdashDomain3 = new OASCdashDomain();
        OASCdashDomain cdashDomain4 = new OASCdashDomain();

        System.assert(cdashDomain1.equals(cdashDomain2));
        System.assert(cdashDomain3.equals(cdashDomain4));
        System.assertEquals(cdashDomain1.hashCode(), cdashDomain2.hashCode());
        System.assertEquals(cdashDomain3.hashCode(), cdashDomain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashDomain cdashDomain = new OASCdashDomain();
        Map<String, String> x-property-mappings = cdashDomain.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashDomain cdashDomain = new OASCdashDomain();
        System.assertEquals(new List<OASCdashDomainField>(), cdashDomain.fields);
        System.assertEquals(null, cdashDomain.ordinal);
        System.assertEquals(null, cdashDomain.name);
        System.assertEquals(null, cdashDomain.label);
        System.assertEquals(null, cdashDomain.links);
    }
}
