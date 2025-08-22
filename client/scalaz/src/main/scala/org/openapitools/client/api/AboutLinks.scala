package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AboutLinks._

case class AboutLinks (
  self: Option[AboutRef],
lastupdated: Option[LastupdatedRef])

object AboutLinks {
  import DateTimeCodecs._

  implicit val AboutLinksCodecJson: CodecJson[AboutLinks] = CodecJson.derive[AboutLinks]
  implicit val AboutLinksDecoder: EntityDecoder[AboutLinks] = jsonOf[AboutLinks]
  implicit val AboutLinksEncoder: EntityEncoder[AboutLinks] = jsonEncoderOf[AboutLinks]
}
