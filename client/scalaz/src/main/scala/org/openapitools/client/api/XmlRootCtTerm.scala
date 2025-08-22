package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCtTerm._

case class XmlRootCtTerm (
  self: Option[RootCtTerm])

object XmlRootCtTerm {
  import DateTimeCodecs._

  implicit val XmlRootCtTermCodecJson: CodecJson[XmlRootCtTerm] = CodecJson.derive[XmlRootCtTerm]
  implicit val XmlRootCtTermDecoder: EntityDecoder[XmlRootCtTerm] = jsonOf[XmlRootCtTerm]
  implicit val XmlRootCtTermEncoder: EntityEncoder[XmlRootCtTerm] = jsonEncoderOf[XmlRootCtTerm]
}
