@isTest
private class OASExportQrsWorkbookTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = exportQrsWorkbook1;
        OASExportQrsWorkbook exportQrsWorkbook3 = new OASExportQrsWorkbook();
        OASExportQrsWorkbook exportQrsWorkbook4 = exportQrsWorkbook3;

        System.assert(exportQrsWorkbook1.equals(exportQrsWorkbook2));
        System.assert(exportQrsWorkbook2.equals(exportQrsWorkbook1));
        System.assert(exportQrsWorkbook1.equals(exportQrsWorkbook1));
        System.assert(exportQrsWorkbook3.equals(exportQrsWorkbook4));
        System.assert(exportQrsWorkbook4.equals(exportQrsWorkbook3));
        System.assert(exportQrsWorkbook3.equals(exportQrsWorkbook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook3 = new OASExportQrsWorkbook();
        OASExportQrsWorkbook exportQrsWorkbook4 = new OASExportQrsWorkbook();

        System.assert(exportQrsWorkbook1.equals(exportQrsWorkbook2));
        System.assert(exportQrsWorkbook2.equals(exportQrsWorkbook1));
        System.assert(exportQrsWorkbook3.equals(exportQrsWorkbook4));
        System.assert(exportQrsWorkbook4.equals(exportQrsWorkbook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = new OASExportQrsWorkbook();

        System.assertEquals(false, exportQrsWorkbook1.equals('foo'));
        System.assertEquals(false, exportQrsWorkbook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = new OASExportQrsWorkbook();
        OASExportQrsWorkbook exportQrsWorkbook3;

        System.assertEquals(false, exportQrsWorkbook1.equals(exportQrsWorkbook3));
        System.assertEquals(false, exportQrsWorkbook2.equals(exportQrsWorkbook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = new OASExportQrsWorkbook();

        System.assertEquals(exportQrsWorkbook1.hashCode(), exportQrsWorkbook1.hashCode());
        System.assertEquals(exportQrsWorkbook2.hashCode(), exportQrsWorkbook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsWorkbook exportQrsWorkbook1 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook2 = OASExportQrsWorkbook.getExample();
        OASExportQrsWorkbook exportQrsWorkbook3 = new OASExportQrsWorkbook();
        OASExportQrsWorkbook exportQrsWorkbook4 = new OASExportQrsWorkbook();

        System.assert(exportQrsWorkbook1.equals(exportQrsWorkbook2));
        System.assert(exportQrsWorkbook3.equals(exportQrsWorkbook4));
        System.assertEquals(exportQrsWorkbook1.hashCode(), exportQrsWorkbook2.hashCode());
        System.assertEquals(exportQrsWorkbook3.hashCode(), exportQrsWorkbook4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportQrsWorkbook exportQrsWorkbook = new OASExportQrsWorkbook();
        System.assertEquals(new List<OASExportQrsWorkbookItemsRow>(), exportQrsWorkbook.items);
        System.assertEquals(new List<OASExportQrsResponses>(), exportQrsWorkbook.responses);
        System.assertEquals(null, exportQrsWorkbook.self);
    }
}
