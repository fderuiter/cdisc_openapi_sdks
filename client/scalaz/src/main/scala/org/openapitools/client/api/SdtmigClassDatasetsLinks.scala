package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassDatasetsLinks._

case class SdtmigClassDatasetsLinks (
  self: Option[SdtmigClassDatasetsRef],
parentProduct: Option[SdtmigProductRef],
priorVersion: Option[SdtmigClassDatasetsRef],
datasets: Option[List[SdtmigDatasetRefElement]])

object SdtmigClassDatasetsLinks {
  import DateTimeCodecs._

  implicit val SdtmigClassDatasetsLinksCodecJson: CodecJson[SdtmigClassDatasetsLinks] = CodecJson.derive[SdtmigClassDatasetsLinks]
  implicit val SdtmigClassDatasetsLinksDecoder: EntityDecoder[SdtmigClassDatasetsLinks] = jsonOf[SdtmigClassDatasetsLinks]
  implicit val SdtmigClassDatasetsLinksEncoder: EntityEncoder[SdtmigClassDatasetsLinks] = jsonEncoderOf[SdtmigClassDatasetsLinks]
}
