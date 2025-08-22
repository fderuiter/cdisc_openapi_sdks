#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCdashDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCdashDomainField::XmlRootCdashDomainField()
{
	//__init();
}

XmlRootCdashDomainField::~XmlRootCdashDomainField()
{
	//__cleanup();
}

void
XmlRootCdashDomainField::__init()
{
	//self = new RootCdashDomainField();
}

void
XmlRootCdashDomainField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCdashDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashDomainField")) {
			jsonToValue(&self, node, "RootCdashDomainField", "RootCdashDomainField");
		} else {
			
			RootCdashDomainField* obj = static_cast<RootCdashDomainField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCdashDomainField::XmlRootCdashDomainField(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCdashDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashDomainField")) {
		RootCdashDomainField obj = getSelf();
		node = converttoJson(&obj, "RootCdashDomainField", "");
	}
	else {
		
		RootCdashDomainField obj = static_cast<RootCdashDomainField> (getSelf());
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

RootCdashDomainField
XmlRootCdashDomainField::getSelf()
{
	return self;
}

void
XmlRootCdashDomainField::setSelf(RootCdashDomainField  self)
{
	this->self = self;
}


