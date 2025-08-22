#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigClasses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigClasses::XmlSdtmigClasses()
{
	//__init();
}

XmlSdtmigClasses::~XmlSdtmigClasses()
{
	//__cleanup();
}

void
XmlSdtmigClasses::__init()
{
	//self = new SdtmigClasses();
}

void
XmlSdtmigClasses::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigClasses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClasses")) {
			jsonToValue(&self, node, "SdtmigClasses", "SdtmigClasses");
		} else {
			
			SdtmigClasses* obj = static_cast<SdtmigClasses*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigClasses::XmlSdtmigClasses(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigClasses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClasses")) {
		SdtmigClasses obj = getSelf();
		node = converttoJson(&obj, "SdtmigClasses", "");
	}
	else {
		
		SdtmigClasses obj = static_cast<SdtmigClasses> (getSelf());
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

SdtmigClasses
XmlSdtmigClasses::getSelf()
{
	return self;
}

void
XmlSdtmigClasses::setSelf(SdtmigClasses  self)
{
	this->self = self;
}


