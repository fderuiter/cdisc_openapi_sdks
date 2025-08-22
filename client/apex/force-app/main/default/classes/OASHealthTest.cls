@isTest
private class OASHealthTest {
    @isTest
    private static void equalsSameInstance() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = health1;
        OASHealth health3 = new OASHealth();
        OASHealth health4 = health3;

        System.assert(health1.equals(health2));
        System.assert(health2.equals(health1));
        System.assert(health1.equals(health1));
        System.assert(health3.equals(health4));
        System.assert(health4.equals(health3));
        System.assert(health3.equals(health3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = OASHealth.getExample();
        OASHealth health3 = new OASHealth();
        OASHealth health4 = new OASHealth();

        System.assert(health1.equals(health2));
        System.assert(health2.equals(health1));
        System.assert(health3.equals(health4));
        System.assert(health4.equals(health3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = new OASHealth();

        System.assertEquals(false, health1.equals('foo'));
        System.assertEquals(false, health2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = new OASHealth();
        OASHealth health3;

        System.assertEquals(false, health1.equals(health3));
        System.assertEquals(false, health2.equals(health3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = new OASHealth();

        System.assertEquals(health1.hashCode(), health1.hashCode());
        System.assertEquals(health2.hashCode(), health2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHealth health1 = OASHealth.getExample();
        OASHealth health2 = OASHealth.getExample();
        OASHealth health3 = new OASHealth();
        OASHealth health4 = new OASHealth();

        System.assert(health1.equals(health2));
        System.assert(health3.equals(health4));
        System.assertEquals(health1.hashCode(), health2.hashCode());
        System.assertEquals(health3.hashCode(), health4.hashCode());
    }
}
