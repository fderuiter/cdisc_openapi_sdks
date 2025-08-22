#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigDatasetVariable::XmlSendigDatasetVariable()
{
	//__init();
}

XmlSendigDatasetVariable::~XmlSendigDatasetVariable()
{
	//__cleanup();
}

void
XmlSendigDatasetVariable::__init()
{
	//self = new SendigDatasetVariable();
}

void
XmlSendigDatasetVariable::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetVariable")) {
			jsonToValue(&self, node, "SendigDatasetVariable", "SendigDatasetVariable");
		} else {
			
			SendigDatasetVariable* obj = static_cast<SendigDatasetVariable*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigDatasetVariable::XmlSendigDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigDatasetVariable")) {
		SendigDatasetVariable obj = getSelf();
		node = converttoJson(&obj, "SendigDatasetVariable", "");
	}
	else {
		
		SendigDatasetVariable obj = static_cast<SendigDatasetVariable> (getSelf());
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

SendigDatasetVariable
XmlSendigDatasetVariable::getSelf()
{
	return self;
}

void
XmlSendigDatasetVariable::setSelf(SendigDatasetVariable  self)
{
	this->self = self;
}


