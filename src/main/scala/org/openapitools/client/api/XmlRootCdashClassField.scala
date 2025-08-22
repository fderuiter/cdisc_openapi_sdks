package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCdashClassField._

case class XmlRootCdashClassField (
  self: Option[RootCdashClassField])

object XmlRootCdashClassField {
  import DateTimeCodecs._

  implicit val XmlRootCdashClassFieldCodecJson: CodecJson[XmlRootCdashClassField] = CodecJson.derive[XmlRootCdashClassField]
  implicit val XmlRootCdashClassFieldDecoder: EntityDecoder[XmlRootCdashClassField] = jsonOf[XmlRootCdashClassField]
  implicit val XmlRootCdashClassFieldEncoder: EntityEncoder[XmlRootCdashClassField] = jsonEncoderOf[XmlRootCdashClassField]
}
