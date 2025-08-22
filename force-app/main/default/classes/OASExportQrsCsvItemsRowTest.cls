@isTest
private class OASExportQrsCsvItemsRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = exportQrsCsvItemsRow1;
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow3 = new OASExportQrsCsvItemsRow();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow4 = exportQrsCsvItemsRow3;

        System.assert(exportQrsCsvItemsRow1.equals(exportQrsCsvItemsRow2));
        System.assert(exportQrsCsvItemsRow2.equals(exportQrsCsvItemsRow1));
        System.assert(exportQrsCsvItemsRow1.equals(exportQrsCsvItemsRow1));
        System.assert(exportQrsCsvItemsRow3.equals(exportQrsCsvItemsRow4));
        System.assert(exportQrsCsvItemsRow4.equals(exportQrsCsvItemsRow3));
        System.assert(exportQrsCsvItemsRow3.equals(exportQrsCsvItemsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow3 = new OASExportQrsCsvItemsRow();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow4 = new OASExportQrsCsvItemsRow();

        System.assert(exportQrsCsvItemsRow1.equals(exportQrsCsvItemsRow2));
        System.assert(exportQrsCsvItemsRow2.equals(exportQrsCsvItemsRow1));
        System.assert(exportQrsCsvItemsRow3.equals(exportQrsCsvItemsRow4));
        System.assert(exportQrsCsvItemsRow4.equals(exportQrsCsvItemsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = new OASExportQrsCsvItemsRow();

        System.assertEquals(false, exportQrsCsvItemsRow1.equals('foo'));
        System.assertEquals(false, exportQrsCsvItemsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = new OASExportQrsCsvItemsRow();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow3;

        System.assertEquals(false, exportQrsCsvItemsRow1.equals(exportQrsCsvItemsRow3));
        System.assertEquals(false, exportQrsCsvItemsRow2.equals(exportQrsCsvItemsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = new OASExportQrsCsvItemsRow();

        System.assertEquals(exportQrsCsvItemsRow1.hashCode(), exportQrsCsvItemsRow1.hashCode());
        System.assertEquals(exportQrsCsvItemsRow2.hashCode(), exportQrsCsvItemsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow1 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow2 = OASExportQrsCsvItemsRow.getExample();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow3 = new OASExportQrsCsvItemsRow();
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow4 = new OASExportQrsCsvItemsRow();

        System.assert(exportQrsCsvItemsRow1.equals(exportQrsCsvItemsRow2));
        System.assert(exportQrsCsvItemsRow3.equals(exportQrsCsvItemsRow4));
        System.assertEquals(exportQrsCsvItemsRow1.hashCode(), exportQrsCsvItemsRow2.hashCode());
        System.assertEquals(exportQrsCsvItemsRow3.hashCode(), exportQrsCsvItemsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportQrsCsvItemsRow exportQrsCsvItemsRow = new OASExportQrsCsvItemsRow();
        Map<String, String> x-property-mappings = exportQrsCsvItemsRow.getx-property-mappings();
        System.assertEquals('qrSMeasureName', x-property-mappings.get('QRS Measure Name'));
        System.assertEquals('qrSMeasureLabel', x-property-mappings.get('QRS Measure Label'));
        System.assertEquals('qrSMeasureType', x-property-mappings.get('QRS Measure Type'));
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
