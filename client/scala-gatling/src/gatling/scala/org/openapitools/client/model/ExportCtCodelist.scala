
package org.openapitools.client.model


case class ExportCtCodelist (
    _code: Option[String],
    _codelistCode: Option[String],
    _codelistExtensibleYesNo: Option[String],
    _codelistName: Option[String],
    _cDISCSubmissionValue: Option[String],
    _cDISCSynonymS: Option[List[String]],
    _cDISCDefinition: Option[String],
    _nCIPreferredTerm: Option[String],
    _standardAndDate: Option[String],
    _: Option[List[ExportCtTerm]]
)
object ExportCtCodelist {
    def toStringBody(var_code: Object, var_codelistCode: Object, var_codelistExtensibleYesNo: Object, var_codelistName: Object, var_cDISCSubmissionValue: Object, var_cDISCSynonymS: Object, var_cDISCDefinition: Object, var_nCIPreferredTerm: Object, var_standardAndDate: Object, var_: Object) =
        s"""
        | {
        | "code":$var_code,"codelistCode":$var_codelistCode,"codelistExtensibleYesNo":$var_codelistExtensibleYesNo,"codelistName":$var_codelistName,"cDISCSubmissionValue":$var_cDISCSubmissionValue,"cDISCSynonymS":$var_cDISCSynonymS,"cDISCDefinition":$var_cDISCDefinition,"nCIPreferredTerm":$var_nCIPreferredTerm,"standardAndDate":$var_standardAndDate,"":$var_
        | }
        """.stripMargin
}
