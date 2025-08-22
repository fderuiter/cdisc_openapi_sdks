#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashDomainFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashDomainFieldLinks::RootCdashDomainFieldLinks()
{
	//__init();
}

RootCdashDomainFieldLinks::~RootCdashDomainFieldLinks()
{
	//__cleanup();
}

void
RootCdashDomainFieldLinks::__init()
{
	//self = new RootCdashDomainFieldRef();
	//new std::list()std::list> versions;
}

void
RootCdashDomainFieldLinks::__cleanup()
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
RootCdashDomainFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashDomainFieldRef")) {
			jsonToValue(&self, node, "RootCdashDomainFieldRef", "RootCdashDomainFieldRef");
		} else {
			
			RootCdashDomainFieldRef* obj = static_cast<RootCdashDomainFieldRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashDomainFieldRefVersion> new_list;
			CdashDomainFieldRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashDomainFieldRefVersion")) {
					jsonToValue(&inst, temp_json, "CdashDomainFieldRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCdashDomainFieldLinks::RootCdashDomainFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCdashDomainFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashDomainFieldRef")) {
		RootCdashDomainFieldRef obj = getSelf();
		node = converttoJson(&obj, "RootCdashDomainFieldRef", "");
	}
	else {
		
		RootCdashDomainFieldRef obj = static_cast<RootCdashDomainFieldRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashDomainFieldRefVersion")) {
		list<CdashDomainFieldRefVersion> new_list = static_cast<list <CdashDomainFieldRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CdashDomainFieldRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CdashDomainFieldRefVersion> new_list = static_cast<list <CdashDomainFieldRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashDomainFieldRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashDomainFieldRefVersion obj = *it;
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

RootCdashDomainFieldRef
RootCdashDomainFieldLinks::getSelf()
{
	return self;
}

void
RootCdashDomainFieldLinks::setSelf(RootCdashDomainFieldRef  self)
{
	this->self = self;
}

std::list<CdashDomainFieldRefVersion>
RootCdashDomainFieldLinks::getVersions()
{
	return versions;
}

void
RootCdashDomainFieldLinks::setVersions(std::list <CdashDomainFieldRefVersion> versions)
{
	this->versions = versions;
}


