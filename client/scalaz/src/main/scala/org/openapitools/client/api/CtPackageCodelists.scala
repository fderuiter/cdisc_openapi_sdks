package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageCodelists._

case class CtPackageCodelists (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CtPackageCodelistsLinks])

object CtPackageCodelists {
  import DateTimeCodecs._

  implicit val CtPackageCodelistsCodecJson: CodecJson[CtPackageCodelists] = CodecJson.derive[CtPackageCodelists]
  implicit val CtPackageCodelistsDecoder: EntityDecoder[CtPackageCodelists] = jsonOf[CtPackageCodelists]
  implicit val CtPackageCodelistsEncoder: EntityEncoder[CtPackageCodelists] = jsonEncoderOf[CtPackageCodelists]
}
