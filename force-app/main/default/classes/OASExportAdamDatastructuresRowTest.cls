@isTest
private class OASExportAdamDatastructuresRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = exportAdamDatastructuresRow1;
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow3 = new OASExportAdamDatastructuresRow();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow4 = exportAdamDatastructuresRow3;

        System.assert(exportAdamDatastructuresRow1.equals(exportAdamDatastructuresRow2));
        System.assert(exportAdamDatastructuresRow2.equals(exportAdamDatastructuresRow1));
        System.assert(exportAdamDatastructuresRow1.equals(exportAdamDatastructuresRow1));
        System.assert(exportAdamDatastructuresRow3.equals(exportAdamDatastructuresRow4));
        System.assert(exportAdamDatastructuresRow4.equals(exportAdamDatastructuresRow3));
        System.assert(exportAdamDatastructuresRow3.equals(exportAdamDatastructuresRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow3 = new OASExportAdamDatastructuresRow();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow4 = new OASExportAdamDatastructuresRow();

        System.assert(exportAdamDatastructuresRow1.equals(exportAdamDatastructuresRow2));
        System.assert(exportAdamDatastructuresRow2.equals(exportAdamDatastructuresRow1));
        System.assert(exportAdamDatastructuresRow3.equals(exportAdamDatastructuresRow4));
        System.assert(exportAdamDatastructuresRow4.equals(exportAdamDatastructuresRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = new OASExportAdamDatastructuresRow();

        System.assertEquals(false, exportAdamDatastructuresRow1.equals('foo'));
        System.assertEquals(false, exportAdamDatastructuresRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = new OASExportAdamDatastructuresRow();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow3;

        System.assertEquals(false, exportAdamDatastructuresRow1.equals(exportAdamDatastructuresRow3));
        System.assertEquals(false, exportAdamDatastructuresRow2.equals(exportAdamDatastructuresRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = new OASExportAdamDatastructuresRow();

        System.assertEquals(exportAdamDatastructuresRow1.hashCode(), exportAdamDatastructuresRow1.hashCode());
        System.assertEquals(exportAdamDatastructuresRow2.hashCode(), exportAdamDatastructuresRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow1 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow2 = OASExportAdamDatastructuresRow.getExample();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow3 = new OASExportAdamDatastructuresRow();
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow4 = new OASExportAdamDatastructuresRow();

        System.assert(exportAdamDatastructuresRow1.equals(exportAdamDatastructuresRow2));
        System.assert(exportAdamDatastructuresRow3.equals(exportAdamDatastructuresRow4));
        System.assertEquals(exportAdamDatastructuresRow1.hashCode(), exportAdamDatastructuresRow2.hashCode());
        System.assertEquals(exportAdamDatastructuresRow3.hashCode(), exportAdamDatastructuresRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportAdamDatastructuresRow exportAdamDatastructuresRow = new OASExportAdamDatastructuresRow();
        Map<String, String> x-property-mappings = exportAdamDatastructuresRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('dataStructureName', x-property-mappings.get('Data Structure Name'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('datasetLabel', x-property-mappings.get('Dataset Label'));
        System.assertEquals('datasetDescription', x-property-mappings.get('Dataset Description'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
    }
}
