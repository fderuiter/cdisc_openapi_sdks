#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamProductDatastructures.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamProductDatastructures::XmlAdamProductDatastructures()
{
	//__init();
}

XmlAdamProductDatastructures::~XmlAdamProductDatastructures()
{
	//__cleanup();
}

void
XmlAdamProductDatastructures::__init()
{
	//self = new AdamProductDatastructures();
}

void
XmlAdamProductDatastructures::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamProductDatastructures::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductDatastructures")) {
			jsonToValue(&self, node, "AdamProductDatastructures", "AdamProductDatastructures");
		} else {
			
			AdamProductDatastructures* obj = static_cast<AdamProductDatastructures*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamProductDatastructures::XmlAdamProductDatastructures(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamProductDatastructures::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamProductDatastructures")) {
		AdamProductDatastructures obj = getSelf();
		node = converttoJson(&obj, "AdamProductDatastructures", "");
	}
	else {
		
		AdamProductDatastructures obj = static_cast<AdamProductDatastructures> (getSelf());
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

AdamProductDatastructures
XmlAdamProductDatastructures::getSelf()
{
	return self;
}

void
XmlAdamProductDatastructures::setSelf(AdamProductDatastructures  self)
{
	this->self = self;
}


