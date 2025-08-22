#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashClass::XmlCdashClass()
{
	//__init();
}

XmlCdashClass::~XmlCdashClass()
{
	//__cleanup();
}

void
XmlCdashClass::__init()
{
	//self = new CdashClass();
}

void
XmlCdashClass::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashClass::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClass")) {
			jsonToValue(&self, node, "CdashClass", "CdashClass");
		} else {
			
			CdashClass* obj = static_cast<CdashClass*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashClass::XmlCdashClass(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashClass::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClass")) {
		CdashClass obj = getSelf();
		node = converttoJson(&obj, "CdashClass", "");
	}
	else {
		
		CdashClass obj = static_cast<CdashClass> (getSelf());
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

CdashClass
XmlCdashClass::getSelf()
{
	return self;
}

void
XmlCdashClass::setSelf(CdashClass  self)
{
	this->self = self;
}


