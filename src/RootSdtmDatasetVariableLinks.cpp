#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSdtmDatasetVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSdtmDatasetVariableLinks::RootSdtmDatasetVariableLinks()
{
	//__init();
}

RootSdtmDatasetVariableLinks::~RootSdtmDatasetVariableLinks()
{
	//__cleanup();
}

void
RootSdtmDatasetVariableLinks::__init()
{
	//self = new RootSdtmDatasetVariableRef();
	//new std::list()std::list> versions;
}

void
RootSdtmDatasetVariableLinks::__cleanup()
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
RootSdtmDatasetVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmDatasetVariableRef")) {
			jsonToValue(&self, node, "RootSdtmDatasetVariableRef", "RootSdtmDatasetVariableRef");
		} else {
			
			RootSdtmDatasetVariableRef* obj = static_cast<RootSdtmDatasetVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDatasetVariableRefVersion> new_list;
			SdtmDatasetVariableRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDatasetVariableRefVersion")) {
					jsonToValue(&inst, temp_json, "SdtmDatasetVariableRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootSdtmDatasetVariableLinks::RootSdtmDatasetVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
RootSdtmDatasetVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmDatasetVariableRef")) {
		RootSdtmDatasetVariableRef obj = getSelf();
		node = converttoJson(&obj, "RootSdtmDatasetVariableRef", "");
	}
	else {
		
		RootSdtmDatasetVariableRef obj = static_cast<RootSdtmDatasetVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmDatasetVariableRefVersion")) {
		list<SdtmDatasetVariableRefVersion> new_list = static_cast<list <SdtmDatasetVariableRefVersion> > (getVersions());
		node = converttoJson(&new_list, "SdtmDatasetVariableRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDatasetVariableRefVersion> new_list = static_cast<list <SdtmDatasetVariableRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDatasetVariableRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDatasetVariableRefVersion obj = *it;
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

RootSdtmDatasetVariableRef
RootSdtmDatasetVariableLinks::getSelf()
{
	return self;
}

void
RootSdtmDatasetVariableLinks::setSelf(RootSdtmDatasetVariableRef  self)
{
	this->self = self;
}

std::list<SdtmDatasetVariableRefVersion>
RootSdtmDatasetVariableLinks::getVersions()
{
	return versions;
}

void
RootSdtmDatasetVariableLinks::setVersions(std::list <SdtmDatasetVariableRefVersion> versions)
{
	this->versions = versions;
}


