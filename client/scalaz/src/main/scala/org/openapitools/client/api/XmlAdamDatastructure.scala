package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamDatastructure._

case class XmlAdamDatastructure (
  self: Option[AdamDatastructure])

object XmlAdamDatastructure {
  import DateTimeCodecs._

  implicit val XmlAdamDatastructureCodecJson: CodecJson[XmlAdamDatastructure] = CodecJson.derive[XmlAdamDatastructure]
  implicit val XmlAdamDatastructureDecoder: EntityDecoder[XmlAdamDatastructure] = jsonOf[XmlAdamDatastructure]
  implicit val XmlAdamDatastructureEncoder: EntityEncoder[XmlAdamDatastructure] = jsonEncoderOf[XmlAdamDatastructure]
}
