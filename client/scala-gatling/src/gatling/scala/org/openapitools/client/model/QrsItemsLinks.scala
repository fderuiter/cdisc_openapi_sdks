
package org.openapitools.client.model


case class QrsItemsLinks (
    _self: Option[QrsItemsRef],
    _parentProduct: Option[QrsProductRef],
    _items: Option[List[QrsItemRefElement]]
)
object QrsItemsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_items: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"items":$var_items
        | }
        """.stripMargin
}
