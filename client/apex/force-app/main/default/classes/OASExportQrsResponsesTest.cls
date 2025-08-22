@isTest
private class OASExportQrsResponsesTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = exportQrsResponses1;
        OASExportQrsResponses exportQrsResponses3 = new OASExportQrsResponses();
        OASExportQrsResponses exportQrsResponses4 = exportQrsResponses3;

        System.assert(exportQrsResponses1.equals(exportQrsResponses2));
        System.assert(exportQrsResponses2.equals(exportQrsResponses1));
        System.assert(exportQrsResponses1.equals(exportQrsResponses1));
        System.assert(exportQrsResponses3.equals(exportQrsResponses4));
        System.assert(exportQrsResponses4.equals(exportQrsResponses3));
        System.assert(exportQrsResponses3.equals(exportQrsResponses3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses3 = new OASExportQrsResponses();
        OASExportQrsResponses exportQrsResponses4 = new OASExportQrsResponses();

        System.assert(exportQrsResponses1.equals(exportQrsResponses2));
        System.assert(exportQrsResponses2.equals(exportQrsResponses1));
        System.assert(exportQrsResponses3.equals(exportQrsResponses4));
        System.assert(exportQrsResponses4.equals(exportQrsResponses3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = new OASExportQrsResponses();

        System.assertEquals(false, exportQrsResponses1.equals('foo'));
        System.assertEquals(false, exportQrsResponses2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = new OASExportQrsResponses();
        OASExportQrsResponses exportQrsResponses3;

        System.assertEquals(false, exportQrsResponses1.equals(exportQrsResponses3));
        System.assertEquals(false, exportQrsResponses2.equals(exportQrsResponses3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = new OASExportQrsResponses();

        System.assertEquals(exportQrsResponses1.hashCode(), exportQrsResponses1.hashCode());
        System.assertEquals(exportQrsResponses2.hashCode(), exportQrsResponses2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsResponses exportQrsResponses1 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses2 = OASExportQrsResponses.getExample();
        OASExportQrsResponses exportQrsResponses3 = new OASExportQrsResponses();
        OASExportQrsResponses exportQrsResponses4 = new OASExportQrsResponses();

        System.assert(exportQrsResponses1.equals(exportQrsResponses2));
        System.assert(exportQrsResponses3.equals(exportQrsResponses4));
        System.assertEquals(exportQrsResponses1.hashCode(), exportQrsResponses2.hashCode());
        System.assertEquals(exportQrsResponses3.hashCode(), exportQrsResponses4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportQrsResponses exportQrsResponses = new OASExportQrsResponses();
        Map<String, String> x-property-mappings = exportQrsResponses.getx-property-mappings();
        System.assertEquals('responseGroup', x-property-mappings.get('Response Group'));
        System.assertEquals('sequence', x-property-mappings.get('Sequence'));
        System.assertEquals('responsesOriginalResultCodelistCCode', x-property-mappings.get('Response&#39;s Original Result Codelist C-Code'));
        System.assertEquals('responsesOriginalResultTermCCode', x-property-mappings.get('Response&#39;s Original Result Term C-Code'));
        System.assertEquals('responsesOriginalResultUnitCodelistCCode', x-property-mappings.get('Response&#39;s Original Result Unit Codelist C-Code'));
        System.assertEquals('responsesOriginalResultUnitTermCCode', x-property-mappings.get('Response&#39;s Original Result Unit Term C-Code'));
        System.assertEquals('responsesStandardizedResultCodelistCCode', x-property-mappings.get('Response&#39;s Standardized Result Codelist C-Code'));
        System.assertEquals('responsesStandardizedResultTermCCode', x-property-mappings.get('Response&#39;s Standardized Result Term C-Code'));
        System.assertEquals('responsesStandardizedResultUnitCodelistCCode', x-property-mappings.get('Response&#39;s Standardized Result Unit Codelist C-Code'));
        System.assertEquals('responsesStandardizedResultUnitTermCCode', x-property-mappings.get('Response&#39;s Standardized Result Unit Term C-Code'));
    }
}
