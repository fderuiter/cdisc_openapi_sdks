package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAbout._

case class XmlAbout (
  self: Option[About])

object XmlAbout {
  import DateTimeCodecs._

  implicit val XmlAboutCodecJson: CodecJson[XmlAbout] = CodecJson.derive[XmlAbout]
  implicit val XmlAboutDecoder: EntityDecoder[XmlAbout] = jsonOf[XmlAbout]
  implicit val XmlAboutEncoder: EntityEncoder[XmlAbout] = jsonEncoderOf[XmlAbout]
}
