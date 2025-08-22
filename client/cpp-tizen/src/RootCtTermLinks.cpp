#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCtTermLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCtTermLinks::RootCtTermLinks()
{
	//__init();
}

RootCtTermLinks::~RootCtTermLinks()
{
	//__cleanup();
}

void
RootCtTermLinks::__init()
{
	//self = new RootCtTermRef();
	//new std::list()std::list> versions;
}

void
RootCtTermLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(versions != NULL) {
	//versions.RemoveAll(true);
	//delete versions;
	//versions = NULL;
	//}
	//
}

void
RootCtTermLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&self, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtTermRefVersion> new_list;
			CtTermRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtTermRefVersion")) {
					jsonToValue(&inst, temp_json, "CtTermRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCtTermLinks::RootCtTermLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCtTermLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getSelf();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtTermRefVersion")) {
		list<CtTermRefVersion> new_list = static_cast<list <CtTermRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CtTermRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CtTermRefVersion> new_list = static_cast<list <CtTermRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtTermRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtTermRefVersion obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *versionsKey = "versions";
	json_object_set_member(pJsonObject, versionsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootCtTermRef
RootCtTermLinks::getSelf()
{
	return self;
}

void
RootCtTermLinks::setSelf(RootCtTermRef  self)
{
	this->self = self;
}

std::list<CtTermRefVersion>
RootCtTermLinks::getVersions()
{
	return versions;
}

void
RootCtTermLinks::setVersions(std::list <CtTermRefVersion> versions)
{
	this->versions = versions;
}


