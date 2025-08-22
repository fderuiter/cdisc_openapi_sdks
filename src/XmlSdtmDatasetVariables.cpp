#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmDatasetVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmDatasetVariables::XmlSdtmDatasetVariables()
{
	//__init();
}

XmlSdtmDatasetVariables::~XmlSdtmDatasetVariables()
{
	//__cleanup();
}

void
XmlSdtmDatasetVariables::__init()
{
	//self = new SdtmDatasetVariables();
}

void
XmlSdtmDatasetVariables::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmDatasetVariables::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariables")) {
			jsonToValue(&self, node, "SdtmDatasetVariables", "SdtmDatasetVariables");
		} else {
			
			SdtmDatasetVariables* obj = static_cast<SdtmDatasetVariables*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmDatasetVariables::XmlSdtmDatasetVariables(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmDatasetVariables::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasetVariables")) {
		SdtmDatasetVariables obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasetVariables", "");
	}
	else {
		
		SdtmDatasetVariables obj = static_cast<SdtmDatasetVariables> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmDatasetVariables
XmlSdtmDatasetVariables::getSelf()
{
	return self;
}

void
XmlSdtmDatasetVariables::setSelf(SdtmDatasetVariables  self)
{
	this->self = self;
}


