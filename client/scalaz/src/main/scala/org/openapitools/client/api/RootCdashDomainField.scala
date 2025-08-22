package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashDomainField._

case class RootCdashDomainField (
  links: Option[RootCdashDomainFieldLinks])

object RootCdashDomainField {
  import DateTimeCodecs._

  implicit val RootCdashDomainFieldCodecJson: CodecJson[RootCdashDomainField] = CodecJson.derive[RootCdashDomainField]
  implicit val RootCdashDomainFieldDecoder: EntityDecoder[RootCdashDomainField] = jsonOf[RootCdashDomainField]
  implicit val RootCdashDomainFieldEncoder: EntityEncoder[RootCdashDomainField] = jsonEncoderOf[RootCdashDomainField]
}
