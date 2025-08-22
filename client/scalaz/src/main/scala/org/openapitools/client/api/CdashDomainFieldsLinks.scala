package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldsLinks._

case class CdashDomainFieldsLinks (
  self: Option[CdashDomainFieldsRef],
parentProduct: Option[CdashProductRef],
parentClass: Option[CdashClassRef],
fields: Option[List[CdashDomainFieldRefElement]])

object CdashDomainFieldsLinks {
  import DateTimeCodecs._

  implicit val CdashDomainFieldsLinksCodecJson: CodecJson[CdashDomainFieldsLinks] = CodecJson.derive[CdashDomainFieldsLinks]
  implicit val CdashDomainFieldsLinksDecoder: EntityDecoder[CdashDomainFieldsLinks] = jsonOf[CdashDomainFieldsLinks]
  implicit val CdashDomainFieldsLinksEncoder: EntityEncoder[CdashDomainFieldsLinks] = jsonEncoderOf[CdashDomainFieldsLinks]
}
