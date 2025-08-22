package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupDataTabulationLinks._

case class ProductgroupDataTabulationLinks (
  self: Option[ProductgroupRef],
sdtm: Option[List[SdtmProductRefElement]],
sdtmig: Option[List[SdtmigProductRefElement]],
sendig: Option[List[SendigProductRefElement]])

object ProductgroupDataTabulationLinks {
  import DateTimeCodecs._

  implicit val ProductgroupDataTabulationLinksCodecJson: CodecJson[ProductgroupDataTabulationLinks] = CodecJson.derive[ProductgroupDataTabulationLinks]
  implicit val ProductgroupDataTabulationLinksDecoder: EntityDecoder[ProductgroupDataTabulationLinks] = jsonOf[ProductgroupDataTabulationLinks]
  implicit val ProductgroupDataTabulationLinksEncoder: EntityEncoder[ProductgroupDataTabulationLinks] = jsonEncoderOf[ProductgroupDataTabulationLinks]
}
