
package org.openapitools.client.model


case class Lastupdated (
    _links: Option[LastupdatedLinks],
    _overall: Option[String],
    _dataAnalysis: Option[String],
    _dataCollection: Option[String],
    _dataTabulation: Option[String],
    _measure: Option[String],
    _terminology: Option[String]
)
object Lastupdated {
    def toStringBody(var_links: Object, var_overall: Object, var_dataAnalysis: Object, var_dataCollection: Object, var_dataTabulation: Object, var_measure: Object, var_terminology: Object) =
        s"""
        | {
        | "links":$var_links,"overall":$var_overall,"dataAnalysis":$var_dataAnalysis,"dataCollection":$var_dataCollection,"dataTabulation":$var_dataTabulation,"measure":$var_measure,"terminology":$var_terminology
        | }
        """.stripMargin
}
