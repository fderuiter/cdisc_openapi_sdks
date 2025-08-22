#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtPackages.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtPackages::XmlCtPackages()
{
	//__init();
}

XmlCtPackages::~XmlCtPackages()
{
	//__cleanup();
}

void
XmlCtPackages::__init()
{
	//self = new CtPackages();
}

void
XmlCtPackages::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtPackages::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackages")) {
			jsonToValue(&self, node, "CtPackages", "CtPackages");
		} else {
			
			CtPackages* obj = static_cast<CtPackages*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtPackages::XmlCtPackages(char* json)
{
	this->fromJson(json);
}

char*
XmlCtPackages::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackages")) {
		CtPackages obj = getSelf();
		node = converttoJson(&obj, "CtPackages", "");
	}
	else {
		
		CtPackages obj = static_cast<CtPackages> (getSelf());
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

CtPackages
XmlCtPackages::getSelf()
{
	return self;
}

void
XmlCtPackages::setSelf(CtPackages  self)
{
	this->self = self;
}


