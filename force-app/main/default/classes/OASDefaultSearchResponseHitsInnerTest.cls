@isTest
private class OASDefaultSearchResponseHitsInnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = defaultSearchResponseHitsInner1;
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner3 = new OASDefaultSearchResponseHitsInner();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner4 = defaultSearchResponseHitsInner3;

        System.assert(defaultSearchResponseHitsInner1.equals(defaultSearchResponseHitsInner2));
        System.assert(defaultSearchResponseHitsInner2.equals(defaultSearchResponseHitsInner1));
        System.assert(defaultSearchResponseHitsInner1.equals(defaultSearchResponseHitsInner1));
        System.assert(defaultSearchResponseHitsInner3.equals(defaultSearchResponseHitsInner4));
        System.assert(defaultSearchResponseHitsInner4.equals(defaultSearchResponseHitsInner3));
        System.assert(defaultSearchResponseHitsInner3.equals(defaultSearchResponseHitsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner3 = new OASDefaultSearchResponseHitsInner();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner4 = new OASDefaultSearchResponseHitsInner();

        System.assert(defaultSearchResponseHitsInner1.equals(defaultSearchResponseHitsInner2));
        System.assert(defaultSearchResponseHitsInner2.equals(defaultSearchResponseHitsInner1));
        System.assert(defaultSearchResponseHitsInner3.equals(defaultSearchResponseHitsInner4));
        System.assert(defaultSearchResponseHitsInner4.equals(defaultSearchResponseHitsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = new OASDefaultSearchResponseHitsInner();

        System.assertEquals(false, defaultSearchResponseHitsInner1.equals('foo'));
        System.assertEquals(false, defaultSearchResponseHitsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = new OASDefaultSearchResponseHitsInner();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner3;

        System.assertEquals(false, defaultSearchResponseHitsInner1.equals(defaultSearchResponseHitsInner3));
        System.assertEquals(false, defaultSearchResponseHitsInner2.equals(defaultSearchResponseHitsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = new OASDefaultSearchResponseHitsInner();

        System.assertEquals(defaultSearchResponseHitsInner1.hashCode(), defaultSearchResponseHitsInner1.hashCode());
        System.assertEquals(defaultSearchResponseHitsInner2.hashCode(), defaultSearchResponseHitsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner1 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner2 = OASDefaultSearchResponseHitsInner.getExample();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner3 = new OASDefaultSearchResponseHitsInner();
        OASDefaultSearchResponseHitsInner defaultSearchResponseHitsInner4 = new OASDefaultSearchResponseHitsInner();

        System.assert(defaultSearchResponseHitsInner1.equals(defaultSearchResponseHitsInner2));
        System.assert(defaultSearchResponseHitsInner3.equals(defaultSearchResponseHitsInner4));
        System.assertEquals(defaultSearchResponseHitsInner1.hashCode(), defaultSearchResponseHitsInner2.hashCode());
        System.assertEquals(defaultSearchResponseHitsInner3.hashCode(), defaultSearchResponseHitsInner4.hashCode());
    }
}
