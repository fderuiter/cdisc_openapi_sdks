#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigClassesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigClassesLinks::SendigClassesLinks()
{
	//__init();
}

SendigClassesLinks::~SendigClassesLinks()
{
	//__cleanup();
}

void
SendigClassesLinks::__init()
{
	//self = new SendigClassesRef();
	//priorVersion = new SendigClassesRef();
	//new std::list()std::list> classes;
}

void
SendigClassesLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(classes != NULL) {
	//classes.RemoveAll(true);
	//delete classes;
	//classes = NULL;
	//}
	//
}

void
SendigClassesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassesRef")) {
			jsonToValue(&self, node, "SendigClassesRef", "SendigClassesRef");
		} else {
			
			SendigClassesRef* obj = static_cast<SendigClassesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassesRef")) {
			jsonToValue(&priorVersion, node, "SendigClassesRef", "SendigClassesRef");
		} else {
			
			SendigClassesRef* obj = static_cast<SendigClassesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigClassRefElement> new_list;
			SendigClassRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigClassRefElement")) {
					jsonToValue(&inst, temp_json, "SendigClassRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
}

SendigClassesLinks::SendigClassesLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigClassesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClassesRef")) {
		SendigClassesRef obj = getSelf();
		node = converttoJson(&obj, "SendigClassesRef", "");
	}
	else {
		
		SendigClassesRef obj = static_cast<SendigClassesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SendigClassesRef")) {
		SendigClassesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SendigClassesRef", "");
	}
	else {
		
		SendigClassesRef obj = static_cast<SendigClassesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SendigClassRefElement")) {
		list<SendigClassRefElement> new_list = static_cast<list <SendigClassRefElement> > (getClasses());
		node = converttoJson(&new_list, "SendigClassRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SendigClassRefElement> new_list = static_cast<list <SendigClassRefElement> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigClassRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigClassRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classesKey = "classes";
	json_object_set_member(pJsonObject, classesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SendigClassesRef
SendigClassesLinks::getSelf()
{
	return self;
}

void
SendigClassesLinks::setSelf(SendigClassesRef  self)
{
	this->self = self;
}

SendigClassesRef
SendigClassesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SendigClassesLinks::setPriorVersion(SendigClassesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SendigClassRefElement>
SendigClassesLinks::getClasses()
{
	return classes;
}

void
SendigClassesLinks::setClasses(std::list <SendigClassRefElement> classes)
{
	this->classes = classes;
}


