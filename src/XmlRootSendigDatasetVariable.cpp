#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootSendigDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootSendigDatasetVariable::XmlRootSendigDatasetVariable()
{
	//__init();
}

XmlRootSendigDatasetVariable::~XmlRootSendigDatasetVariable()
{
	//__cleanup();
}

void
XmlRootSendigDatasetVariable::__init()
{
	//self = new RootSendigDatasetVariable();
}

void
XmlRootSendigDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootSendigDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSendigDatasetVariable")) {
			jsonToValue(&self, node, "RootSendigDatasetVariable", "RootSendigDatasetVariable");
		} else {
			
			RootSendigDatasetVariable* obj = static_cast<RootSendigDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootSendigDatasetVariable::XmlRootSendigDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlRootSendigDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSendigDatasetVariable")) {
		RootSendigDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "RootSendigDatasetVariable", "");
	}
	else {
		
		RootSendigDatasetVariable obj = static_cast<RootSendigDatasetVariable> (getSelf());
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

RootSendigDatasetVariable
XmlRootSendigDatasetVariable::getSelf()
{
	return self;
}

void
XmlRootSendigDatasetVariable::setSelf(RootSendigDatasetVariable  self)
{
	this->self = self;
}


