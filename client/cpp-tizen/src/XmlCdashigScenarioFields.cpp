#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigScenarioFields.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigScenarioFields::XmlCdashigScenarioFields()
{
	//__init();
}

XmlCdashigScenarioFields::~XmlCdashigScenarioFields()
{
	//__cleanup();
}

void
XmlCdashigScenarioFields::__init()
{
	//self = new CdashigScenarioFields();
}

void
XmlCdashigScenarioFields::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigScenarioFields::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFields")) {
			jsonToValue(&self, node, "CdashigScenarioFields", "CdashigScenarioFields");
		} else {
			
			CdashigScenarioFields* obj = static_cast<CdashigScenarioFields*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigScenarioFields::XmlCdashigScenarioFields(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigScenarioFields::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenarioFields")) {
		CdashigScenarioFields obj = getSelf();
		node = converttoJson(&obj, "CdashigScenarioFields", "");
	}
	else {
		
		CdashigScenarioFields obj = static_cast<CdashigScenarioFields> (getSelf());
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

CdashigScenarioFields
XmlCdashigScenarioFields::getSelf()
{
	return self;
}

void
XmlCdashigScenarioFields::setSelf(CdashigScenarioFields  self)
{
	this->self = self;
}


