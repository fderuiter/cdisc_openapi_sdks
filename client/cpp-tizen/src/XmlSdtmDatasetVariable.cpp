#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmDatasetVariable::XmlSdtmDatasetVariable()
{
	//__init();
}

XmlSdtmDatasetVariable::~XmlSdtmDatasetVariable()
{
	//__cleanup();
}

void
XmlSdtmDatasetVariable::__init()
{
	//self = new SdtmDatasetVariable();
}

void
XmlSdtmDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariable")) {
			jsonToValue(&self, node, "SdtmDatasetVariable", "SdtmDatasetVariable");
		} else {
			
			SdtmDatasetVariable* obj = static_cast<SdtmDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmDatasetVariable::XmlSdtmDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasetVariable")) {
		SdtmDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasetVariable", "");
	}
	else {
		
		SdtmDatasetVariable obj = static_cast<SdtmDatasetVariable> (getSelf());
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

SdtmDatasetVariable
XmlSdtmDatasetVariable::getSelf()
{
	return self;
}

void
XmlSdtmDatasetVariable::setSelf(SdtmDatasetVariable  self)
{
	this->self = self;
}


