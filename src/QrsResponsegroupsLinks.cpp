#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsResponsegroupsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsResponsegroupsLinks::QrsResponsegroupsLinks()
{
	//__init();
}

QrsResponsegroupsLinks::~QrsResponsegroupsLinks()
{
	//__cleanup();
}

void
QrsResponsegroupsLinks::__init()
{
	//self = new QrsResponsegroupsRef();
	//new std::list()std::list> responsegroups;
}

void
QrsResponsegroupsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(responsegroups != NULL) {
	//responsegroups.RemoveAll(true);
	//delete responsegroups;
	//responsegroups = NULL;
	//}
	//
}

void
QrsResponsegroupsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroupsRef")) {
			jsonToValue(&self, node, "QrsResponsegroupsRef", "QrsResponsegroupsRef");
		} else {
			
			QrsResponsegroupsRef* obj = static_cast<QrsResponsegroupsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *responsegroupsKey = "responsegroups";
	node = json_object_get_member(pJsonObject, responsegroupsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QrsResponsegroupRefElement> new_list;
			QrsResponsegroupRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QrsResponsegroupRefElement")) {
					jsonToValue(&inst, temp_json, "QrsResponsegroupRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			responsegroups = new_list;
		}
		
	}
}

QrsResponsegroupsLinks::QrsResponsegroupsLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsResponsegroupsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsResponsegroupsRef")) {
		QrsResponsegroupsRef obj = getSelf();
		node = converttoJson(&obj, "QrsResponsegroupsRef", "");
	}
	else {
		
		QrsResponsegroupsRef obj = static_cast<QrsResponsegroupsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("QrsResponsegroupRefElement")) {
		list<QrsResponsegroupRefElement> new_list = static_cast<list <QrsResponsegroupRefElement> > (getResponsegroups());
		node = converttoJson(&new_list, "QrsResponsegroupRefElement", "array");
	} else {
		node = json_node_alloc();
		list<QrsResponsegroupRefElement> new_list = static_cast<list <QrsResponsegroupRefElement> > (getResponsegroups());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QrsResponsegroupRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QrsResponsegroupRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *responsegroupsKey = "responsegroups";
	json_object_set_member(pJsonObject, responsegroupsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

QrsResponsegroupsRef
QrsResponsegroupsLinks::getSelf()
{
	return self;
}

void
QrsResponsegroupsLinks::setSelf(QrsResponsegroupsRef  self)
{
	this->self = self;
}

std::list<QrsResponsegroupRefElement>
QrsResponsegroupsLinks::getResponsegroups()
{
	return responsegroups;
}

void
QrsResponsegroupsLinks::setResponsegroups(std::list <QrsResponsegroupRefElement> responsegroups)
{
	this->responsegroups = responsegroups;
}


