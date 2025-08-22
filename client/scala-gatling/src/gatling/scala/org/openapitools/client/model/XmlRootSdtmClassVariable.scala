
package org.openapitools.client.model


case class XmlRootSdtmClassVariable (
    _self: Option[RootSdtmClassVariable]
)
object XmlRootSdtmClassVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
