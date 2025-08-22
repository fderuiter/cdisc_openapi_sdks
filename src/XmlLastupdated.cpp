#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlLastupdated.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlLastupdated::XmlLastupdated()
{
	//__init();
}

XmlLastupdated::~XmlLastupdated()
{
	//__cleanup();
}

void
XmlLastupdated::__init()
{
	//self = new Lastupdated();
}

void
XmlLastupdated::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlLastupdated::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("Lastupdated")) {
			jsonToValue(&self, node, "Lastupdated", "Lastupdated");
		} else {
			
			Lastupdated* obj = static_cast<Lastupdated*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlLastupdated::XmlLastupdated(char* json)
{
	this->fromJson(json);
}

char*
XmlLastupdated::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Lastupdated")) {
		Lastupdated obj = getSelf();
		node = converttoJson(&obj, "Lastupdated", "");
	}
	else {
		
		Lastupdated obj = static_cast<Lastupdated> (getSelf());
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

Lastupdated
XmlLastupdated::getSelf()
{
	return self;
}

void
XmlLastupdated::setSelf(Lastupdated  self)
{
	this->self = self;
}


