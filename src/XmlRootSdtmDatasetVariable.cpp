#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootSdtmDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootSdtmDatasetVariable::XmlRootSdtmDatasetVariable()
{
	//__init();
}

XmlRootSdtmDatasetVariable::~XmlRootSdtmDatasetVariable()
{
	//__cleanup();
}

void
XmlRootSdtmDatasetVariable::__init()
{
	//self = new RootSdtmDatasetVariable();
}

void
XmlRootSdtmDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootSdtmDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmDatasetVariable")) {
			jsonToValue(&self, node, "RootSdtmDatasetVariable", "RootSdtmDatasetVariable");
		} else {
			
			RootSdtmDatasetVariable* obj = static_cast<RootSdtmDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootSdtmDatasetVariable::XmlRootSdtmDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlRootSdtmDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmDatasetVariable")) {
		RootSdtmDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "RootSdtmDatasetVariable", "");
	}
	else {
		
		RootSdtmDatasetVariable obj = static_cast<RootSdtmDatasetVariable> (getSelf());
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

RootSdtmDatasetVariable
XmlRootSdtmDatasetVariable::getSelf()
{
	return self;
}

void
XmlRootSdtmDatasetVariable::setSelf(RootSdtmDatasetVariable  self)
{
	this->self = self;
}


