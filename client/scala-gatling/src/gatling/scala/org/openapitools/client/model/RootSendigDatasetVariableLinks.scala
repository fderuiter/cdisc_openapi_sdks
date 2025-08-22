
package org.openapitools.client.model


case class RootSendigDatasetVariableLinks (
    _self: Option[RootSendigDatasetVariableRef],
    _versions: Option[List[SendigDatasetVariableRefVersion]]
)
object RootSendigDatasetVariableLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
