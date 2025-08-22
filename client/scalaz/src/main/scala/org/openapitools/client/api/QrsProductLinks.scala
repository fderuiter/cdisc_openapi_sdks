package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsProductLinks._

case class QrsProductLinks (
  self: Option[QrsProductRef],
priorVersion: Option[QrsProductRef],
qrsTermCAT: Option[RootCtTermRef],
qrsItems: Option[QrsItemsRef])

object QrsProductLinks {
  import DateTimeCodecs._

  implicit val QrsProductLinksCodecJson: CodecJson[QrsProductLinks] = CodecJson.derive[QrsProductLinks]
  implicit val QrsProductLinksDecoder: EntityDecoder[QrsProductLinks] = jsonOf[QrsProductLinks]
  implicit val QrsProductLinksEncoder: EntityEncoder[QrsProductLinks] = jsonEncoderOf[QrsProductLinks]
}
