#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigDatasets::XmlSdtmigDatasets()
{
	//__init();
}

XmlSdtmigDatasets::~XmlSdtmigDatasets()
{
	//__cleanup();
}

void
XmlSdtmigDatasets::__init()
{
	//self = new SdtmigDatasets();
}

void
XmlSdtmigDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasets")) {
			jsonToValue(&self, node, "SdtmigDatasets", "SdtmigDatasets");
		} else {
			
			SdtmigDatasets* obj = static_cast<SdtmigDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigDatasets::XmlSdtmigDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasets")) {
		SdtmigDatasets obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasets", "");
	}
	else {
		
		SdtmigDatasets obj = static_cast<SdtmigDatasets> (getSelf());
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

SdtmigDatasets
XmlSdtmigDatasets::getSelf()
{
	return self;
}

void
XmlSdtmigDatasets::setSelf(SdtmigDatasets  self)
{
	this->self = self;
}


