#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCdashClassField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCdashClassField::XmlRootCdashClassField()
{
	//__init();
}

XmlRootCdashClassField::~XmlRootCdashClassField()
{
	//__cleanup();
}

void
XmlRootCdashClassField::__init()
{
	//self = new RootCdashClassField();
}

void
XmlRootCdashClassField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCdashClassField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashClassField")) {
			jsonToValue(&self, node, "RootCdashClassField", "RootCdashClassField");
		} else {
			
			RootCdashClassField* obj = static_cast<RootCdashClassField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCdashClassField::XmlRootCdashClassField(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCdashClassField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashClassField")) {
		RootCdashClassField obj = getSelf();
		node = converttoJson(&obj, "RootCdashClassField", "");
	}
	else {
		
		RootCdashClassField obj = static_cast<RootCdashClassField> (getSelf());
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

RootCdashClassField
XmlRootCdashClassField::getSelf()
{
	return self;
}

void
XmlRootCdashClassField::setSelf(RootCdashClassField  self)
{
	this->self = self;
}


