#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmClass::XmlSdtmClass()
{
	//__init();
}

XmlSdtmClass::~XmlSdtmClass()
{
	//__cleanup();
}

void
XmlSdtmClass::__init()
{
	//self = new SdtmClass();
}

void
XmlSdtmClass::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmClass::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClass")) {
			jsonToValue(&self, node, "SdtmClass", "SdtmClass");
		} else {
			
			SdtmClass* obj = static_cast<SdtmClass*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmClass::XmlSdtmClass(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmClass::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClass")) {
		SdtmClass obj = getSelf();
		node = converttoJson(&obj, "SdtmClass", "");
	}
	else {
		
		SdtmClass obj = static_cast<SdtmClass> (getSelf());
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

SdtmClass
XmlSdtmClass::getSelf()
{
	return self;
}

void
XmlSdtmClass::setSelf(SdtmClass  self)
{
	this->self = self;
}


