@isTest
private class OASRootSdtmDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = rootSdtmDatasetVariable1;
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable3 = new OASRootSdtmDatasetVariable();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable4 = rootSdtmDatasetVariable3;

        System.assert(rootSdtmDatasetVariable1.equals(rootSdtmDatasetVariable2));
        System.assert(rootSdtmDatasetVariable2.equals(rootSdtmDatasetVariable1));
        System.assert(rootSdtmDatasetVariable1.equals(rootSdtmDatasetVariable1));
        System.assert(rootSdtmDatasetVariable3.equals(rootSdtmDatasetVariable4));
        System.assert(rootSdtmDatasetVariable4.equals(rootSdtmDatasetVariable3));
        System.assert(rootSdtmDatasetVariable3.equals(rootSdtmDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable3 = new OASRootSdtmDatasetVariable();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable4 = new OASRootSdtmDatasetVariable();

        System.assert(rootSdtmDatasetVariable1.equals(rootSdtmDatasetVariable2));
        System.assert(rootSdtmDatasetVariable2.equals(rootSdtmDatasetVariable1));
        System.assert(rootSdtmDatasetVariable3.equals(rootSdtmDatasetVariable4));
        System.assert(rootSdtmDatasetVariable4.equals(rootSdtmDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = new OASRootSdtmDatasetVariable();

        System.assertEquals(false, rootSdtmDatasetVariable1.equals('foo'));
        System.assertEquals(false, rootSdtmDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = new OASRootSdtmDatasetVariable();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable3;

        System.assertEquals(false, rootSdtmDatasetVariable1.equals(rootSdtmDatasetVariable3));
        System.assertEquals(false, rootSdtmDatasetVariable2.equals(rootSdtmDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = new OASRootSdtmDatasetVariable();

        System.assertEquals(rootSdtmDatasetVariable1.hashCode(), rootSdtmDatasetVariable1.hashCode());
        System.assertEquals(rootSdtmDatasetVariable2.hashCode(), rootSdtmDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable1 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable2 = OASRootSdtmDatasetVariable.getExample();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable3 = new OASRootSdtmDatasetVariable();
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable4 = new OASRootSdtmDatasetVariable();

        System.assert(rootSdtmDatasetVariable1.equals(rootSdtmDatasetVariable2));
        System.assert(rootSdtmDatasetVariable3.equals(rootSdtmDatasetVariable4));
        System.assertEquals(rootSdtmDatasetVariable1.hashCode(), rootSdtmDatasetVariable2.hashCode());
        System.assertEquals(rootSdtmDatasetVariable3.hashCode(), rootSdtmDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootSdtmDatasetVariable rootSdtmDatasetVariable = new OASRootSdtmDatasetVariable();
        Map<String, String> x-property-mappings = rootSdtmDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
