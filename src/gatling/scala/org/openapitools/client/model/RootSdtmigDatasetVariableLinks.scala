
package org.openapitools.client.model


case class RootSdtmigDatasetVariableLinks (
    _self: Option[RootSdtmigDatasetVariableRef],
    _versions: Option[List[SdtmigDatasetVariableRefVersion]]
)
object RootSdtmigDatasetVariableLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
