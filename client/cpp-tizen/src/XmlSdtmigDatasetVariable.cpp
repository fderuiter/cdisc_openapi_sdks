#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigDatasetVariable::XmlSdtmigDatasetVariable()
{
	//__init();
}

XmlSdtmigDatasetVariable::~XmlSdtmigDatasetVariable()
{
	//__cleanup();
}

void
XmlSdtmigDatasetVariable::__init()
{
	//self = new SdtmigDatasetVariable();
}

void
XmlSdtmigDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariable")) {
			jsonToValue(&self, node, "SdtmigDatasetVariable", "SdtmigDatasetVariable");
		} else {
			
			SdtmigDatasetVariable* obj = static_cast<SdtmigDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigDatasetVariable::XmlSdtmigDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasetVariable")) {
		SdtmigDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasetVariable", "");
	}
	else {
		
		SdtmigDatasetVariable obj = static_cast<SdtmigDatasetVariable> (getSelf());
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

SdtmigDatasetVariable
XmlSdtmigDatasetVariable::getSelf()
{
	return self;
}

void
XmlSdtmigDatasetVariable::setSelf(SdtmigDatasetVariable  self)
{
	this->self = self;
}


