package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashProductDomains._

case class XmlCdashProductDomains (
  self: Option[CdashProductDomains])

object XmlCdashProductDomains {
  import DateTimeCodecs._

  implicit val XmlCdashProductDomainsCodecJson: CodecJson[XmlCdashProductDomains] = CodecJson.derive[XmlCdashProductDomains]
  implicit val XmlCdashProductDomainsDecoder: EntityDecoder[XmlCdashProductDomains] = jsonOf[XmlCdashProductDomains]
  implicit val XmlCdashProductDomainsEncoder: EntityEncoder[XmlCdashProductDomains] = jsonEncoderOf[XmlCdashProductDomains]
}
