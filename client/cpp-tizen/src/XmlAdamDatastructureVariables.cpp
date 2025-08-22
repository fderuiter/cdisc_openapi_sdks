#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamDatastructureVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamDatastructureVariables::XmlAdamDatastructureVariables()
{
	//__init();
}

XmlAdamDatastructureVariables::~XmlAdamDatastructureVariables()
{
	//__cleanup();
}

void
XmlAdamDatastructureVariables::__init()
{
	//self = new AdamDatastructureVariables();
}

void
XmlAdamDatastructureVariables::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamDatastructureVariables::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVariables")) {
			jsonToValue(&self, node, "AdamDatastructureVariables", "AdamDatastructureVariables");
		} else {
			
			AdamDatastructureVariables* obj = static_cast<AdamDatastructureVariables*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamDatastructureVariables::XmlAdamDatastructureVariables(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamDatastructureVariables::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructureVariables")) {
		AdamDatastructureVariables obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructureVariables", "");
	}
	else {
		
		AdamDatastructureVariables obj = static_cast<AdamDatastructureVariables> (getSelf());
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

AdamDatastructureVariables
XmlAdamDatastructureVariables::getSelf()
{
	return self;
}

void
XmlAdamDatastructureVariables::setSelf(AdamDatastructureVariables  self)
{
	this->self = self;
}


