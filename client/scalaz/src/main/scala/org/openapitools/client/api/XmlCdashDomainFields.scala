package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashDomainFields._

case class XmlCdashDomainFields (
  self: Option[CdashDomainFields])

object XmlCdashDomainFields {
  import DateTimeCodecs._

  implicit val XmlCdashDomainFieldsCodecJson: CodecJson[XmlCdashDomainFields] = CodecJson.derive[XmlCdashDomainFields]
  implicit val XmlCdashDomainFieldsDecoder: EntityDecoder[XmlCdashDomainFields] = jsonOf[XmlCdashDomainFields]
  implicit val XmlCdashDomainFieldsEncoder: EntityEncoder[XmlCdashDomainFields] = jsonEncoderOf[XmlCdashDomainFields]
}
