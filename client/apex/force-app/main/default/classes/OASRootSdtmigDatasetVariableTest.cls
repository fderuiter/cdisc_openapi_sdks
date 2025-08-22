@isTest
private class OASRootSdtmigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = rootSdtmigDatasetVariable1;
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable3 = new OASRootSdtmigDatasetVariable();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable4 = rootSdtmigDatasetVariable3;

        System.assert(rootSdtmigDatasetVariable1.equals(rootSdtmigDatasetVariable2));
        System.assert(rootSdtmigDatasetVariable2.equals(rootSdtmigDatasetVariable1));
        System.assert(rootSdtmigDatasetVariable1.equals(rootSdtmigDatasetVariable1));
        System.assert(rootSdtmigDatasetVariable3.equals(rootSdtmigDatasetVariable4));
        System.assert(rootSdtmigDatasetVariable4.equals(rootSdtmigDatasetVariable3));
        System.assert(rootSdtmigDatasetVariable3.equals(rootSdtmigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable3 = new OASRootSdtmigDatasetVariable();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable4 = new OASRootSdtmigDatasetVariable();

        System.assert(rootSdtmigDatasetVariable1.equals(rootSdtmigDatasetVariable2));
        System.assert(rootSdtmigDatasetVariable2.equals(rootSdtmigDatasetVariable1));
        System.assert(rootSdtmigDatasetVariable3.equals(rootSdtmigDatasetVariable4));
        System.assert(rootSdtmigDatasetVariable4.equals(rootSdtmigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = new OASRootSdtmigDatasetVariable();

        System.assertEquals(false, rootSdtmigDatasetVariable1.equals('foo'));
        System.assertEquals(false, rootSdtmigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = new OASRootSdtmigDatasetVariable();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable3;

        System.assertEquals(false, rootSdtmigDatasetVariable1.equals(rootSdtmigDatasetVariable3));
        System.assertEquals(false, rootSdtmigDatasetVariable2.equals(rootSdtmigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = new OASRootSdtmigDatasetVariable();

        System.assertEquals(rootSdtmigDatasetVariable1.hashCode(), rootSdtmigDatasetVariable1.hashCode());
        System.assertEquals(rootSdtmigDatasetVariable2.hashCode(), rootSdtmigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable1 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable2 = OASRootSdtmigDatasetVariable.getExample();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable3 = new OASRootSdtmigDatasetVariable();
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable4 = new OASRootSdtmigDatasetVariable();

        System.assert(rootSdtmigDatasetVariable1.equals(rootSdtmigDatasetVariable2));
        System.assert(rootSdtmigDatasetVariable3.equals(rootSdtmigDatasetVariable4));
        System.assertEquals(rootSdtmigDatasetVariable1.hashCode(), rootSdtmigDatasetVariable2.hashCode());
        System.assertEquals(rootSdtmigDatasetVariable3.hashCode(), rootSdtmigDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootSdtmigDatasetVariable rootSdtmigDatasetVariable = new OASRootSdtmigDatasetVariable();
        Map<String, String> x-property-mappings = rootSdtmigDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
