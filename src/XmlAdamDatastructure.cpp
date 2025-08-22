#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamDatastructure.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamDatastructure::XmlAdamDatastructure()
{
	//__init();
}

XmlAdamDatastructure::~XmlAdamDatastructure()
{
	//__cleanup();
}

void
XmlAdamDatastructure::__init()
{
	//self = new AdamDatastructure();
}

void
XmlAdamDatastructure::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamDatastructure::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructure")) {
			jsonToValue(&self, node, "AdamDatastructure", "AdamDatastructure");
		} else {
			
			AdamDatastructure* obj = static_cast<AdamDatastructure*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamDatastructure::XmlAdamDatastructure(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamDatastructure::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructure")) {
		AdamDatastructure obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructure", "");
	}
	else {
		
		AdamDatastructure obj = static_cast<AdamDatastructure> (getSelf());
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

AdamDatastructure
XmlAdamDatastructure::getSelf()
{
	return self;
}

void
XmlAdamDatastructure::setSelf(AdamDatastructure  self)
{
	this->self = self;
}


