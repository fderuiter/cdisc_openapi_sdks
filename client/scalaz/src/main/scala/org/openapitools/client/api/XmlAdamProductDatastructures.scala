package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamProductDatastructures._

case class XmlAdamProductDatastructures (
  self: Option[AdamProductDatastructures])

object XmlAdamProductDatastructures {
  import DateTimeCodecs._

  implicit val XmlAdamProductDatastructuresCodecJson: CodecJson[XmlAdamProductDatastructures] = CodecJson.derive[XmlAdamProductDatastructures]
  implicit val XmlAdamProductDatastructuresDecoder: EntityDecoder[XmlAdamProductDatastructures] = jsonOf[XmlAdamProductDatastructures]
  implicit val XmlAdamProductDatastructuresEncoder: EntityEncoder[XmlAdamProductDatastructures] = jsonEncoderOf[XmlAdamProductDatastructures]
}
