@isTest
private class OASDefaultSearchResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = defaultSearchResponse1;
        OASDefaultSearchResponse defaultSearchResponse3 = new OASDefaultSearchResponse();
        OASDefaultSearchResponse defaultSearchResponse4 = defaultSearchResponse3;

        System.assert(defaultSearchResponse1.equals(defaultSearchResponse2));
        System.assert(defaultSearchResponse2.equals(defaultSearchResponse1));
        System.assert(defaultSearchResponse1.equals(defaultSearchResponse1));
        System.assert(defaultSearchResponse3.equals(defaultSearchResponse4));
        System.assert(defaultSearchResponse4.equals(defaultSearchResponse3));
        System.assert(defaultSearchResponse3.equals(defaultSearchResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse3 = new OASDefaultSearchResponse();
        OASDefaultSearchResponse defaultSearchResponse4 = new OASDefaultSearchResponse();

        System.assert(defaultSearchResponse1.equals(defaultSearchResponse2));
        System.assert(defaultSearchResponse2.equals(defaultSearchResponse1));
        System.assert(defaultSearchResponse3.equals(defaultSearchResponse4));
        System.assert(defaultSearchResponse4.equals(defaultSearchResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = new OASDefaultSearchResponse();

        System.assertEquals(false, defaultSearchResponse1.equals('foo'));
        System.assertEquals(false, defaultSearchResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = new OASDefaultSearchResponse();
        OASDefaultSearchResponse defaultSearchResponse3;

        System.assertEquals(false, defaultSearchResponse1.equals(defaultSearchResponse3));
        System.assertEquals(false, defaultSearchResponse2.equals(defaultSearchResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = new OASDefaultSearchResponse();

        System.assertEquals(defaultSearchResponse1.hashCode(), defaultSearchResponse1.hashCode());
        System.assertEquals(defaultSearchResponse2.hashCode(), defaultSearchResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultSearchResponse defaultSearchResponse1 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse2 = OASDefaultSearchResponse.getExample();
        OASDefaultSearchResponse defaultSearchResponse3 = new OASDefaultSearchResponse();
        OASDefaultSearchResponse defaultSearchResponse4 = new OASDefaultSearchResponse();

        System.assert(defaultSearchResponse1.equals(defaultSearchResponse2));
        System.assert(defaultSearchResponse3.equals(defaultSearchResponse4));
        System.assertEquals(defaultSearchResponse1.hashCode(), defaultSearchResponse2.hashCode());
        System.assertEquals(defaultSearchResponse3.hashCode(), defaultSearchResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDefaultSearchResponse defaultSearchResponse = new OASDefaultSearchResponse();
        System.assertEquals(new List<OASDefaultSearchResponseHitsInner>(), defaultSearchResponse.hits);
        System.assertEquals(null, defaultSearchResponse.totalHits);
    }
}
