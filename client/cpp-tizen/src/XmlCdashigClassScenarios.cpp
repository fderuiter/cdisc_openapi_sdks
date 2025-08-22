#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigClassScenarios.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigClassScenarios::XmlCdashigClassScenarios()
{
	//__init();
}

XmlCdashigClassScenarios::~XmlCdashigClassScenarios()
{
	//__cleanup();
}

void
XmlCdashigClassScenarios::__init()
{
	//self = new CdashigClassScenarios();
}

void
XmlCdashigClassScenarios::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigClassScenarios::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassScenarios")) {
			jsonToValue(&self, node, "CdashigClassScenarios", "CdashigClassScenarios");
		} else {
			
			CdashigClassScenarios* obj = static_cast<CdashigClassScenarios*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigClassScenarios::XmlCdashigClassScenarios(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigClassScenarios::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigClassScenarios")) {
		CdashigClassScenarios obj = getSelf();
		node = converttoJson(&obj, "CdashigClassScenarios", "");
	}
	else {
		
		CdashigClassScenarios obj = static_cast<CdashigClassScenarios> (getSelf());
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

CdashigClassScenarios
XmlCdashigClassScenarios::getSelf()
{
	return self;
}

void
XmlCdashigClassScenarios::setSelf(CdashigClassScenarios  self)
{
	this->self = self;
}


