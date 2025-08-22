package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigDomain._

case class XmlCdashigDomain (
  self: Option[CdashigDomain])

object XmlCdashigDomain {
  import DateTimeCodecs._

  implicit val XmlCdashigDomainCodecJson: CodecJson[XmlCdashigDomain] = CodecJson.derive[XmlCdashigDomain]
  implicit val XmlCdashigDomainDecoder: EntityDecoder[XmlCdashigDomain] = jsonOf[XmlCdashigDomain]
  implicit val XmlCdashigDomainEncoder: EntityEncoder[XmlCdashigDomain] = jsonEncoderOf[XmlCdashigDomain]
}
