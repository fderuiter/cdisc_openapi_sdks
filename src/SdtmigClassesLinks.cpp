#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigClassesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigClassesLinks::SdtmigClassesLinks()
{
	//__init();
}

SdtmigClassesLinks::~SdtmigClassesLinks()
{
	//__cleanup();
}

void
SdtmigClassesLinks::__init()
{
	//self = new SdtmigClassesRef();
	//priorVersion = new SdtmigClassesRef();
	//new std::list()std::list> classes;
}

void
SdtmigClassesLinks::__cleanup()
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
SdtmigClassesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassesRef")) {
			jsonToValue(&self, node, "SdtmigClassesRef", "SdtmigClassesRef");
		} else {
			
			SdtmigClassesRef* obj = static_cast<SdtmigClassesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassesRef")) {
			jsonToValue(&priorVersion, node, "SdtmigClassesRef", "SdtmigClassesRef");
		} else {
			
			SdtmigClassesRef* obj = static_cast<SdtmigClassesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigClassRefElement> new_list;
			SdtmigClassRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigClassRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmigClassRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
}

SdtmigClassesLinks::SdtmigClassesLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigClassesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClassesRef")) {
		SdtmigClassesRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigClassesRef", "");
	}
	else {
		
		SdtmigClassesRef obj = static_cast<SdtmigClassesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmigClassesRef")) {
		SdtmigClassesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigClassesRef", "");
	}
	else {
		
		SdtmigClassesRef obj = static_cast<SdtmigClassesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmigClassRefElement")) {
		list<SdtmigClassRefElement> new_list = static_cast<list <SdtmigClassRefElement> > (getClasses());
		node = converttoJson(&new_list, "SdtmigClassRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigClassRefElement> new_list = static_cast<list <SdtmigClassRefElement> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigClassRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigClassRefElement obj = *it;
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

SdtmigClassesRef
SdtmigClassesLinks::getSelf()
{
	return self;
}

void
SdtmigClassesLinks::setSelf(SdtmigClassesRef  self)
{
	this->self = self;
}

SdtmigClassesRef
SdtmigClassesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigClassesLinks::setPriorVersion(SdtmigClassesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmigClassRefElement>
SdtmigClassesLinks::getClasses()
{
	return classes;
}

void
SdtmigClassesLinks::setClasses(std::list <SdtmigClassRefElement> classes)
{
	this->classes = classes;
}


