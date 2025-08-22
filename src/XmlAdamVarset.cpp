#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamVarset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamVarset::XmlAdamVarset()
{
	//__init();
}

XmlAdamVarset::~XmlAdamVarset()
{
	//__cleanup();
}

void
XmlAdamVarset::__init()
{
	//self = new AdamVarset();
}

void
XmlAdamVarset::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamVarset::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVarset")) {
			jsonToValue(&self, node, "AdamVarset", "AdamVarset");
		} else {
			
			AdamVarset* obj = static_cast<AdamVarset*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamVarset::XmlAdamVarset(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamVarset::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamVarset")) {
		AdamVarset obj = getSelf();
		node = converttoJson(&obj, "AdamVarset", "");
	}
	else {
		
		AdamVarset obj = static_cast<AdamVarset> (getSelf());
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

AdamVarset
XmlAdamVarset::getSelf()
{
	return self;
}

void
XmlAdamVarset::setSelf(AdamVarset  self)
{
	this->self = self;
}


