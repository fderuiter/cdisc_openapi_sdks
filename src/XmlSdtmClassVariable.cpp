#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmClassVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmClassVariable::XmlSdtmClassVariable()
{
	//__init();
}

XmlSdtmClassVariable::~XmlSdtmClassVariable()
{
	//__cleanup();
}

void
XmlSdtmClassVariable::__init()
{
	//self = new SdtmClassVariable();
}

void
XmlSdtmClassVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmClassVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariable")) {
			jsonToValue(&self, node, "SdtmClassVariable", "SdtmClassVariable");
		} else {
			
			SdtmClassVariable* obj = static_cast<SdtmClassVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmClassVariable::XmlSdtmClassVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmClassVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassVariable")) {
		SdtmClassVariable obj = getSelf();
		node = converttoJson(&obj, "SdtmClassVariable", "");
	}
	else {
		
		SdtmClassVariable obj = static_cast<SdtmClassVariable> (getSelf());
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

SdtmClassVariable
XmlSdtmClassVariable::getSelf()
{
	return self;
}

void
XmlSdtmClassVariable::setSelf(SdtmClassVariable  self)
{
	this->self = self;
}


