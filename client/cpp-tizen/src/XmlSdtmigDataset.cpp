#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigDataset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigDataset::XmlSdtmigDataset()
{
	//__init();
}

XmlSdtmigDataset::~XmlSdtmigDataset()
{
	//__cleanup();
}

void
XmlSdtmigDataset::__init()
{
	//self = new SdtmigDataset();
}

void
XmlSdtmigDataset::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigDataset::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDataset")) {
			jsonToValue(&self, node, "SdtmigDataset", "SdtmigDataset");
		} else {
			
			SdtmigDataset* obj = static_cast<SdtmigDataset*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigDataset::XmlSdtmigDataset(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigDataset::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDataset")) {
		SdtmigDataset obj = getSelf();
		node = converttoJson(&obj, "SdtmigDataset", "");
	}
	else {
		
		SdtmigDataset obj = static_cast<SdtmigDataset> (getSelf());
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

SdtmigDataset
XmlSdtmigDataset::getSelf()
{
	return self;
}

void
XmlSdtmigDataset::setSelf(SdtmigDataset  self)
{
	this->self = self;
}


