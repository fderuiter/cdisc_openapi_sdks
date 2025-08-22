@isTest
private class OASExportQrsGeneralTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = exportQrsGeneral1;
        OASExportQrsGeneral exportQrsGeneral3 = new OASExportQrsGeneral();
        OASExportQrsGeneral exportQrsGeneral4 = exportQrsGeneral3;

        System.assert(exportQrsGeneral1.equals(exportQrsGeneral2));
        System.assert(exportQrsGeneral2.equals(exportQrsGeneral1));
        System.assert(exportQrsGeneral1.equals(exportQrsGeneral1));
        System.assert(exportQrsGeneral3.equals(exportQrsGeneral4));
        System.assert(exportQrsGeneral4.equals(exportQrsGeneral3));
        System.assert(exportQrsGeneral3.equals(exportQrsGeneral3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral3 = new OASExportQrsGeneral();
        OASExportQrsGeneral exportQrsGeneral4 = new OASExportQrsGeneral();

        System.assert(exportQrsGeneral1.equals(exportQrsGeneral2));
        System.assert(exportQrsGeneral2.equals(exportQrsGeneral1));
        System.assert(exportQrsGeneral3.equals(exportQrsGeneral4));
        System.assert(exportQrsGeneral4.equals(exportQrsGeneral3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = new OASExportQrsGeneral();

        System.assertEquals(false, exportQrsGeneral1.equals('foo'));
        System.assertEquals(false, exportQrsGeneral2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = new OASExportQrsGeneral();
        OASExportQrsGeneral exportQrsGeneral3;

        System.assertEquals(false, exportQrsGeneral1.equals(exportQrsGeneral3));
        System.assertEquals(false, exportQrsGeneral2.equals(exportQrsGeneral3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = new OASExportQrsGeneral();

        System.assertEquals(exportQrsGeneral1.hashCode(), exportQrsGeneral1.hashCode());
        System.assertEquals(exportQrsGeneral2.hashCode(), exportQrsGeneral2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsGeneral exportQrsGeneral1 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral2 = OASExportQrsGeneral.getExample();
        OASExportQrsGeneral exportQrsGeneral3 = new OASExportQrsGeneral();
        OASExportQrsGeneral exportQrsGeneral4 = new OASExportQrsGeneral();

        System.assert(exportQrsGeneral1.equals(exportQrsGeneral2));
        System.assert(exportQrsGeneral3.equals(exportQrsGeneral4));
        System.assertEquals(exportQrsGeneral1.hashCode(), exportQrsGeneral2.hashCode());
        System.assertEquals(exportQrsGeneral3.hashCode(), exportQrsGeneral4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportQrsGeneral exportQrsGeneral = new OASExportQrsGeneral();
        Map<String, String> x-property-mappings = exportQrsGeneral.getx-property-mappings();
        System.assertEquals('name', x-property-mappings.get('Name'));
        System.assertEquals('label', x-property-mappings.get('Label'));
        System.assertEquals('effectiveDate', x-property-mappings.get('Effective Date'));
        System.assertEquals('description', x-property-mappings.get('Description'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('categorysCodelistCCode', x-property-mappings.get('Category&#39;s Codelist C-Code'));
        System.assertEquals('categorysTermCCode', x-property-mappings.get('Category&#39;s Term C-Code'));
    }
}
