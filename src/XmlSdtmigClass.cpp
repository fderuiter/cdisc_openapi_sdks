#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigClass::XmlSdtmigClass()
{
	//__init();
}

XmlSdtmigClass::~XmlSdtmigClass()
{
	//__cleanup();
}

void
XmlSdtmigClass::__init()
{
	//self = new SdtmigClass();
}

void
XmlSdtmigClass::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigClass::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClass")) {
			jsonToValue(&self, node, "SdtmigClass", "SdtmigClass");
		} else {
			
			SdtmigClass* obj = static_cast<SdtmigClass*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigClass::XmlSdtmigClass(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigClass::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClass")) {
		SdtmigClass obj = getSelf();
		node = converttoJson(&obj, "SdtmigClass", "");
	}
	else {
		
		SdtmigClass obj = static_cast<SdtmigClass> (getSelf());
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

SdtmigClass
XmlSdtmigClass::getSelf()
{
	return self;
}

void
XmlSdtmigClass::setSelf(SdtmigClass  self)
{
	this->self = self;
}


