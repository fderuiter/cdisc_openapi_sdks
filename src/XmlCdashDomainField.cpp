#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashDomainField::XmlCdashDomainField()
{
	//__init();
}

XmlCdashDomainField::~XmlCdashDomainField()
{
	//__cleanup();
}

void
XmlCdashDomainField::__init()
{
	//self = new CdashDomainField();
}

void
XmlCdashDomainField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainField")) {
			jsonToValue(&self, node, "CdashDomainField", "CdashDomainField");
		} else {
			
			CdashDomainField* obj = static_cast<CdashDomainField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashDomainField::XmlCdashDomainField(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomainField")) {
		CdashDomainField obj = getSelf();
		node = converttoJson(&obj, "CdashDomainField", "");
	}
	else {
		
		CdashDomainField obj = static_cast<CdashDomainField> (getSelf());
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

CdashDomainField
XmlCdashDomainField::getSelf()
{
	return self;
}

void
XmlCdashDomainField::setSelf(CdashDomainField  self)
{
	this->self = self;
}


