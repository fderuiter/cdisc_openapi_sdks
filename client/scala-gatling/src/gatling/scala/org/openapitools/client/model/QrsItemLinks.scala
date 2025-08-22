
package org.openapitools.client.model


case class QrsItemLinks (
    _qrsItemTEST: Option[RootCtTermRef],
    _qrsItemTESTCD: Option[RootCtTermRef],
    _qrsItemEVAL: Option[RootCtTermRef],
    _qrsItemSCAT: Option[RootCtTermRef],
    _responsegroup: Option[QrsResponsegroup]
)
object QrsItemLinks {
    def toStringBody(var_qrsItemTEST: Object, var_qrsItemTESTCD: Object, var_qrsItemEVAL: Object, var_qrsItemSCAT: Object, var_responsegroup: Object) =
        s"""
        | {
        | "qrsItemTEST":$var_qrsItemTEST,"qrsItemTESTCD":$var_qrsItemTESTCD,"qrsItemEVAL":$var_qrsItemEVAL,"qrsItemSCAT":$var_qrsItemSCAT,"responsegroup":$var_responsegroup
        | }
        """.stripMargin
}
