@isTest
private class OASCdashigDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = cdashigDomain1;
        OASCdashigDomain cdashigDomain3 = new OASCdashigDomain();
        OASCdashigDomain cdashigDomain4 = cdashigDomain3;

        System.assert(cdashigDomain1.equals(cdashigDomain2));
        System.assert(cdashigDomain2.equals(cdashigDomain1));
        System.assert(cdashigDomain1.equals(cdashigDomain1));
        System.assert(cdashigDomain3.equals(cdashigDomain4));
        System.assert(cdashigDomain4.equals(cdashigDomain3));
        System.assert(cdashigDomain3.equals(cdashigDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain3 = new OASCdashigDomain();
        OASCdashigDomain cdashigDomain4 = new OASCdashigDomain();

        System.assert(cdashigDomain1.equals(cdashigDomain2));
        System.assert(cdashigDomain2.equals(cdashigDomain1));
        System.assert(cdashigDomain3.equals(cdashigDomain4));
        System.assert(cdashigDomain4.equals(cdashigDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = new OASCdashigDomain();

        System.assertEquals(false, cdashigDomain1.equals('foo'));
        System.assertEquals(false, cdashigDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = new OASCdashigDomain();
        OASCdashigDomain cdashigDomain3;

        System.assertEquals(false, cdashigDomain1.equals(cdashigDomain3));
        System.assertEquals(false, cdashigDomain2.equals(cdashigDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = new OASCdashigDomain();

        System.assertEquals(cdashigDomain1.hashCode(), cdashigDomain1.hashCode());
        System.assertEquals(cdashigDomain2.hashCode(), cdashigDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomain cdashigDomain1 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain2 = OASCdashigDomain.getExample();
        OASCdashigDomain cdashigDomain3 = new OASCdashigDomain();
        OASCdashigDomain cdashigDomain4 = new OASCdashigDomain();

        System.assert(cdashigDomain1.equals(cdashigDomain2));
        System.assert(cdashigDomain3.equals(cdashigDomain4));
        System.assertEquals(cdashigDomain1.hashCode(), cdashigDomain2.hashCode());
        System.assertEquals(cdashigDomain3.hashCode(), cdashigDomain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCdashigDomain cdashigDomain = new OASCdashigDomain();
        Map<String, String> x-property-mappings = cdashigDomain.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigDomain cdashigDomain = new OASCdashigDomain();
        System.assertEquals(new List<OASCdashigDomainField>(), cdashigDomain.fields);
        System.assertEquals(null, cdashigDomain.ordinal);
        System.assertEquals(null, cdashigDomain.name);
        System.assertEquals(null, cdashigDomain.label);
        System.assertEquals(null, cdashigDomain.links);
    }
}
