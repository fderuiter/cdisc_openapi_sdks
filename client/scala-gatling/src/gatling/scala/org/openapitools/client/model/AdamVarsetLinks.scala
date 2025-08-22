
package org.openapitools.client.model


case class AdamVarsetLinks (
    _self: Option[AdamVarsetRef],
    _parentProduct: Option[AdamProductRef],
    _parentDatastructure: Option[AdamDatastructureRef],
    _priorVersion: Option[AdamVarsetRef]
)
object AdamVarsetLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentDatastructure: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentDatastructure":$var_parentDatastructure,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
