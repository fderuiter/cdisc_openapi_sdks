package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlQrsItem._

case class XmlQrsItem (
  self: Option[QrsItem])

object XmlQrsItem {
  import DateTimeCodecs._

  implicit val XmlQrsItemCodecJson: CodecJson[XmlQrsItem] = CodecJson.derive[XmlQrsItem]
  implicit val XmlQrsItemDecoder: EntityDecoder[XmlQrsItem] = jsonOf[XmlQrsItem]
  implicit val XmlQrsItemEncoder: EntityEncoder[XmlQrsItem] = jsonEncoderOf[XmlQrsItem]
}
