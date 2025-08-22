#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmClasses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmClasses::XmlSdtmClasses()
{
	//__init();
}

XmlSdtmClasses::~XmlSdtmClasses()
{
	//__cleanup();
}

void
XmlSdtmClasses::__init()
{
	//self = new SdtmClasses();
}

void
XmlSdtmClasses::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmClasses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClasses")) {
			jsonToValue(&self, node, "SdtmClasses", "SdtmClasses");
		} else {
			
			SdtmClasses* obj = static_cast<SdtmClasses*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmClasses::XmlSdtmClasses(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmClasses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClasses")) {
		SdtmClasses obj = getSelf();
		node = converttoJson(&obj, "SdtmClasses", "");
	}
	else {
		
		SdtmClasses obj = static_cast<SdtmClasses> (getSelf());
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

SdtmClasses
XmlSdtmClasses::getSelf()
{
	return self;
}

void
XmlSdtmClasses::setSelf(SdtmClasses  self)
{
	this->self = self;
}


