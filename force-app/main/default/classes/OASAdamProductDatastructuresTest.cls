@isTest
private class OASAdamProductDatastructuresTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = adamProductDatastructures1;
        OASAdamProductDatastructures adamProductDatastructures3 = new OASAdamProductDatastructures();
        OASAdamProductDatastructures adamProductDatastructures4 = adamProductDatastructures3;

        System.assert(adamProductDatastructures1.equals(adamProductDatastructures2));
        System.assert(adamProductDatastructures2.equals(adamProductDatastructures1));
        System.assert(adamProductDatastructures1.equals(adamProductDatastructures1));
        System.assert(adamProductDatastructures3.equals(adamProductDatastructures4));
        System.assert(adamProductDatastructures4.equals(adamProductDatastructures3));
        System.assert(adamProductDatastructures3.equals(adamProductDatastructures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures3 = new OASAdamProductDatastructures();
        OASAdamProductDatastructures adamProductDatastructures4 = new OASAdamProductDatastructures();

        System.assert(adamProductDatastructures1.equals(adamProductDatastructures2));
        System.assert(adamProductDatastructures2.equals(adamProductDatastructures1));
        System.assert(adamProductDatastructures3.equals(adamProductDatastructures4));
        System.assert(adamProductDatastructures4.equals(adamProductDatastructures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = new OASAdamProductDatastructures();

        System.assertEquals(false, adamProductDatastructures1.equals('foo'));
        System.assertEquals(false, adamProductDatastructures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = new OASAdamProductDatastructures();
        OASAdamProductDatastructures adamProductDatastructures3;

        System.assertEquals(false, adamProductDatastructures1.equals(adamProductDatastructures3));
        System.assertEquals(false, adamProductDatastructures2.equals(adamProductDatastructures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = new OASAdamProductDatastructures();

        System.assertEquals(adamProductDatastructures1.hashCode(), adamProductDatastructures1.hashCode());
        System.assertEquals(adamProductDatastructures2.hashCode(), adamProductDatastructures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductDatastructures adamProductDatastructures1 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures2 = OASAdamProductDatastructures.getExample();
        OASAdamProductDatastructures adamProductDatastructures3 = new OASAdamProductDatastructures();
        OASAdamProductDatastructures adamProductDatastructures4 = new OASAdamProductDatastructures();

        System.assert(adamProductDatastructures1.equals(adamProductDatastructures2));
        System.assert(adamProductDatastructures3.equals(adamProductDatastructures4));
        System.assertEquals(adamProductDatastructures1.hashCode(), adamProductDatastructures2.hashCode());
        System.assertEquals(adamProductDatastructures3.hashCode(), adamProductDatastructures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamProductDatastructures adamProductDatastructures = new OASAdamProductDatastructures();
        Map<String, String> x-property-mappings = adamProductDatastructures.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
