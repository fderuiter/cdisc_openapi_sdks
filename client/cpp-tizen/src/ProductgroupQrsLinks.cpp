#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupQrsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupQrsLinks::ProductgroupQrsLinks()
{
	//__init();
}

ProductgroupQrsLinks::~ProductgroupQrsLinks()
{
	//__cleanup();
}

void
ProductgroupQrsLinks::__init()
{
	//self = new ProductgroupRef();
	//new std::list()std::list> qrs;
}

void
ProductgroupQrsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(qrs != NULL) {
	//qrs.RemoveAll(true);
	//delete qrs;
	//qrs = NULL;
	//}
	//
}

void
ProductgroupQrsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupRef")) {
			jsonToValue(&self, node, "ProductgroupRef", "ProductgroupRef");
		} else {
			
			ProductgroupRef* obj = static_cast<ProductgroupRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsKey = "qrs";
	node = json_object_get_member(pJsonObject, qrsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QrsRefElement> new_list;
			QrsRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QrsRefElement")) {
					jsonToValue(&inst, temp_json, "QrsRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			qrs = new_list;
		}
		
	}
}

ProductgroupQrsLinks::ProductgroupQrsLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupQrsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupRef")) {
		ProductgroupRef obj = getSelf();
		node = converttoJson(&obj, "ProductgroupRef", "");
	}
	else {
		
		ProductgroupRef obj = static_cast<ProductgroupRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("QrsRefElement")) {
		list<QrsRefElement> new_list = static_cast<list <QrsRefElement> > (getQrs());
		node = converttoJson(&new_list, "QrsRefElement", "array");
	} else {
		node = json_node_alloc();
		list<QrsRefElement> new_list = static_cast<list <QrsRefElement> > (getQrs());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QrsRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QrsRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *qrsKey = "qrs";
	json_object_set_member(pJsonObject, qrsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupRef
ProductgroupQrsLinks::getSelf()
{
	return self;
}

void
ProductgroupQrsLinks::setSelf(ProductgroupRef  self)
{
	this->self = self;
}

std::list<QrsRefElement>
ProductgroupQrsLinks::getQrs()
{
	return qrs;
}

void
ProductgroupQrsLinks::setQrs(std::list <QrsRefElement> qrs)
{
	this->qrs = qrs;
}


