package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItem._

case class QrsItem (
  ordinal: Option[String],
label: Option[String],
questionText: Option[String],
links: Option[QrsItemLinks])

object QrsItem {
  import DateTimeCodecs._

  implicit val QrsItemCodecJson: CodecJson[QrsItem] = CodecJson.derive[QrsItem]
  implicit val QrsItemDecoder: EntityDecoder[QrsItem] = jsonOf[QrsItem]
  implicit val QrsItemEncoder: EntityEncoder[QrsItem] = jsonEncoderOf[QrsItem]
}
