@isTest
private class OASDefaultErrorResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = defaultErrorResponse1;
        OASDefaultErrorResponse defaultErrorResponse3 = new OASDefaultErrorResponse();
        OASDefaultErrorResponse defaultErrorResponse4 = defaultErrorResponse3;

        System.assert(defaultErrorResponse1.equals(defaultErrorResponse2));
        System.assert(defaultErrorResponse2.equals(defaultErrorResponse1));
        System.assert(defaultErrorResponse1.equals(defaultErrorResponse1));
        System.assert(defaultErrorResponse3.equals(defaultErrorResponse4));
        System.assert(defaultErrorResponse4.equals(defaultErrorResponse3));
        System.assert(defaultErrorResponse3.equals(defaultErrorResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse3 = new OASDefaultErrorResponse();
        OASDefaultErrorResponse defaultErrorResponse4 = new OASDefaultErrorResponse();

        System.assert(defaultErrorResponse1.equals(defaultErrorResponse2));
        System.assert(defaultErrorResponse2.equals(defaultErrorResponse1));
        System.assert(defaultErrorResponse3.equals(defaultErrorResponse4));
        System.assert(defaultErrorResponse4.equals(defaultErrorResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = new OASDefaultErrorResponse();

        System.assertEquals(false, defaultErrorResponse1.equals('foo'));
        System.assertEquals(false, defaultErrorResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = new OASDefaultErrorResponse();
        OASDefaultErrorResponse defaultErrorResponse3;

        System.assertEquals(false, defaultErrorResponse1.equals(defaultErrorResponse3));
        System.assertEquals(false, defaultErrorResponse2.equals(defaultErrorResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = new OASDefaultErrorResponse();

        System.assertEquals(defaultErrorResponse1.hashCode(), defaultErrorResponse1.hashCode());
        System.assertEquals(defaultErrorResponse2.hashCode(), defaultErrorResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultErrorResponse defaultErrorResponse1 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse2 = OASDefaultErrorResponse.getExample();
        OASDefaultErrorResponse defaultErrorResponse3 = new OASDefaultErrorResponse();
        OASDefaultErrorResponse defaultErrorResponse4 = new OASDefaultErrorResponse();

        System.assert(defaultErrorResponse1.equals(defaultErrorResponse2));
        System.assert(defaultErrorResponse3.equals(defaultErrorResponse4));
        System.assertEquals(defaultErrorResponse1.hashCode(), defaultErrorResponse2.hashCode());
        System.assertEquals(defaultErrorResponse3.hashCode(), defaultErrorResponse4.hashCode());
    }
}
