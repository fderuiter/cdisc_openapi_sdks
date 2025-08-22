
package org.openapitools.client.model


case class SdtmClassVariablesLinks (
    _self: Option[SdtmClassVariablesRef],
    _parentProduct: Option[SdtmProductRef],
    _priorVersion: Option[SdtmClassVariablesRef],
    _classVariables: Option[List[SdtmClassVariableRefElement]]
)
object SdtmClassVariablesLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object, var_classVariables: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion,"classVariables":$var_classVariables
        | }
        """.stripMargin
}
