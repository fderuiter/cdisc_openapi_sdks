
package org.openapitools.client.model


case class QrsResponsegroupsLinks (
    _self: Option[QrsResponsegroupsRef],
    _responsegroups: Option[List[QrsResponsegroupRefElement]]
)
object QrsResponsegroupsLinks {
    def toStringBody(var_self: Object, var_responsegroups: Object) =
        s"""
        | {
        | "self":$var_self,"responsegroups":$var_responsegroups
        | }
        """.stripMargin
}
