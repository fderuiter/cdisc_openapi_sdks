package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCdashDomainField._

case class XmlRootCdashDomainField (
  self: Option[RootCdashDomainField])

object XmlRootCdashDomainField {
  import DateTimeCodecs._

  implicit val XmlRootCdashDomainFieldCodecJson: CodecJson[XmlRootCdashDomainField] = CodecJson.derive[XmlRootCdashDomainField]
  implicit val XmlRootCdashDomainFieldDecoder: EntityDecoder[XmlRootCdashDomainField] = jsonOf[XmlRootCdashDomainField]
  implicit val XmlRootCdashDomainFieldEncoder: EntityEncoder[XmlRootCdashDomainField] = jsonEncoderOf[XmlRootCdashDomainField]
}
