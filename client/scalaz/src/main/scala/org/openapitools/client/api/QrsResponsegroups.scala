package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponsegroups._

case class QrsResponsegroups (
  name: Option[String],
label: Option[String],
description: Option[String],
effectiveDate: Option[String],
untilDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
qrsType: Option[String],
links: Option[QrsResponsegroupsLinks])

object QrsResponsegroups {
  import DateTimeCodecs._

  implicit val QrsResponsegroupsCodecJson: CodecJson[QrsResponsegroups] = CodecJson.derive[QrsResponsegroups]
  implicit val QrsResponsegroupsDecoder: EntityDecoder[QrsResponsegroups] = jsonOf[QrsResponsegroups]
  implicit val QrsResponsegroupsEncoder: EntityEncoder[QrsResponsegroups] = jsonEncoderOf[QrsResponsegroups]
}
