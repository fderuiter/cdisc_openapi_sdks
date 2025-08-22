package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupTerminologyLinks._

case class ProductgroupTerminologyLinks (
  self: Option[ProductgroupRef],
packages: Option[List[CtPackageRefElement]])

object ProductgroupTerminologyLinks {
  import DateTimeCodecs._

  implicit val ProductgroupTerminologyLinksCodecJson: CodecJson[ProductgroupTerminologyLinks] = CodecJson.derive[ProductgroupTerminologyLinks]
  implicit val ProductgroupTerminologyLinksDecoder: EntityDecoder[ProductgroupTerminologyLinks] = jsonOf[ProductgroupTerminologyLinks]
  implicit val ProductgroupTerminologyLinksEncoder: EntityEncoder[ProductgroupTerminologyLinks] = jsonEncoderOf[ProductgroupTerminologyLinks]
}
