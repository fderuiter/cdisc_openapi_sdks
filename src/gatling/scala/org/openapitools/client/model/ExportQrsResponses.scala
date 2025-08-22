
package org.openapitools.client.model


case class ExportQrsResponses (
    _responseGroup: Option[String],
    _sequence: Option[String],
    _responsesOriginalResultCodelistCCode: Option[String],
    _responsesOriginalResultTermCCode: Option[String],
    _responsesOriginalResultUnitCodelistCCode: Option[String],
    _responsesOriginalResultUnitTermCCode: Option[String],
    _responsesStandardizedResultCodelistCCode: Option[String],
    _responsesStandardizedResultTermCCode: Option[String],
    _responsesStandardizedResultUnitCodelistCCode: Option[String],
    _responsesStandardizedResultUnitTermCCode: Option[String]
)
object ExportQrsResponses {
    def toStringBody(var_responseGroup: Object, var_sequence: Object, var_responsesOriginalResultCodelistCCode: Object, var_responsesOriginalResultTermCCode: Object, var_responsesOriginalResultUnitCodelistCCode: Object, var_responsesOriginalResultUnitTermCCode: Object, var_responsesStandardizedResultCodelistCCode: Object, var_responsesStandardizedResultTermCCode: Object, var_responsesStandardizedResultUnitCodelistCCode: Object, var_responsesStandardizedResultUnitTermCCode: Object) =
        s"""
        | {
        | "responseGroup":$var_responseGroup,"sequence":$var_sequence,"responsesOriginalResultCodelistCCode":$var_responsesOriginalResultCodelistCCode,"responsesOriginalResultTermCCode":$var_responsesOriginalResultTermCCode,"responsesOriginalResultUnitCodelistCCode":$var_responsesOriginalResultUnitCodelistCCode,"responsesOriginalResultUnitTermCCode":$var_responsesOriginalResultUnitTermCCode,"responsesStandardizedResultCodelistCCode":$var_responsesStandardizedResultCodelistCCode,"responsesStandardizedResultTermCCode":$var_responsesStandardizedResultTermCCode,"responsesStandardizedResultUnitCodelistCCode":$var_responsesStandardizedResultUnitCodelistCCode,"responsesStandardizedResultUnitTermCCode":$var_responsesStandardizedResultUnitTermCCode
        | }
        """.stripMargin
}
