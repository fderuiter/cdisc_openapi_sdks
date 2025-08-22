#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSdtmClassVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSdtmClassVariableLinks::RootSdtmClassVariableLinks()
{
	//__init();
}

RootSdtmClassVariableLinks::~RootSdtmClassVariableLinks()
{
	//__cleanup();
}

void
RootSdtmClassVariableLinks::__init()
{
	//self = new RootSdtmClassVariableRef();
	//new std::list()std::list> versions;
}

void
RootSdtmClassVariableLinks::__cleanup()
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
RootSdtmClassVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmClassVariableRef")) {
			jsonToValue(&self, node, "RootSdtmClassVariableRef", "RootSdtmClassVariableRef");
		} else {
			
			RootSdtmClassVariableRef* obj = static_cast<RootSdtmClassVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassVariableRefVersion> new_list;
			SdtmClassVariableRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassVariableRefVersion")) {
					jsonToValue(&inst, temp_json, "SdtmClassVariableRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootSdtmClassVariableLinks::RootSdtmClassVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
RootSdtmClassVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmClassVariableRef")) {
		RootSdtmClassVariableRef obj = getSelf();
		node = converttoJson(&obj, "RootSdtmClassVariableRef", "");
	}
	else {
		
		RootSdtmClassVariableRef obj = static_cast<RootSdtmClassVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmClassVariableRefVersion")) {
		list<SdtmClassVariableRefVersion> new_list = static_cast<list <SdtmClassVariableRefVersion> > (getVersions());
		node = converttoJson(&new_list, "SdtmClassVariableRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassVariableRefVersion> new_list = static_cast<list <SdtmClassVariableRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassVariableRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassVariableRefVersion obj = *it;
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

RootSdtmClassVariableRef
RootSdtmClassVariableLinks::getSelf()
{
	return self;
}

void
RootSdtmClassVariableLinks::setSelf(RootSdtmClassVariableRef  self)
{
	this->self = self;
}

std::list<SdtmClassVariableRefVersion>
RootSdtmClassVariableLinks::getVersions()
{
	return versions;
}

void
RootSdtmClassVariableLinks::setVersions(std::list <SdtmClassVariableRefVersion> versions)
{
	this->versions = versions;
}


