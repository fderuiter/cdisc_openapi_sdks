@isTest
private class OASRootSdtmClassVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = rootSdtmClassVariable1;
        OASRootSdtmClassVariable rootSdtmClassVariable3 = new OASRootSdtmClassVariable();
        OASRootSdtmClassVariable rootSdtmClassVariable4 = rootSdtmClassVariable3;

        System.assert(rootSdtmClassVariable1.equals(rootSdtmClassVariable2));
        System.assert(rootSdtmClassVariable2.equals(rootSdtmClassVariable1));
        System.assert(rootSdtmClassVariable1.equals(rootSdtmClassVariable1));
        System.assert(rootSdtmClassVariable3.equals(rootSdtmClassVariable4));
        System.assert(rootSdtmClassVariable4.equals(rootSdtmClassVariable3));
        System.assert(rootSdtmClassVariable3.equals(rootSdtmClassVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable3 = new OASRootSdtmClassVariable();
        OASRootSdtmClassVariable rootSdtmClassVariable4 = new OASRootSdtmClassVariable();

        System.assert(rootSdtmClassVariable1.equals(rootSdtmClassVariable2));
        System.assert(rootSdtmClassVariable2.equals(rootSdtmClassVariable1));
        System.assert(rootSdtmClassVariable3.equals(rootSdtmClassVariable4));
        System.assert(rootSdtmClassVariable4.equals(rootSdtmClassVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = new OASRootSdtmClassVariable();

        System.assertEquals(false, rootSdtmClassVariable1.equals('foo'));
        System.assertEquals(false, rootSdtmClassVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = new OASRootSdtmClassVariable();
        OASRootSdtmClassVariable rootSdtmClassVariable3;

        System.assertEquals(false, rootSdtmClassVariable1.equals(rootSdtmClassVariable3));
        System.assertEquals(false, rootSdtmClassVariable2.equals(rootSdtmClassVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = new OASRootSdtmClassVariable();

        System.assertEquals(rootSdtmClassVariable1.hashCode(), rootSdtmClassVariable1.hashCode());
        System.assertEquals(rootSdtmClassVariable2.hashCode(), rootSdtmClassVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootSdtmClassVariable rootSdtmClassVariable1 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable2 = OASRootSdtmClassVariable.getExample();
        OASRootSdtmClassVariable rootSdtmClassVariable3 = new OASRootSdtmClassVariable();
        OASRootSdtmClassVariable rootSdtmClassVariable4 = new OASRootSdtmClassVariable();

        System.assert(rootSdtmClassVariable1.equals(rootSdtmClassVariable2));
        System.assert(rootSdtmClassVariable3.equals(rootSdtmClassVariable4));
        System.assertEquals(rootSdtmClassVariable1.hashCode(), rootSdtmClassVariable2.hashCode());
        System.assertEquals(rootSdtmClassVariable3.hashCode(), rootSdtmClassVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRootSdtmClassVariable rootSdtmClassVariable = new OASRootSdtmClassVariable();
        Map<String, String> x-property-mappings = rootSdtmClassVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
