#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassesLinks::SdtmClassesLinks()
{
	//__init();
}

SdtmClassesLinks::~SdtmClassesLinks()
{
	//__cleanup();
}

void
SdtmClassesLinks::__init()
{
	//self = new SdtmClassesRef();
	//priorVersion = new SdtmClassesRef();
	//new std::list()std::list> classes;
}

void
SdtmClassesLinks::__cleanup()
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
SdtmClassesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassesRef")) {
			jsonToValue(&self, node, "SdtmClassesRef", "SdtmClassesRef");
		} else {
			
			SdtmClassesRef* obj = static_cast<SdtmClassesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassesRef")) {
			jsonToValue(&priorVersion, node, "SdtmClassesRef", "SdtmClassesRef");
		} else {
			
			SdtmClassesRef* obj = static_cast<SdtmClassesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassRefElement> new_list;
			SdtmClassRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmClassRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
}

SdtmClassesLinks::SdtmClassesLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassesRef")) {
		SdtmClassesRef obj = getSelf();
		node = converttoJson(&obj, "SdtmClassesRef", "");
	}
	else {
		
		SdtmClassesRef obj = static_cast<SdtmClassesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmClassesRef")) {
		SdtmClassesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmClassesRef", "");
	}
	else {
		
		SdtmClassesRef obj = static_cast<SdtmClassesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmClassRefElement")) {
		list<SdtmClassRefElement> new_list = static_cast<list <SdtmClassRefElement> > (getClasses());
		node = converttoJson(&new_list, "SdtmClassRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassRefElement> new_list = static_cast<list <SdtmClassRefElement> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassRefElement obj = *it;
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

SdtmClassesRef
SdtmClassesLinks::getSelf()
{
	return self;
}

void
SdtmClassesLinks::setSelf(SdtmClassesRef  self)
{
	this->self = self;
}

SdtmClassesRef
SdtmClassesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmClassesLinks::setPriorVersion(SdtmClassesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmClassRefElement>
SdtmClassesLinks::getClasses()
{
	return classes;
}

void
SdtmClassesLinks::setClasses(std::list <SdtmClassRefElement> classes)
{
	this->classes = classes;
}


