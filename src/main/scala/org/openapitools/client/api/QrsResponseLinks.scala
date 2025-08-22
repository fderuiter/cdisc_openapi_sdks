package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponseLinks._

case class QrsResponseLinks (
  qrsResponseORRES: Option[RootCtTermRef],
qrsResponseORRESU: Option[RootCtTermRef],
qrsResponseSTRESC: Option[RootCtTermRef],
qrsResponseSTRESCU: Option[RootCtTermRef])

object QrsResponseLinks {
  import DateTimeCodecs._

  implicit val QrsResponseLinksCodecJson: CodecJson[QrsResponseLinks] = CodecJson.derive[QrsResponseLinks]
  implicit val QrsResponseLinksDecoder: EntityDecoder[QrsResponseLinks] = jsonOf[QrsResponseLinks]
  implicit val QrsResponseLinksEncoder: EntityEncoder[QrsResponseLinks] = jsonEncoderOf[QrsResponseLinks]
}
