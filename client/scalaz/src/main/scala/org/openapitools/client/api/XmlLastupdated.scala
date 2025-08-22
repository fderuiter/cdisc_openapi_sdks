package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlLastupdated._

case class XmlLastupdated (
  self: Option[Lastupdated])

object XmlLastupdated {
  import DateTimeCodecs._

  implicit val XmlLastupdatedCodecJson: CodecJson[XmlLastupdated] = CodecJson.derive[XmlLastupdated]
  implicit val XmlLastupdatedDecoder: EntityDecoder[XmlLastupdated] = jsonOf[XmlLastupdated]
  implicit val XmlLastupdatedEncoder: EntityEncoder[XmlLastupdated] = jsonEncoderOf[XmlLastupdated]
}
