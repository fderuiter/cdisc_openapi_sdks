
package org.openapitools.client.model


case class RootSdtmClassVariable (
    _links: Option[RootSdtmClassVariableLinks]
)
object RootSdtmClassVariable {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}
