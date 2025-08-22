@isTest
private class OASMdrSearchScopesGet200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = mdrSearchScopesGet200Response1;
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response3 = new OASMdrSearchScopesGet200Response();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response4 = mdrSearchScopesGet200Response3;

        System.assert(mdrSearchScopesGet200Response1.equals(mdrSearchScopesGet200Response2));
        System.assert(mdrSearchScopesGet200Response2.equals(mdrSearchScopesGet200Response1));
        System.assert(mdrSearchScopesGet200Response1.equals(mdrSearchScopesGet200Response1));
        System.assert(mdrSearchScopesGet200Response3.equals(mdrSearchScopesGet200Response4));
        System.assert(mdrSearchScopesGet200Response4.equals(mdrSearchScopesGet200Response3));
        System.assert(mdrSearchScopesGet200Response3.equals(mdrSearchScopesGet200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response3 = new OASMdrSearchScopesGet200Response();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response4 = new OASMdrSearchScopesGet200Response();

        System.assert(mdrSearchScopesGet200Response1.equals(mdrSearchScopesGet200Response2));
        System.assert(mdrSearchScopesGet200Response2.equals(mdrSearchScopesGet200Response1));
        System.assert(mdrSearchScopesGet200Response3.equals(mdrSearchScopesGet200Response4));
        System.assert(mdrSearchScopesGet200Response4.equals(mdrSearchScopesGet200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = new OASMdrSearchScopesGet200Response();

        System.assertEquals(false, mdrSearchScopesGet200Response1.equals('foo'));
        System.assertEquals(false, mdrSearchScopesGet200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = new OASMdrSearchScopesGet200Response();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response3;

        System.assertEquals(false, mdrSearchScopesGet200Response1.equals(mdrSearchScopesGet200Response3));
        System.assertEquals(false, mdrSearchScopesGet200Response2.equals(mdrSearchScopesGet200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = new OASMdrSearchScopesGet200Response();

        System.assertEquals(mdrSearchScopesGet200Response1.hashCode(), mdrSearchScopesGet200Response1.hashCode());
        System.assertEquals(mdrSearchScopesGet200Response2.hashCode(), mdrSearchScopesGet200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response1 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response2 = OASMdrSearchScopesGet200Response.getExample();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response3 = new OASMdrSearchScopesGet200Response();
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response4 = new OASMdrSearchScopesGet200Response();

        System.assert(mdrSearchScopesGet200Response1.equals(mdrSearchScopesGet200Response2));
        System.assert(mdrSearchScopesGet200Response3.equals(mdrSearchScopesGet200Response4));
        System.assertEquals(mdrSearchScopesGet200Response1.hashCode(), mdrSearchScopesGet200Response2.hashCode());
        System.assertEquals(mdrSearchScopesGet200Response3.hashCode(), mdrSearchScopesGet200Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASMdrSearchScopesGet200Response mdrSearchScopesGet200Response = new OASMdrSearchScopesGet200Response();
        System.assertEquals(new List<OASDefaultSearchScopes>(), mdrSearchScopesGet200Response.scopes);
    }
}
