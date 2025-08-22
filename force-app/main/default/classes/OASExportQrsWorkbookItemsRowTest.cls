@isTest
private class OASExportQrsWorkbookItemsRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = exportQrsWorkbookItemsRow1;
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow3 = new OASExportQrsWorkbookItemsRow();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow4 = exportQrsWorkbookItemsRow3;

        System.assert(exportQrsWorkbookItemsRow1.equals(exportQrsWorkbookItemsRow2));
        System.assert(exportQrsWorkbookItemsRow2.equals(exportQrsWorkbookItemsRow1));
        System.assert(exportQrsWorkbookItemsRow1.equals(exportQrsWorkbookItemsRow1));
        System.assert(exportQrsWorkbookItemsRow3.equals(exportQrsWorkbookItemsRow4));
        System.assert(exportQrsWorkbookItemsRow4.equals(exportQrsWorkbookItemsRow3));
        System.assert(exportQrsWorkbookItemsRow3.equals(exportQrsWorkbookItemsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow3 = new OASExportQrsWorkbookItemsRow();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow4 = new OASExportQrsWorkbookItemsRow();

        System.assert(exportQrsWorkbookItemsRow1.equals(exportQrsWorkbookItemsRow2));
        System.assert(exportQrsWorkbookItemsRow2.equals(exportQrsWorkbookItemsRow1));
        System.assert(exportQrsWorkbookItemsRow3.equals(exportQrsWorkbookItemsRow4));
        System.assert(exportQrsWorkbookItemsRow4.equals(exportQrsWorkbookItemsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = new OASExportQrsWorkbookItemsRow();

        System.assertEquals(false, exportQrsWorkbookItemsRow1.equals('foo'));
        System.assertEquals(false, exportQrsWorkbookItemsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = new OASExportQrsWorkbookItemsRow();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow3;

        System.assertEquals(false, exportQrsWorkbookItemsRow1.equals(exportQrsWorkbookItemsRow3));
        System.assertEquals(false, exportQrsWorkbookItemsRow2.equals(exportQrsWorkbookItemsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = new OASExportQrsWorkbookItemsRow();

        System.assertEquals(exportQrsWorkbookItemsRow1.hashCode(), exportQrsWorkbookItemsRow1.hashCode());
        System.assertEquals(exportQrsWorkbookItemsRow2.hashCode(), exportQrsWorkbookItemsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow1 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow2 = OASExportQrsWorkbookItemsRow.getExample();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow3 = new OASExportQrsWorkbookItemsRow();
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow4 = new OASExportQrsWorkbookItemsRow();

        System.assert(exportQrsWorkbookItemsRow1.equals(exportQrsWorkbookItemsRow2));
        System.assert(exportQrsWorkbookItemsRow3.equals(exportQrsWorkbookItemsRow4));
        System.assertEquals(exportQrsWorkbookItemsRow1.hashCode(), exportQrsWorkbookItemsRow2.hashCode());
        System.assertEquals(exportQrsWorkbookItemsRow3.hashCode(), exportQrsWorkbookItemsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow = new OASExportQrsWorkbookItemsRow();
        Map<String, String> x-property-mappings = exportQrsWorkbookItemsRow.getx-property-mappings();
        System.assertEquals('itemSequence', x-property-mappings.get('Item Sequence'));
        System.assertEquals('testName', x-property-mappings.get('Test Name'));
        System.assertEquals('itemText', x-property-mappings.get('Item Text'));
        System.assertEquals('testsCodelistCCode', x-property-mappings.get('Test&#39;s Codelist C-Code'));
        System.assertEquals('testsTermCCode', x-property-mappings.get('Test&#39;s Term C-Code'));
        System.assertEquals('testCodesCodelistCCode', x-property-mappings.get('Test Code&#39;s Codelist C-Code'));
        System.assertEquals('testCodesTermCCode', x-property-mappings.get('Test Code&#39;s Term C-Code'));
        System.assertEquals('subcategorysCodelistCCode', x-property-mappings.get('Subcategory&#39;s Codelist C-Code'));
        System.assertEquals('subcategorysTermCCode', x-property-mappings.get('Subcategory&#39;s Term C-Code'));
        System.assertEquals('evaluatorsCodelistCCode', x-property-mappings.get('Evaluator&#39;s Codelist C-Code'));
        System.assertEquals('evaluatorsTermCCode', x-property-mappings.get('Evaluator&#39;s Term C-Code'));
        System.assertEquals('freeFormResponsesDatatype', x-property-mappings.get('Free-form Response&#39;s Datatype'));
        System.assertEquals('responseGroup', x-property-mappings.get('Response Group'));
    }
}
