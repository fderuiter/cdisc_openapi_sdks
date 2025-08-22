@isTest
private class OASExportAdamWorkbookTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = exportAdamWorkbook1;
        OASExportAdamWorkbook exportAdamWorkbook3 = new OASExportAdamWorkbook();
        OASExportAdamWorkbook exportAdamWorkbook4 = exportAdamWorkbook3;

        System.assert(exportAdamWorkbook1.equals(exportAdamWorkbook2));
        System.assert(exportAdamWorkbook2.equals(exportAdamWorkbook1));
        System.assert(exportAdamWorkbook1.equals(exportAdamWorkbook1));
        System.assert(exportAdamWorkbook3.equals(exportAdamWorkbook4));
        System.assert(exportAdamWorkbook4.equals(exportAdamWorkbook3));
        System.assert(exportAdamWorkbook3.equals(exportAdamWorkbook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook3 = new OASExportAdamWorkbook();
        OASExportAdamWorkbook exportAdamWorkbook4 = new OASExportAdamWorkbook();

        System.assert(exportAdamWorkbook1.equals(exportAdamWorkbook2));
        System.assert(exportAdamWorkbook2.equals(exportAdamWorkbook1));
        System.assert(exportAdamWorkbook3.equals(exportAdamWorkbook4));
        System.assert(exportAdamWorkbook4.equals(exportAdamWorkbook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = new OASExportAdamWorkbook();

        System.assertEquals(false, exportAdamWorkbook1.equals('foo'));
        System.assertEquals(false, exportAdamWorkbook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = new OASExportAdamWorkbook();
        OASExportAdamWorkbook exportAdamWorkbook3;

        System.assertEquals(false, exportAdamWorkbook1.equals(exportAdamWorkbook3));
        System.assertEquals(false, exportAdamWorkbook2.equals(exportAdamWorkbook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = new OASExportAdamWorkbook();

        System.assertEquals(exportAdamWorkbook1.hashCode(), exportAdamWorkbook1.hashCode());
        System.assertEquals(exportAdamWorkbook2.hashCode(), exportAdamWorkbook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportAdamWorkbook exportAdamWorkbook1 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook2 = OASExportAdamWorkbook.getExample();
        OASExportAdamWorkbook exportAdamWorkbook3 = new OASExportAdamWorkbook();
        OASExportAdamWorkbook exportAdamWorkbook4 = new OASExportAdamWorkbook();

        System.assert(exportAdamWorkbook1.equals(exportAdamWorkbook2));
        System.assert(exportAdamWorkbook3.equals(exportAdamWorkbook4));
        System.assertEquals(exportAdamWorkbook1.hashCode(), exportAdamWorkbook2.hashCode());
        System.assertEquals(exportAdamWorkbook3.hashCode(), exportAdamWorkbook4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportAdamWorkbook exportAdamWorkbook = new OASExportAdamWorkbook();
        System.assertEquals(new List<OASExportAdamVariablesRow>(), exportAdamWorkbook.variables);
        System.assertEquals(new List<OASExportAdamDatastructuresRow>(), exportAdamWorkbook.datastructures);
    }
}
