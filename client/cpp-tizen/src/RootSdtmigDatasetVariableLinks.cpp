#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSdtmigDatasetVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSdtmigDatasetVariableLinks::RootSdtmigDatasetVariableLinks()
{
	//__init();
}

RootSdtmigDatasetVariableLinks::~RootSdtmigDatasetVariableLinks()
{
	//__cleanup();
}

void
RootSdtmigDatasetVariableLinks::__init()
{
	//self = new RootSdtmigDatasetVariableRef();
	//new std::list()std::list> versions;
}

void
RootSdtmigDatasetVariableLinks::__cleanup()
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
RootSdtmigDatasetVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmigDatasetVariableRef")) {
			jsonToValue(&self, node, "RootSdtmigDatasetVariableRef", "RootSdtmigDatasetVariableRef");
		} else {
			
			RootSdtmigDatasetVariableRef* obj = static_cast<RootSdtmigDatasetVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigDatasetVariableRefVersion> new_list;
			SdtmigDatasetVariableRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigDatasetVariableRefVersion")) {
					jsonToValue(&inst, temp_json, "SdtmigDatasetVariableRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootSdtmigDatasetVariableLinks::RootSdtmigDatasetVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
RootSdtmigDatasetVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmigDatasetVariableRef")) {
		RootSdtmigDatasetVariableRef obj = getSelf();
		node = converttoJson(&obj, "RootSdtmigDatasetVariableRef", "");
	}
	else {
		
		RootSdtmigDatasetVariableRef obj = static_cast<RootSdtmigDatasetVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmigDatasetVariableRefVersion")) {
		list<SdtmigDatasetVariableRefVersion> new_list = static_cast<list <SdtmigDatasetVariableRefVersion> > (getVersions());
		node = converttoJson(&new_list, "SdtmigDatasetVariableRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigDatasetVariableRefVersion> new_list = static_cast<list <SdtmigDatasetVariableRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigDatasetVariableRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigDatasetVariableRefVersion obj = *it;
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

RootSdtmigDatasetVariableRef
RootSdtmigDatasetVariableLinks::getSelf()
{
	return self;
}

void
RootSdtmigDatasetVariableLinks::setSelf(RootSdtmigDatasetVariableRef  self)
{
	this->self = self;
}

std::list<SdtmigDatasetVariableRefVersion>
RootSdtmigDatasetVariableLinks::getVersions()
{
	return versions;
}

void
RootSdtmigDatasetVariableLinks::setVersions(std::list <SdtmigDatasetVariableRefVersion> versions)
{
	this->versions = versions;
}


