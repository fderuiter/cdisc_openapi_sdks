package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LastupdatedLinks._

case class LastupdatedLinks (
  self: Option[LastupdatedRef])

object LastupdatedLinks {
  import DateTimeCodecs._

  implicit val LastupdatedLinksCodecJson: CodecJson[LastupdatedLinks] = CodecJson.derive[LastupdatedLinks]
  implicit val LastupdatedLinksDecoder: EntityDecoder[LastupdatedLinks] = jsonOf[LastupdatedLinks]
  implicit val LastupdatedLinksEncoder: EntityEncoder[LastupdatedLinks] = jsonEncoderOf[LastupdatedLinks]
}
