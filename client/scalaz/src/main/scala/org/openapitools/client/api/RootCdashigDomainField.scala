package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigDomainField._

case class RootCdashigDomainField (
  links: Option[RootCdashigDomainFieldLinks])

object RootCdashigDomainField {
  import DateTimeCodecs._

  implicit val RootCdashigDomainFieldCodecJson: CodecJson[RootCdashigDomainField] = CodecJson.derive[RootCdashigDomainField]
  implicit val RootCdashigDomainFieldDecoder: EntityDecoder[RootCdashigDomainField] = jsonOf[RootCdashigDomainField]
  implicit val RootCdashigDomainFieldEncoder: EntityEncoder[RootCdashigDomainField] = jsonEncoderOf[RootCdashigDomainField]
}
