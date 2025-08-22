#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtPackage.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtPackage::XmlCtPackage()
{
	//__init();
}

XmlCtPackage::~XmlCtPackage()
{
	//__cleanup();
}

void
XmlCtPackage::__init()
{
	//self = new CtPackage();
}

void
XmlCtPackage::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtPackage::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackage")) {
			jsonToValue(&self, node, "CtPackage", "CtPackage");
		} else {
			
			CtPackage* obj = static_cast<CtPackage*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtPackage::XmlCtPackage(char* json)
{
	this->fromJson(json);
}

char*
XmlCtPackage::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackage")) {
		CtPackage obj = getSelf();
		node = converttoJson(&obj, "CtPackage", "");
	}
	else {
		
		CtPackage obj = static_cast<CtPackage> (getSelf());
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

CtPackage
XmlCtPackage::getSelf()
{
	return self;
}

void
XmlCtPackage::setSelf(CtPackage  self)
{
	this->self = self;
}


