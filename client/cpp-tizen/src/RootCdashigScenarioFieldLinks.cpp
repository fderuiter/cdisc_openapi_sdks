#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashigScenarioFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashigScenarioFieldLinks::RootCdashigScenarioFieldLinks()
{
	//__init();
}

RootCdashigScenarioFieldLinks::~RootCdashigScenarioFieldLinks()
{
	//__cleanup();
}

void
RootCdashigScenarioFieldLinks::__init()
{
	//self = new RootCdashigScenarioFieldRef();
	//new std::list()std::list> versions;
}

void
RootCdashigScenarioFieldLinks::__cleanup()
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
RootCdashigScenarioFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigScenarioFieldRef")) {
			jsonToValue(&self, node, "RootCdashigScenarioFieldRef", "RootCdashigScenarioFieldRef");
		} else {
			
			RootCdashigScenarioFieldRef* obj = static_cast<RootCdashigScenarioFieldRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigScenarioFieldRefVersion> new_list;
			CdashigScenarioFieldRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigScenarioFieldRefVersion")) {
					jsonToValue(&inst, temp_json, "CdashigScenarioFieldRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCdashigScenarioFieldLinks::RootCdashigScenarioFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCdashigScenarioFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigScenarioFieldRef")) {
		RootCdashigScenarioFieldRef obj = getSelf();
		node = converttoJson(&obj, "RootCdashigScenarioFieldRef", "");
	}
	else {
		
		RootCdashigScenarioFieldRef obj = static_cast<RootCdashigScenarioFieldRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigScenarioFieldRefVersion")) {
		list<CdashigScenarioFieldRefVersion> new_list = static_cast<list <CdashigScenarioFieldRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CdashigScenarioFieldRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CdashigScenarioFieldRefVersion> new_list = static_cast<list <CdashigScenarioFieldRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigScenarioFieldRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigScenarioFieldRefVersion obj = *it;
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

RootCdashigScenarioFieldRef
RootCdashigScenarioFieldLinks::getSelf()
{
	return self;
}

void
RootCdashigScenarioFieldLinks::setSelf(RootCdashigScenarioFieldRef  self)
{
	this->self = self;
}

std::list<CdashigScenarioFieldRefVersion>
RootCdashigScenarioFieldLinks::getVersions()
{
	return versions;
}

void
RootCdashigScenarioFieldLinks::setVersions(std::list <CdashigScenarioFieldRefVersion> versions)
{
	this->versions = versions;
}


