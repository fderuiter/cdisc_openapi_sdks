package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashClassField._

case class RootCdashClassField (
  links: Option[RootCdashClassFieldLinks])

object RootCdashClassField {
  import DateTimeCodecs._

  implicit val RootCdashClassFieldCodecJson: CodecJson[RootCdashClassField] = CodecJson.derive[RootCdashClassField]
  implicit val RootCdashClassFieldDecoder: EntityDecoder[RootCdashClassField] = jsonOf[RootCdashClassField]
  implicit val RootCdashClassFieldEncoder: EntityEncoder[RootCdashClassField] = jsonEncoderOf[RootCdashClassField]
}
