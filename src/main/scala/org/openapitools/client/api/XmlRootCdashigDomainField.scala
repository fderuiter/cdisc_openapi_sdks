package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCdashigDomainField._

case class XmlRootCdashigDomainField (
  self: Option[RootCdashigDomainField])

object XmlRootCdashigDomainField {
  import DateTimeCodecs._

  implicit val XmlRootCdashigDomainFieldCodecJson: CodecJson[XmlRootCdashigDomainField] = CodecJson.derive[XmlRootCdashigDomainField]
  implicit val XmlRootCdashigDomainFieldDecoder: EntityDecoder[XmlRootCdashigDomainField] = jsonOf[XmlRootCdashigDomainField]
  implicit val XmlRootCdashigDomainFieldEncoder: EntityEncoder[XmlRootCdashigDomainField] = jsonEncoderOf[XmlRootCdashigDomainField]
}
