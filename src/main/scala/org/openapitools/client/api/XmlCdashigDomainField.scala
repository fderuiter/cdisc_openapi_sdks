package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigDomainField._

case class XmlCdashigDomainField (
  self: Option[CdashigDomainField])

object XmlCdashigDomainField {
  import DateTimeCodecs._

  implicit val XmlCdashigDomainFieldCodecJson: CodecJson[XmlCdashigDomainField] = CodecJson.derive[XmlCdashigDomainField]
  implicit val XmlCdashigDomainFieldDecoder: EntityDecoder[XmlCdashigDomainField] = jsonOf[XmlCdashigDomainField]
  implicit val XmlCdashigDomainFieldEncoder: EntityEncoder[XmlCdashigDomainField] = jsonEncoderOf[XmlCdashigDomainField]
}
