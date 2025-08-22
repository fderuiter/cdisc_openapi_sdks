package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MaintenanceBody._

case class MaintenanceBody (
  maintenanceMode: Option[Boolean],
maintenanceMessage: Option[String])

object MaintenanceBody {
  import DateTimeCodecs._

  implicit val MaintenanceBodyCodecJson: CodecJson[MaintenanceBody] = CodecJson.derive[MaintenanceBody]
  implicit val MaintenanceBodyDecoder: EntityDecoder[MaintenanceBody] = jsonOf[MaintenanceBody]
  implicit val MaintenanceBodyEncoder: EntityEncoder[MaintenanceBody] = jsonEncoderOf[MaintenanceBody]
}
