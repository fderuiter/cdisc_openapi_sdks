#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigDatasetVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigDatasetVariables::XmlSdtmigDatasetVariables()
{
	//__init();
}

XmlSdtmigDatasetVariables::~XmlSdtmigDatasetVariables()
{
	//__cleanup();
}

void
XmlSdtmigDatasetVariables::__init()
{
	//self = new SdtmigDatasetVariables();
}

void
XmlSdtmigDatasetVariables::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigDatasetVariables::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariables")) {
			jsonToValue(&self, node, "SdtmigDatasetVariables", "SdtmigDatasetVariables");
		} else {
			
			SdtmigDatasetVariables* obj = static_cast<SdtmigDatasetVariables*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigDatasetVariables::XmlSdtmigDatasetVariables(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigDatasetVariables::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasetVariables")) {
		SdtmigDatasetVariables obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasetVariables", "");
	}
	else {
		
		SdtmigDatasetVariables obj = static_cast<SdtmigDatasetVariables> (getSelf());
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

SdtmigDatasetVariables
XmlSdtmigDatasetVariables::getSelf()
{
	return self;
}

void
XmlSdtmigDatasetVariables::setSelf(SdtmigDatasetVariables  self)
{
	this->self = self;
}


