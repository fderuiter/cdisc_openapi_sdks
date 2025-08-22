package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashDomain._

case class XmlCdashDomain (
  self: Option[CdashDomain])

object XmlCdashDomain {
  import DateTimeCodecs._

  implicit val XmlCdashDomainCodecJson: CodecJson[XmlCdashDomain] = CodecJson.derive[XmlCdashDomain]
  implicit val XmlCdashDomainDecoder: EntityDecoder[XmlCdashDomain] = jsonOf[XmlCdashDomain]
  implicit val XmlCdashDomainEncoder: EntityEncoder[XmlCdashDomain] = jsonEncoderOf[XmlCdashDomain]
}
