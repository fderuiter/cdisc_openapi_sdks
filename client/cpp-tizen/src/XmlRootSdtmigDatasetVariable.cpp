#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootSdtmigDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootSdtmigDatasetVariable::XmlRootSdtmigDatasetVariable()
{
	//__init();
}

XmlRootSdtmigDatasetVariable::~XmlRootSdtmigDatasetVariable()
{
	//__cleanup();
}

void
XmlRootSdtmigDatasetVariable::__init()
{
	//self = new RootSdtmigDatasetVariable();
}

void
XmlRootSdtmigDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootSdtmigDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmigDatasetVariable")) {
			jsonToValue(&self, node, "RootSdtmigDatasetVariable", "RootSdtmigDatasetVariable");
		} else {
			
			RootSdtmigDatasetVariable* obj = static_cast<RootSdtmigDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootSdtmigDatasetVariable::XmlRootSdtmigDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlRootSdtmigDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmigDatasetVariable")) {
		RootSdtmigDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "RootSdtmigDatasetVariable", "");
	}
	else {
		
		RootSdtmigDatasetVariable obj = static_cast<RootSdtmigDatasetVariable> (getSelf());
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

RootSdtmigDatasetVariable
XmlRootSdtmigDatasetVariable::getSelf()
{
	return self;
}

void
XmlRootSdtmigDatasetVariable::setSelf(RootSdtmigDatasetVariable  self)
{
	this->self = self;
}


