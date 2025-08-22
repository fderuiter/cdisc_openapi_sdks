#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlQrsResponsegroups.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlQrsResponsegroups::XmlQrsResponsegroups()
{
	//__init();
}

XmlQrsResponsegroups::~XmlQrsResponsegroups()
{
	//__cleanup();
}

void
XmlQrsResponsegroups::__init()
{
	//self = new QrsResponsegroups();
}

void
XmlQrsResponsegroups::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlQrsResponsegroups::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroups")) {
			jsonToValue(&self, node, "QrsResponsegroups", "QrsResponsegroups");
		} else {
			
			QrsResponsegroups* obj = static_cast<QrsResponsegroups*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlQrsResponsegroups::XmlQrsResponsegroups(char* json)
{
	this->fromJson(json);
}

char*
XmlQrsResponsegroups::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsResponsegroups")) {
		QrsResponsegroups obj = getSelf();
		node = converttoJson(&obj, "QrsResponsegroups", "");
	}
	else {
		
		QrsResponsegroups obj = static_cast<QrsResponsegroups> (getSelf());
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

QrsResponsegroups
XmlQrsResponsegroups::getSelf()
{
	return self;
}

void
XmlQrsResponsegroups::setSelf(QrsResponsegroups  self)
{
	this->self = self;
}


