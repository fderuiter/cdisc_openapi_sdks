@isTest
private class OASExportCtCodelistTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = exportCtCodelist1;
        OASExportCtCodelist exportCtCodelist3 = new OASExportCtCodelist();
        OASExportCtCodelist exportCtCodelist4 = exportCtCodelist3;

        System.assert(exportCtCodelist1.equals(exportCtCodelist2));
        System.assert(exportCtCodelist2.equals(exportCtCodelist1));
        System.assert(exportCtCodelist1.equals(exportCtCodelist1));
        System.assert(exportCtCodelist3.equals(exportCtCodelist4));
        System.assert(exportCtCodelist4.equals(exportCtCodelist3));
        System.assert(exportCtCodelist3.equals(exportCtCodelist3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist3 = new OASExportCtCodelist();
        OASExportCtCodelist exportCtCodelist4 = new OASExportCtCodelist();

        System.assert(exportCtCodelist1.equals(exportCtCodelist2));
        System.assert(exportCtCodelist2.equals(exportCtCodelist1));
        System.assert(exportCtCodelist3.equals(exportCtCodelist4));
        System.assert(exportCtCodelist4.equals(exportCtCodelist3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = new OASExportCtCodelist();

        System.assertEquals(false, exportCtCodelist1.equals('foo'));
        System.assertEquals(false, exportCtCodelist2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = new OASExportCtCodelist();
        OASExportCtCodelist exportCtCodelist3;

        System.assertEquals(false, exportCtCodelist1.equals(exportCtCodelist3));
        System.assertEquals(false, exportCtCodelist2.equals(exportCtCodelist3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = new OASExportCtCodelist();

        System.assertEquals(exportCtCodelist1.hashCode(), exportCtCodelist1.hashCode());
        System.assertEquals(exportCtCodelist2.hashCode(), exportCtCodelist2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCtCodelist exportCtCodelist1 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist2 = OASExportCtCodelist.getExample();
        OASExportCtCodelist exportCtCodelist3 = new OASExportCtCodelist();
        OASExportCtCodelist exportCtCodelist4 = new OASExportCtCodelist();

        System.assert(exportCtCodelist1.equals(exportCtCodelist2));
        System.assert(exportCtCodelist3.equals(exportCtCodelist4));
        System.assertEquals(exportCtCodelist1.hashCode(), exportCtCodelist2.hashCode());
        System.assertEquals(exportCtCodelist3.hashCode(), exportCtCodelist4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCtCodelist exportCtCodelist = new OASExportCtCodelist();
        Map<String, String> x-property-mappings = exportCtCodelist.getx-property-mappings();
        System.assertEquals('code', x-property-mappings.get('Code'));
        System.assertEquals('codelistCode', x-property-mappings.get('Codelist Code'));
        System.assertEquals('codelistExtensibleYesNo', x-property-mappings.get('Codelist Extensible (Yes/No)'));
        System.assertEquals('codelistName', x-property-mappings.get('Codelist Name'));
        System.assertEquals('cdISCSubmissionValue', x-property-mappings.get('CDISC Submission Value'));
        System.assertEquals('cdISCSynonymS', x-property-mappings.get('CDISC Synonym(s)'));
        System.assertEquals('cdISCDefinition', x-property-mappings.get('CDISC Definition'));
        System.assertEquals('ncIPreferredTerm', x-property-mappings.get('NCI Preferred Term'));
        System.assertEquals('standardAndDate', x-property-mappings.get('Standard and Date'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCtCodelist exportCtCodelist = new OASExportCtCodelist();
        System.assertEquals(new List<String>(), exportCtCodelist.cdISCSynonymS);
        System.assertEquals(new List<OASExportCtTerm>(), exportCtCodelist.);
        System.assertEquals(null, exportCtCodelist.code);
        System.assertEquals(null, exportCtCodelist.codelistCode);
        System.assertEquals(null, exportCtCodelist.codelistExtensibleYesNo);
        System.assertEquals(null, exportCtCodelist.codelistName);
        System.assertEquals(null, exportCtCodelist.cdISCSubmissionValue);
        System.assertEquals(null, exportCtCodelist.cdISCDefinition);
        System.assertEquals(null, exportCtCodelist.ncIPreferredTerm);
        System.assertEquals(null, exportCtCodelist.standardAndDate);
    }
}
