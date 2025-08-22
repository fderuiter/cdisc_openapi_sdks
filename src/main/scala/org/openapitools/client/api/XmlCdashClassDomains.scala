package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashClassDomains._

case class XmlCdashClassDomains (
  self: Option[CdashClassDomains])

object XmlCdashClassDomains {
  import DateTimeCodecs._

  implicit val XmlCdashClassDomainsCodecJson: CodecJson[XmlCdashClassDomains] = CodecJson.derive[XmlCdashClassDomains]
  implicit val XmlCdashClassDomainsDecoder: EntityDecoder[XmlCdashClassDomains] = jsonOf[XmlCdashClassDomains]
  implicit val XmlCdashClassDomainsEncoder: EntityEncoder[XmlCdashClassDomains] = jsonEncoderOf[XmlCdashClassDomains]
}
