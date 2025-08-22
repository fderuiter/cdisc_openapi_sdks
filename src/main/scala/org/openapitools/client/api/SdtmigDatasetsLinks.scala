package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetsLinks._

case class SdtmigDatasetsLinks (
  self: Option[SdtmigDatasetsRef],
parentProduct: Option[SdtmigProductRef],
priorVersion: Option[SdtmigDatasetsRef],
datasets: Option[List[SdtmigDatasetRefElement]])

object SdtmigDatasetsLinks {
  import DateTimeCodecs._

  implicit val SdtmigDatasetsLinksCodecJson: CodecJson[SdtmigDatasetsLinks] = CodecJson.derive[SdtmigDatasetsLinks]
  implicit val SdtmigDatasetsLinksDecoder: EntityDecoder[SdtmigDatasetsLinks] = jsonOf[SdtmigDatasetsLinks]
  implicit val SdtmigDatasetsLinksEncoder: EntityEncoder[SdtmigDatasetsLinks] = jsonEncoderOf[SdtmigDatasetsLinks]
}
