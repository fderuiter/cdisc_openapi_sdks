#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "MaintenanceBody.h"

using namespace std;
using namespace Tizen::ArtikCloud;

MaintenanceBody::MaintenanceBody()
{
	//__init();
}

MaintenanceBody::~MaintenanceBody()
{
	//__cleanup();
}

void
MaintenanceBody::__init()
{
	//maintenanceMode = bool(false);
	//maintenanceMessage = std::string();
}

void
MaintenanceBody::__cleanup()
{
	//if(maintenanceMode != NULL) {
	//
	//delete maintenanceMode;
	//maintenanceMode = NULL;
	//}
	//if(maintenanceMessage != NULL) {
	//
	//delete maintenanceMessage;
	//maintenanceMessage = NULL;
	//}
	//
}

void
MaintenanceBody::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *maintenanceModeKey = "maintenanceMode";
	node = json_object_get_member(pJsonObject, maintenanceModeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&maintenanceMode, node, "bool", "");
		} else {
			
		}
	}
	const gchar *maintenanceMessageKey = "maintenanceMessage";
	node = json_object_get_member(pJsonObject, maintenanceMessageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&maintenanceMessage, node, "std::string", "");
		} else {
			
		}
	}
}

MaintenanceBody::MaintenanceBody(char* json)
{
	this->fromJson(json);
}

char*
MaintenanceBody::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getMaintenanceMode();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *maintenanceModeKey = "maintenanceMode";
	json_object_set_member(pJsonObject, maintenanceModeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMaintenanceMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *maintenanceMessageKey = "maintenanceMessage";
	json_object_set_member(pJsonObject, maintenanceMessageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
MaintenanceBody::getMaintenanceMode()
{
	return maintenanceMode;
}

void
MaintenanceBody::setMaintenanceMode(bool  maintenanceMode)
{
	this->maintenanceMode = maintenanceMode;
}

std::string
MaintenanceBody::getMaintenanceMessage()
{
	return maintenanceMessage;
}

void
MaintenanceBody::setMaintenanceMessage(std::string  maintenanceMessage)
{
	this->maintenanceMessage = maintenanceMessage;
}


