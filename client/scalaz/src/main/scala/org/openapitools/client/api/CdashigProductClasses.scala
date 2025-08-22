package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductClasses._

case class CdashigProductClasses (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashigProductClassesLinks])

object CdashigProductClasses {
  import DateTimeCodecs._

  implicit val CdashigProductClassesCodecJson: CodecJson[CdashigProductClasses] = CodecJson.derive[CdashigProductClasses]
  implicit val CdashigProductClassesDecoder: EntityDecoder[CdashigProductClasses] = jsonOf[CdashigProductClasses]
  implicit val CdashigProductClassesEncoder: EntityEncoder[CdashigProductClasses] = jsonEncoderOf[CdashigProductClasses]
}
