#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCtCodelistLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCtCodelistLinks::RootCtCodelistLinks()
{
	//__init();
}

RootCtCodelistLinks::~RootCtCodelistLinks()
{
	//__cleanup();
}

void
RootCtCodelistLinks::__init()
{
	//self = new RootCtCodelistRef();
	//new std::list()std::list> versions;
}

void
RootCtCodelistLinks::__cleanup()
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
RootCtCodelistLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelistRef")) {
			jsonToValue(&self, node, "RootCtCodelistRef", "RootCtCodelistRef");
		} else {
			
			RootCtCodelistRef* obj = static_cast<RootCtCodelistRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtCodelistRefVersion> new_list;
			CtCodelistRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtCodelistRefVersion")) {
					jsonToValue(&inst, temp_json, "CtCodelistRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCtCodelistLinks::RootCtCodelistLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCtCodelistLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtCodelistRef")) {
		RootCtCodelistRef obj = getSelf();
		node = converttoJson(&obj, "RootCtCodelistRef", "");
	}
	else {
		
		RootCtCodelistRef obj = static_cast<RootCtCodelistRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtCodelistRefVersion")) {
		list<CtCodelistRefVersion> new_list = static_cast<list <CtCodelistRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CtCodelistRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CtCodelistRefVersion> new_list = static_cast<list <CtCodelistRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtCodelistRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtCodelistRefVersion obj = *it;
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

RootCtCodelistRef
RootCtCodelistLinks::getSelf()
{
	return self;
}

void
RootCtCodelistLinks::setSelf(RootCtCodelistRef  self)
{
	this->self = self;
}

std::list<CtCodelistRefVersion>
RootCtCodelistLinks::getVersions()
{
	return versions;
}

void
RootCtCodelistLinks::setVersions(std::list <CtCodelistRefVersion> versions)
{
	this->versions = versions;
}


