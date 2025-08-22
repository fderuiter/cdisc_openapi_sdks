package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItemLinks._

case class QrsItemLinks (
  qrsItemTEST: Option[RootCtTermRef],
qrsItemTESTCD: Option[RootCtTermRef],
qrsItemEVAL: Option[RootCtTermRef],
qrsItemSCAT: Option[RootCtTermRef],
responsegroup: Option[QrsResponsegroup])

object QrsItemLinks {
  import DateTimeCodecs._

  implicit val QrsItemLinksCodecJson: CodecJson[QrsItemLinks] = CodecJson.derive[QrsItemLinks]
  implicit val QrsItemLinksDecoder: EntityDecoder[QrsItemLinks] = jsonOf[QrsItemLinks]
  implicit val QrsItemLinksEncoder: EntityEncoder[QrsItemLinks] = jsonEncoderOf[QrsItemLinks]
}
