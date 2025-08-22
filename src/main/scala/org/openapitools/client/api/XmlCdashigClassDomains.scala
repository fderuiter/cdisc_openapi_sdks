package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigClassDomains._

case class XmlCdashigClassDomains (
  self: Option[CdashigClassDomains])

object XmlCdashigClassDomains {
  import DateTimeCodecs._

  implicit val XmlCdashigClassDomainsCodecJson: CodecJson[XmlCdashigClassDomains] = CodecJson.derive[XmlCdashigClassDomains]
  implicit val XmlCdashigClassDomainsDecoder: EntityDecoder[XmlCdashigClassDomains] = jsonOf[XmlCdashigClassDomains]
  implicit val XmlCdashigClassDomainsEncoder: EntityEncoder[XmlCdashigClassDomains] = jsonEncoderOf[XmlCdashigClassDomains]
}
