#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCdashigScenarioField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCdashigScenarioField::XmlRootCdashigScenarioField()
{
	//__init();
}

XmlRootCdashigScenarioField::~XmlRootCdashigScenarioField()
{
	//__cleanup();
}

void
XmlRootCdashigScenarioField::__init()
{
	//self = new RootCdashigScenarioField();
}

void
XmlRootCdashigScenarioField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCdashigScenarioField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigScenarioField")) {
			jsonToValue(&self, node, "RootCdashigScenarioField", "RootCdashigScenarioField");
		} else {
			
			RootCdashigScenarioField* obj = static_cast<RootCdashigScenarioField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCdashigScenarioField::XmlRootCdashigScenarioField(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCdashigScenarioField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigScenarioField")) {
		RootCdashigScenarioField obj = getSelf();
		node = converttoJson(&obj, "RootCdashigScenarioField", "");
	}
	else {
		
		RootCdashigScenarioField obj = static_cast<RootCdashigScenarioField> (getSelf());
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

RootCdashigScenarioField
XmlRootCdashigScenarioField::getSelf()
{
	return self;
}

void
XmlRootCdashigScenarioField::setSelf(RootCdashigScenarioField  self)
{
	this->self = self;
}


