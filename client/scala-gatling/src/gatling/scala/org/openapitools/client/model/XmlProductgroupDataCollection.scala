
package org.openapitools.client.model


case class XmlProductgroupDataCollection (
    _self: Option[ProductgroupDataCollection]
)
object XmlProductgroupDataCollection {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
