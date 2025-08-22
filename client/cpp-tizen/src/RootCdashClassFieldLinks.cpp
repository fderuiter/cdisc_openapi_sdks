#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashClassFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashClassFieldLinks::RootCdashClassFieldLinks()
{
	//__init();
}

RootCdashClassFieldLinks::~RootCdashClassFieldLinks()
{
	//__cleanup();
}

void
RootCdashClassFieldLinks::__init()
{
	//self = new RootCdashClassFieldRef();
	//new std::list()std::list> versions;
}

void
RootCdashClassFieldLinks::__cleanup()
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
RootCdashClassFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashClassFieldRef")) {
			jsonToValue(&self, node, "RootCdashClassFieldRef", "RootCdashClassFieldRef");
		} else {
			
			RootCdashClassFieldRef* obj = static_cast<RootCdashClassFieldRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashClassFieldRefVersion> new_list;
			CdashClassFieldRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashClassFieldRefVersion")) {
					jsonToValue(&inst, temp_json, "CdashClassFieldRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCdashClassFieldLinks::RootCdashClassFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCdashClassFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashClassFieldRef")) {
		RootCdashClassFieldRef obj = getSelf();
		node = converttoJson(&obj, "RootCdashClassFieldRef", "");
	}
	else {
		
		RootCdashClassFieldRef obj = static_cast<RootCdashClassFieldRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashClassFieldRefVersion")) {
		list<CdashClassFieldRefVersion> new_list = static_cast<list <CdashClassFieldRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CdashClassFieldRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CdashClassFieldRefVersion> new_list = static_cast<list <CdashClassFieldRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashClassFieldRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashClassFieldRefVersion obj = *it;
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

RootCdashClassFieldRef
RootCdashClassFieldLinks::getSelf()
{
	return self;
}

void
RootCdashClassFieldLinks::setSelf(RootCdashClassFieldRef  self)
{
	this->self = self;
}

std::list<CdashClassFieldRefVersion>
RootCdashClassFieldLinks::getVersions()
{
	return versions;
}

void
RootCdashClassFieldLinks::setVersions(std::list <CdashClassFieldRefVersion> versions)
{
	this->versions = versions;
}


