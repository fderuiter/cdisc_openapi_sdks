
package org.openapitools.client.model


case class AdamVarset (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _links: Option[AdamVarsetLinks],
    _analysisVariables: Option[List[AdamVariable]]
)
object AdamVarset {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_links: Object, var_analysisVariables: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"links":$var_links,"analysisVariables":$var_analysisVariables
        | }
        """.stripMargin
}
