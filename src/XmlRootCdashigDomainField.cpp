#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCdashigDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCdashigDomainField::XmlRootCdashigDomainField()
{
	//__init();
}

XmlRootCdashigDomainField::~XmlRootCdashigDomainField()
{
	//__cleanup();
}

void
XmlRootCdashigDomainField::__init()
{
	//self = new RootCdashigDomainField();
}

void
XmlRootCdashigDomainField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCdashigDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigDomainField")) {
			jsonToValue(&self, node, "RootCdashigDomainField", "RootCdashigDomainField");
		} else {
			
			RootCdashigDomainField* obj = static_cast<RootCdashigDomainField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCdashigDomainField::XmlRootCdashigDomainField(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCdashigDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigDomainField")) {
		RootCdashigDomainField obj = getSelf();
		node = converttoJson(&obj, "RootCdashigDomainField", "");
	}
	else {
		
		RootCdashigDomainField obj = static_cast<RootCdashigDomainField> (getSelf());
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

RootCdashigDomainField
XmlRootCdashigDomainField::getSelf()
{
	return self;
}

void
XmlRootCdashigDomainField::setSelf(RootCdashigDomainField  self)
{
	this->self = self;
}


