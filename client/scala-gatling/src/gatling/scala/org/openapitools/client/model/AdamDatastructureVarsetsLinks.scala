
package org.openapitools.client.model


case class AdamDatastructureVarsetsLinks (
    _self: Option[AdamDatastructureVarsetsRef],
    _parentProduct: Option[AdamProductRef],
    _priorVersion: Option[AdamDatastructureVarsetsRef],
    _analysisVariableSets: Option[List[AdamVarsetRefElement]]
)
object AdamDatastructureVarsetsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object, var_analysisVariableSets: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion,"analysisVariableSets":$var_analysisVariableSets
        | }
        """.stripMargin
}
