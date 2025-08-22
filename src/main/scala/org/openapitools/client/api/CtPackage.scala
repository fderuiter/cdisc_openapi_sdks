package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackage._

case class CtPackage (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CtPackageLinks],
codelists: Option[List[CtPackageCodelists]])

object CtPackage {
  import DateTimeCodecs._

  implicit val CtPackageCodecJson: CodecJson[CtPackage] = CodecJson.derive[CtPackage]
  implicit val CtPackageDecoder: EntityDecoder[CtPackage] = jsonOf[CtPackage]
  implicit val CtPackageEncoder: EntityEncoder[CtPackage] = jsonEncoderOf[CtPackage]
}
