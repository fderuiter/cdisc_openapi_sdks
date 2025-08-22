package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasets._

case class SdtmDatasets (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmDatasetsLinks])

object SdtmDatasets {
  import DateTimeCodecs._

  implicit val SdtmDatasetsCodecJson: CodecJson[SdtmDatasets] = CodecJson.derive[SdtmDatasets]
  implicit val SdtmDatasetsDecoder: EntityDecoder[SdtmDatasets] = jsonOf[SdtmDatasets]
  implicit val SdtmDatasetsEncoder: EntityEncoder[SdtmDatasets] = jsonEncoderOf[SdtmDatasets]
}
