
package org.openapitools.client.model


case class AdamVariableLinks (
    _self: Option[AdamVariableRef],
    _codelist: Option[RootCtCodelistRef],
    _parentProduct: Option[AdamProductRef],
    _parentDatastructure: Option[AdamDatastructureRef],
    _parentVariableSet: Option[AdamVarsetRef],
    _priorVersion: Option[AdamVariableRef]
)
object AdamVariableLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_parentProduct: Object, var_parentDatastructure: Object, var_parentVariableSet: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"parentProduct":$var_parentProduct,"parentDatastructure":$var_parentDatastructure,"parentVariableSet":$var_parentVariableSet,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
