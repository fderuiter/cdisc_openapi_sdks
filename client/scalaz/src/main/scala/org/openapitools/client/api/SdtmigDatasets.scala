package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasets._

case class SdtmigDatasets (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmigDatasetsLinks])

object SdtmigDatasets {
  import DateTimeCodecs._

  implicit val SdtmigDatasetsCodecJson: CodecJson[SdtmigDatasets] = CodecJson.derive[SdtmigDatasets]
  implicit val SdtmigDatasetsDecoder: EntityDecoder[SdtmigDatasets] = jsonOf[SdtmigDatasets]
  implicit val SdtmigDatasetsEncoder: EntityEncoder[SdtmigDatasets] = jsonEncoderOf[SdtmigDatasets]
}
