#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsResponsegroupLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsResponsegroupLinks::QrsResponsegroupLinks()
{
	//__init();
}

QrsResponsegroupLinks::~QrsResponsegroupLinks()
{
	//__cleanup();
}

void
QrsResponsegroupLinks::__init()
{
	//self = new QrsResponsegroupRef();
	//new std::list()std::list> responses;
}

void
QrsResponsegroupLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(responses != NULL) {
	//responses.RemoveAll(true);
	//delete responses;
	//responses = NULL;
	//}
	//
}

void
QrsResponsegroupLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroupRef")) {
			jsonToValue(&self, node, "QrsResponsegroupRef", "QrsResponsegroupRef");
		} else {
			
			QrsResponsegroupRef* obj = static_cast<QrsResponsegroupRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *responsesKey = "responses";
	node = json_object_get_member(pJsonObject, responsesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QrsResponses> new_list;
			QrsResponses inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QrsResponses")) {
					jsonToValue(&inst, temp_json, "QrsResponses", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			responses = new_list;
		}
		
	}
}

QrsResponsegroupLinks::QrsResponsegroupLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsResponsegroupLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsResponsegroupRef")) {
		QrsResponsegroupRef obj = getSelf();
		node = converttoJson(&obj, "QrsResponsegroupRef", "");
	}
	else {
		
		QrsResponsegroupRef obj = static_cast<QrsResponsegroupRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("QrsResponses")) {
		list<QrsResponses> new_list = static_cast<list <QrsResponses> > (getResponses());
		node = converttoJson(&new_list, "QrsResponses", "array");
	} else {
		node = json_node_alloc();
		list<QrsResponses> new_list = static_cast<list <QrsResponses> > (getResponses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QrsResponses>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QrsResponses obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *responsesKey = "responses";
	json_object_set_member(pJsonObject, responsesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

QrsResponsegroupRef
QrsResponsegroupLinks::getSelf()
{
	return self;
}

void
QrsResponsegroupLinks::setSelf(QrsResponsegroupRef  self)
{
	this->self = self;
}

std::list<QrsResponses>
QrsResponsegroupLinks::getResponses()
{
	return responses;
}

void
QrsResponsegroupLinks::setResponses(std::list <QrsResponses> responses)
{
	this->responses = responses;
}


