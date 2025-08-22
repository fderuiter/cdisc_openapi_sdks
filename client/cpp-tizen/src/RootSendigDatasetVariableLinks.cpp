#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSendigDatasetVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSendigDatasetVariableLinks::RootSendigDatasetVariableLinks()
{
	//__init();
}

RootSendigDatasetVariableLinks::~RootSendigDatasetVariableLinks()
{
	//__cleanup();
}

void
RootSendigDatasetVariableLinks::__init()
{
	//self = new RootSendigDatasetVariableRef();
	//new std::list()std::list> versions;
}

void
RootSendigDatasetVariableLinks::__cleanup()
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
RootSendigDatasetVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSendigDatasetVariableRef")) {
			jsonToValue(&self, node, "RootSendigDatasetVariableRef", "RootSendigDatasetVariableRef");
		} else {
			
			RootSendigDatasetVariableRef* obj = static_cast<RootSendigDatasetVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigDatasetVariableRefVersion> new_list;
			SendigDatasetVariableRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigDatasetVariableRefVersion")) {
					jsonToValue(&inst, temp_json, "SendigDatasetVariableRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootSendigDatasetVariableLinks::RootSendigDatasetVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
RootSendigDatasetVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSendigDatasetVariableRef")) {
		RootSendigDatasetVariableRef obj = getSelf();
		node = converttoJson(&obj, "RootSendigDatasetVariableRef", "");
	}
	else {
		
		RootSendigDatasetVariableRef obj = static_cast<RootSendigDatasetVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SendigDatasetVariableRefVersion")) {
		list<SendigDatasetVariableRefVersion> new_list = static_cast<list <SendigDatasetVariableRefVersion> > (getVersions());
		node = converttoJson(&new_list, "SendigDatasetVariableRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<SendigDatasetVariableRefVersion> new_list = static_cast<list <SendigDatasetVariableRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigDatasetVariableRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigDatasetVariableRefVersion obj = *it;
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

RootSendigDatasetVariableRef
RootSendigDatasetVariableLinks::getSelf()
{
	return self;
}

void
RootSendigDatasetVariableLinks::setSelf(RootSendigDatasetVariableRef  self)
{
	this->self = self;
}

std::list<SendigDatasetVariableRefVersion>
RootSendigDatasetVariableLinks::getVersions()
{
	return versions;
}

void
RootSendigDatasetVariableLinks::setVersions(std::list <SendigDatasetVariableRefVersion> versions)
{
	this->versions = versions;
}


