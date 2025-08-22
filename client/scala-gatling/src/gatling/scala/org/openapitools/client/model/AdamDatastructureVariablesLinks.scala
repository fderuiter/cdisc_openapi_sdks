
package org.openapitools.client.model


case class AdamDatastructureVariablesLinks (
    _self: Option[AdamDatastructureVariablesRef],
    _parentProduct: Option[AdamProductRef],
    _priorVersion: Option[AdamDatastructureVariablesRef],
    _analysisVariables: Option[List[AdamVariableRefElement]]
)
object AdamDatastructureVariablesLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object, var_analysisVariables: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion,"analysisVariables":$var_analysisVariables
        | }
        """.stripMargin
}
