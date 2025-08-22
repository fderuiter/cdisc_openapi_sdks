package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductClasses._

case class CdashProductClasses (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashProductClassesLinks])

object CdashProductClasses {
  import DateTimeCodecs._

  implicit val CdashProductClassesCodecJson: CodecJson[CdashProductClasses] = CodecJson.derive[CdashProductClasses]
  implicit val CdashProductClassesDecoder: EntityDecoder[CdashProductClasses] = jsonOf[CdashProductClasses]
  implicit val CdashProductClassesEncoder: EntityEncoder[CdashProductClasses] = jsonEncoderOf[CdashProductClasses]
}
