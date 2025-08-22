#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootSdtmClassVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootSdtmClassVariable::XmlRootSdtmClassVariable()
{
	//__init();
}

XmlRootSdtmClassVariable::~XmlRootSdtmClassVariable()
{
	//__cleanup();
}

void
XmlRootSdtmClassVariable::__init()
{
	//self = new RootSdtmClassVariable();
}

void
XmlRootSdtmClassVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootSdtmClassVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmClassVariable")) {
			jsonToValue(&self, node, "RootSdtmClassVariable", "RootSdtmClassVariable");
		} else {
			
			RootSdtmClassVariable* obj = static_cast<RootSdtmClassVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootSdtmClassVariable::XmlRootSdtmClassVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlRootSdtmClassVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmClassVariable")) {
		RootSdtmClassVariable obj = getSelf();
		node = converttoJson(&obj, "RootSdtmClassVariable", "");
	}
	else {
		
		RootSdtmClassVariable obj = static_cast<RootSdtmClassVariable> (getSelf());
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

RootSdtmClassVariable
XmlRootSdtmClassVariable::getSelf()
{
	return self;
}

void
XmlRootSdtmClassVariable::setSelf(RootSdtmClassVariable  self)
{
	this->self = self;
}


