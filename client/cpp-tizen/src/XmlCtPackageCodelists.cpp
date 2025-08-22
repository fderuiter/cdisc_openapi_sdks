#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtPackageCodelists.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtPackageCodelists::XmlCtPackageCodelists()
{
	//__init();
}

XmlCtPackageCodelists::~XmlCtPackageCodelists()
{
	//__cleanup();
}

void
XmlCtPackageCodelists::__init()
{
	//self = new CtPackageCodelists();
}

void
XmlCtPackageCodelists::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtPackageCodelists::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageCodelists")) {
			jsonToValue(&self, node, "CtPackageCodelists", "CtPackageCodelists");
		} else {
			
			CtPackageCodelists* obj = static_cast<CtPackageCodelists*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtPackageCodelists::XmlCtPackageCodelists(char* json)
{
	this->fromJson(json);
}

char*
XmlCtPackageCodelists::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackageCodelists")) {
		CtPackageCodelists obj = getSelf();
		node = converttoJson(&obj, "CtPackageCodelists", "");
	}
	else {
		
		CtPackageCodelists obj = static_cast<CtPackageCodelists> (getSelf());
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

CtPackageCodelists
XmlCtPackageCodelists::getSelf()
{
	return self;
}

void
XmlCtPackageCodelists::setSelf(CtPackageCodelists  self)
{
	this->self = self;
}


