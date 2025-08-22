
package org.openapitools.client.model


case class RootSdtmClassVariableLinks (
    _self: Option[RootSdtmClassVariableRef],
    _versions: Option[List[SdtmClassVariableRefVersion]]
)
object RootSdtmClassVariableLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
