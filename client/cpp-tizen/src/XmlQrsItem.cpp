#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlQrsItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlQrsItem::XmlQrsItem()
{
	//__init();
}

XmlQrsItem::~XmlQrsItem()
{
	//__cleanup();
}

void
XmlQrsItem::__init()
{
	//self = new QrsItem();
}

void
XmlQrsItem::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlQrsItem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsItem")) {
			jsonToValue(&self, node, "QrsItem", "QrsItem");
		} else {
			
			QrsItem* obj = static_cast<QrsItem*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlQrsItem::XmlQrsItem(char* json)
{
	this->fromJson(json);
}

char*
XmlQrsItem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsItem")) {
		QrsItem obj = getSelf();
		node = converttoJson(&obj, "QrsItem", "");
	}
	else {
		
		QrsItem obj = static_cast<QrsItem> (getSelf());
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

QrsItem
XmlQrsItem::getSelf()
{
	return self;
}

void
XmlQrsItem::setSelf(QrsItem  self)
{
	this->self = self;
}


