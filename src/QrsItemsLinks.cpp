#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsItemsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsItemsLinks::QrsItemsLinks()
{
	//__init();
}

QrsItemsLinks::~QrsItemsLinks()
{
	//__cleanup();
}

void
QrsItemsLinks::__init()
{
	//self = new QrsItemsRef();
	//parentProduct = new QrsProductRef();
	//new std::list()std::list> items;
}

void
QrsItemsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//
}

void
QrsItemsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsItemsRef")) {
			jsonToValue(&self, node, "QrsItemsRef", "QrsItemsRef");
		} else {
			
			QrsItemsRef* obj = static_cast<QrsItemsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsProductRef")) {
			jsonToValue(&parentProduct, node, "QrsProductRef", "QrsProductRef");
		} else {
			
			QrsProductRef* obj = static_cast<QrsProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QrsItemRefElement> new_list;
			QrsItemRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QrsItemRefElement")) {
					jsonToValue(&inst, temp_json, "QrsItemRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
}

QrsItemsLinks::QrsItemsLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsItemsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsItemsRef")) {
		QrsItemsRef obj = getSelf();
		node = converttoJson(&obj, "QrsItemsRef", "");
	}
	else {
		
		QrsItemsRef obj = static_cast<QrsItemsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("QrsProductRef")) {
		QrsProductRef obj = getParentProduct();
		node = converttoJson(&obj, "QrsProductRef", "");
	}
	else {
		
		QrsProductRef obj = static_cast<QrsProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("QrsItemRefElement")) {
		list<QrsItemRefElement> new_list = static_cast<list <QrsItemRefElement> > (getItems());
		node = converttoJson(&new_list, "QrsItemRefElement", "array");
	} else {
		node = json_node_alloc();
		list<QrsItemRefElement> new_list = static_cast<list <QrsItemRefElement> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QrsItemRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QrsItemRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

QrsItemsRef
QrsItemsLinks::getSelf()
{
	return self;
}

void
QrsItemsLinks::setSelf(QrsItemsRef  self)
{
	this->self = self;
}

QrsProductRef
QrsItemsLinks::getParentProduct()
{
	return parentProduct;
}

void
QrsItemsLinks::setParentProduct(QrsProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

std::list<QrsItemRefElement>
QrsItemsLinks::getItems()
{
	return items;
}

void
QrsItemsLinks::setItems(std::list <QrsItemRefElement> items)
{
	this->items = items;
}


