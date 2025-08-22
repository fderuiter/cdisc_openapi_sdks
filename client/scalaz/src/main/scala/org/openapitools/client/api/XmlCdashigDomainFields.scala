package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigDomainFields._

case class XmlCdashigDomainFields (
  self: Option[CdashigDomainFields])

object XmlCdashigDomainFields {
  import DateTimeCodecs._

  implicit val XmlCdashigDomainFieldsCodecJson: CodecJson[XmlCdashigDomainFields] = CodecJson.derive[XmlCdashigDomainFields]
  implicit val XmlCdashigDomainFieldsDecoder: EntityDecoder[XmlCdashigDomainFields] = jsonOf[XmlCdashigDomainFields]
  implicit val XmlCdashigDomainFieldsEncoder: EntityEncoder[XmlCdashigDomainFields] = jsonEncoderOf[XmlCdashigDomainFields]
}
