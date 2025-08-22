@isTest
private class OASRootSendigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = rootSendigDatasetVariable1;
        OASRootSendigDatasetVariable rootSendigDatasetVariable3 = new OASRootSendigDatasetVariable();
        OASRootSendigDatasetVariable rootSendigDatasetVariable4 = rootSendigDatasetVariable3;

        System.assert(rootSendigDatasetVariable1.equals(rootSendigDatasetVariable2));
        System.assert(rootSendigDatasetVariable2.equals(rootSendigDatasetVariable1));
        System.assert(rootSendigDatasetVariable1.equals(rootSendigDatasetVariable1));
        System.assert(rootSendigDatasetVariable3.equals(rootSendigDatasetVariable4));
        System.assert(rootSendigDatasetVariable4.equals(rootSendigDatasetVariable3));
        System.assert(rootSendigDatasetVariable3.equals(rootSendigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable3 = new OASRootSendigDatasetVariable();
        OASRootSendigDatasetVariable rootSendigDatasetVariable4 = new OASRootSendigDatasetVariable();

        System.assert(rootSendigDatasetVariable1.equals(rootSendigDatasetVariable2));
        System.assert(rootSendigDatasetVariable2.equals(rootSendigDatasetVariable1));
        System.assert(rootSendigDatasetVariable3.equals(rootSendigDatasetVariable4));
        System.assert(rootSendigDatasetVariable4.equals(rootSendigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = new OASRootSendigDatasetVariable();

        System.assertEquals(false, rootSendigDatasetVariable1.equals('foo'));
        System.assertEquals(false, rootSendigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = new OASRootSendigDatasetVariable();
        OASRootSendigDatasetVariable rootSendigDatasetVariable3;

        System.assertEquals(false, rootSendigDatasetVariable1.equals(rootSendigDatasetVariable3));
        System.assertEquals(false, rootSendigDatasetVariable2.equals(rootSendigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = new OASRootSendigDatasetVariable();

        System.assertEquals(rootSendigDatasetVariable1.hashCode(), rootSendigDatasetVariable1.hashCode());
        System.assertEquals(rootSendigDatasetVariable2.hashCode(), rootSendigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable1 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable2 = OASRootSendigDatasetVariable.getExample();
        OASRootSendigDatasetVariable rootSendigDatasetVariable3 = new OASRootSendigDatasetVariable();
        OASRootSendigDatasetVariable rootSendigDatasetVariable4 = new OASRootSendigDatasetVariable();

        System.assert(rootSendigDatasetVariable1.equals(rootSendigDatasetVariable2));
        System.assert(rootSendigDatasetVariable3.equals(rootSendigDatasetVariable4));
        System.assertEquals(rootSendigDatasetVariable1.hashCode(), rootSendigDatasetVariable2.hashCode());
        System.assertEquals(rootSendigDatasetVariable3.hashCode(), rootSendigDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootSendigDatasetVariable rootSendigDatasetVariable = new OASRootSendigDatasetVariable();
        Map<String, String> x-property-mappings = rootSendigDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
