
package org.openapitools.client.model


case class RootSdtmDatasetVariableLinks (
    _self: Option[RootSdtmDatasetVariableRef],
    _versions: Option[List[SdtmDatasetVariableRefVersion]]
)
object RootSdtmDatasetVariableLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
