
package org.openapitools.client.model


case class QrsResponsegroupLinks (
    _self: Option[QrsResponsegroupRef],
    _responses: Option[List[QrsResponses]]
)
object QrsResponsegroupLinks {
    def toStringBody(var_self: Object, var_responses: Object) =
        s"""
        | {
        | "self":$var_self,"responses":$var_responses
        | }
        """.stripMargin
}
