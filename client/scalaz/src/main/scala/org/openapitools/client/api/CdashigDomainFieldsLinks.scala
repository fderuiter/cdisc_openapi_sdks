package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldsLinks._

case class CdashigDomainFieldsLinks (
  self: Option[CdashigDomainFieldsRef],
parentProduct: Option[CdashigProductRef],
parentClass: Option[CdashigClassRef],
fields: Option[List[CdashigDomainFieldRefElement]])

object CdashigDomainFieldsLinks {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldsLinksCodecJson: CodecJson[CdashigDomainFieldsLinks] = CodecJson.derive[CdashigDomainFieldsLinks]
  implicit val CdashigDomainFieldsLinksDecoder: EntityDecoder[CdashigDomainFieldsLinks] = jsonOf[CdashigDomainFieldsLinks]
  implicit val CdashigDomainFieldsLinksEncoder: EntityEncoder[CdashigDomainFieldsLinks] = jsonEncoderOf[CdashigDomainFieldsLinks]
}
