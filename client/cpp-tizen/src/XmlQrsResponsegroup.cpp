#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlQrsResponsegroup.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlQrsResponsegroup::XmlQrsResponsegroup()
{
	//__init();
}

XmlQrsResponsegroup::~XmlQrsResponsegroup()
{
	//__cleanup();
}

void
XmlQrsResponsegroup::__init()
{
	//self = new QrsResponsegroup();
}

void
XmlQrsResponsegroup::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlQrsResponsegroup::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroup")) {
			jsonToValue(&self, node, "QrsResponsegroup", "QrsResponsegroup");
		} else {
			
			QrsResponsegroup* obj = static_cast<QrsResponsegroup*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlQrsResponsegroup::XmlQrsResponsegroup(char* json)
{
	this->fromJson(json);
}

char*
XmlQrsResponsegroup::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsResponsegroup")) {
		QrsResponsegroup obj = getSelf();
		node = converttoJson(&obj, "QrsResponsegroup", "");
	}
	else {
		
		QrsResponsegroup obj = static_cast<QrsResponsegroup> (getSelf());
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

QrsResponsegroup
XmlQrsResponsegroup::getSelf()
{
	return self;
}

void
XmlQrsResponsegroup::setSelf(QrsResponsegroup  self)
{
	this->self = self;
}


