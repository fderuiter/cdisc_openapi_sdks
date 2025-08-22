#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmClassVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmClassVariables::XmlSdtmClassVariables()
{
	//__init();
}

XmlSdtmClassVariables::~XmlSdtmClassVariables()
{
	//__cleanup();
}

void
XmlSdtmClassVariables::__init()
{
	//self = new SdtmClassVariables();
}

void
XmlSdtmClassVariables::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmClassVariables::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariables")) {
			jsonToValue(&self, node, "SdtmClassVariables", "SdtmClassVariables");
		} else {
			
			SdtmClassVariables* obj = static_cast<SdtmClassVariables*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmClassVariables::XmlSdtmClassVariables(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmClassVariables::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassVariables")) {
		SdtmClassVariables obj = getSelf();
		node = converttoJson(&obj, "SdtmClassVariables", "");
	}
	else {
		
		SdtmClassVariables obj = static_cast<SdtmClassVariables> (getSelf());
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

SdtmClassVariables
XmlSdtmClassVariables::getSelf()
{
	return self;
}

void
XmlSdtmClassVariables::setSelf(SdtmClassVariables  self)
{
	this->self = self;
}


