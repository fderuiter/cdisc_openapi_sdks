@isTest
private class OASSdtmDatasetVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = sdtmDatasetVariables1;
        OASSdtmDatasetVariables sdtmDatasetVariables3 = new OASSdtmDatasetVariables();
        OASSdtmDatasetVariables sdtmDatasetVariables4 = sdtmDatasetVariables3;

        System.assert(sdtmDatasetVariables1.equals(sdtmDatasetVariables2));
        System.assert(sdtmDatasetVariables2.equals(sdtmDatasetVariables1));
        System.assert(sdtmDatasetVariables1.equals(sdtmDatasetVariables1));
        System.assert(sdtmDatasetVariables3.equals(sdtmDatasetVariables4));
        System.assert(sdtmDatasetVariables4.equals(sdtmDatasetVariables3));
        System.assert(sdtmDatasetVariables3.equals(sdtmDatasetVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables3 = new OASSdtmDatasetVariables();
        OASSdtmDatasetVariables sdtmDatasetVariables4 = new OASSdtmDatasetVariables();

        System.assert(sdtmDatasetVariables1.equals(sdtmDatasetVariables2));
        System.assert(sdtmDatasetVariables2.equals(sdtmDatasetVariables1));
        System.assert(sdtmDatasetVariables3.equals(sdtmDatasetVariables4));
        System.assert(sdtmDatasetVariables4.equals(sdtmDatasetVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = new OASSdtmDatasetVariables();

        System.assertEquals(false, sdtmDatasetVariables1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = new OASSdtmDatasetVariables();
        OASSdtmDatasetVariables sdtmDatasetVariables3;

        System.assertEquals(false, sdtmDatasetVariables1.equals(sdtmDatasetVariables3));
        System.assertEquals(false, sdtmDatasetVariables2.equals(sdtmDatasetVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = new OASSdtmDatasetVariables();

        System.assertEquals(sdtmDatasetVariables1.hashCode(), sdtmDatasetVariables1.hashCode());
        System.assertEquals(sdtmDatasetVariables2.hashCode(), sdtmDatasetVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariables sdtmDatasetVariables1 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables2 = OASSdtmDatasetVariables.getExample();
        OASSdtmDatasetVariables sdtmDatasetVariables3 = new OASSdtmDatasetVariables();
        OASSdtmDatasetVariables sdtmDatasetVariables4 = new OASSdtmDatasetVariables();

        System.assert(sdtmDatasetVariables1.equals(sdtmDatasetVariables2));
        System.assert(sdtmDatasetVariables3.equals(sdtmDatasetVariables4));
        System.assertEquals(sdtmDatasetVariables1.hashCode(), sdtmDatasetVariables2.hashCode());
        System.assertEquals(sdtmDatasetVariables3.hashCode(), sdtmDatasetVariables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmDatasetVariables sdtmDatasetVariables = new OASSdtmDatasetVariables();
        Map<String, String> x-property-mappings = sdtmDatasetVariables.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
