package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashDomainField._

case class XmlCdashDomainField (
  self: Option[CdashDomainField])

object XmlCdashDomainField {
  import DateTimeCodecs._

  implicit val XmlCdashDomainFieldCodecJson: CodecJson[XmlCdashDomainField] = CodecJson.derive[XmlCdashDomainField]
  implicit val XmlCdashDomainFieldDecoder: EntityDecoder[XmlCdashDomainField] = jsonOf[XmlCdashDomainField]
  implicit val XmlCdashDomainFieldEncoder: EntityEncoder[XmlCdashDomainField] = jsonEncoderOf[XmlCdashDomainField]
}
