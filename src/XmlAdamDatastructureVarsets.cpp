#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamDatastructureVarsets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamDatastructureVarsets::XmlAdamDatastructureVarsets()
{
	//__init();
}

XmlAdamDatastructureVarsets::~XmlAdamDatastructureVarsets()
{
	//__cleanup();
}

void
XmlAdamDatastructureVarsets::__init()
{
	//self = new AdamDatastructureVarsets();
}

void
XmlAdamDatastructureVarsets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamDatastructureVarsets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVarsets")) {
			jsonToValue(&self, node, "AdamDatastructureVarsets", "AdamDatastructureVarsets");
		} else {
			
			AdamDatastructureVarsets* obj = static_cast<AdamDatastructureVarsets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamDatastructureVarsets::XmlAdamDatastructureVarsets(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamDatastructureVarsets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructureVarsets")) {
		AdamDatastructureVarsets obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructureVarsets", "");
	}
	else {
		
		AdamDatastructureVarsets obj = static_cast<AdamDatastructureVarsets> (getSelf());
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

AdamDatastructureVarsets
XmlAdamDatastructureVarsets::getSelf()
{
	return self;
}

void
XmlAdamDatastructureVarsets::setSelf(AdamDatastructureVarsets  self)
{
	this->self = self;
}


