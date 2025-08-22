#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashClassField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashClassField::XmlCdashClassField()
{
	//__init();
}

XmlCdashClassField::~XmlCdashClassField()
{
	//__cleanup();
}

void
XmlCdashClassField::__init()
{
	//self = new CdashClassField();
}

void
XmlCdashClassField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashClassField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassField")) {
			jsonToValue(&self, node, "CdashClassField", "CdashClassField");
		} else {
			
			CdashClassField* obj = static_cast<CdashClassField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashClassField::XmlCdashClassField(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashClassField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClassField")) {
		CdashClassField obj = getSelf();
		node = converttoJson(&obj, "CdashClassField", "");
	}
	else {
		
		CdashClassField obj = static_cast<CdashClassField> (getSelf());
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

CdashClassField
XmlCdashClassField::getSelf()
{
	return self;
}

void
XmlCdashClassField::setSelf(CdashClassField  self)
{
	this->self = self;
}


