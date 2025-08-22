
package org.openapitools.client.model


case class XmlRootSendigDatasetVariable (
    _self: Option[RootSendigDatasetVariable]
)
object XmlRootSendigDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
