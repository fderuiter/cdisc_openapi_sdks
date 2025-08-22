@isTest
private class OASMaintenanceBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = maintenanceBody1;
        OASMaintenanceBody maintenanceBody3 = new OASMaintenanceBody();
        OASMaintenanceBody maintenanceBody4 = maintenanceBody3;

        System.assert(maintenanceBody1.equals(maintenanceBody2));
        System.assert(maintenanceBody2.equals(maintenanceBody1));
        System.assert(maintenanceBody1.equals(maintenanceBody1));
        System.assert(maintenanceBody3.equals(maintenanceBody4));
        System.assert(maintenanceBody4.equals(maintenanceBody3));
        System.assert(maintenanceBody3.equals(maintenanceBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody3 = new OASMaintenanceBody();
        OASMaintenanceBody maintenanceBody4 = new OASMaintenanceBody();

        System.assert(maintenanceBody1.equals(maintenanceBody2));
        System.assert(maintenanceBody2.equals(maintenanceBody1));
        System.assert(maintenanceBody3.equals(maintenanceBody4));
        System.assert(maintenanceBody4.equals(maintenanceBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = new OASMaintenanceBody();

        System.assertEquals(false, maintenanceBody1.equals('foo'));
        System.assertEquals(false, maintenanceBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = new OASMaintenanceBody();
        OASMaintenanceBody maintenanceBody3;

        System.assertEquals(false, maintenanceBody1.equals(maintenanceBody3));
        System.assertEquals(false, maintenanceBody2.equals(maintenanceBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = new OASMaintenanceBody();

        System.assertEquals(maintenanceBody1.hashCode(), maintenanceBody1.hashCode());
        System.assertEquals(maintenanceBody2.hashCode(), maintenanceBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMaintenanceBody maintenanceBody1 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody2 = OASMaintenanceBody.getExample();
        OASMaintenanceBody maintenanceBody3 = new OASMaintenanceBody();
        OASMaintenanceBody maintenanceBody4 = new OASMaintenanceBody();

        System.assert(maintenanceBody1.equals(maintenanceBody2));
        System.assert(maintenanceBody3.equals(maintenanceBody4));
        System.assertEquals(maintenanceBody1.hashCode(), maintenanceBody2.hashCode());
        System.assertEquals(maintenanceBody3.hashCode(), maintenanceBody4.hashCode());
    }
}
