
package org.openapitools.client.model


case class SdtmClassVariableLinks (
    _self: Option[SdtmClassVariableRef],
    _parentProduct: Option[SdtmProductRef],
    _parentClass: Option[SdtmClassRef],
    _qualifiesVariables: Option[List[SdtmClassVariableRefQualifies]],
    _rootItem: Option[RootSdtmClassVariableRef],
    _priorVersion: Option[SdtmClassVariableRef]
)
object SdtmClassVariableLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_qualifiesVariables: Object, var_rootItem: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"qualifiesVariables":$var_qualifiesVariables,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
