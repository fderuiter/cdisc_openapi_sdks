package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlQrsItems._

case class XmlQrsItems (
  self: Option[QrsItems])

object XmlQrsItems {
  import DateTimeCodecs._

  implicit val XmlQrsItemsCodecJson: CodecJson[XmlQrsItems] = CodecJson.derive[XmlQrsItems]
  implicit val XmlQrsItemsDecoder: EntityDecoder[XmlQrsItems] = jsonOf[XmlQrsItems]
  implicit val XmlQrsItemsEncoder: EntityEncoder[XmlQrsItems] = jsonEncoderOf[XmlQrsItems]
}
