#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigDomainField::XmlCdashigDomainField()
{
	//__init();
}

XmlCdashigDomainField::~XmlCdashigDomainField()
{
	//__cleanup();
}

void
XmlCdashigDomainField::__init()
{
	//self = new CdashigDomainField();
}

void
XmlCdashigDomainField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainField")) {
			jsonToValue(&self, node, "CdashigDomainField", "CdashigDomainField");
		} else {
			
			CdashigDomainField* obj = static_cast<CdashigDomainField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigDomainField::XmlCdashigDomainField(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigDomainField")) {
		CdashigDomainField obj = getSelf();
		node = converttoJson(&obj, "CdashigDomainField", "");
	}
	else {
		
		CdashigDomainField obj = static_cast<CdashigDomainField> (getSelf());
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

CdashigDomainField
XmlCdashigDomainField::getSelf()
{
	return self;
}

void
XmlCdashigDomainField::setSelf(CdashigDomainField  self)
{
	this->self = self;
}


