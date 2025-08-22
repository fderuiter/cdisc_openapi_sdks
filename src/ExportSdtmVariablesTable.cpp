#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmVariablesTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmVariablesTable::ExportSdtmVariablesTable()
{
	//__init();
}

ExportSdtmVariablesTable::~ExportSdtmVariablesTable()
{
	//__cleanup();
}

void
ExportSdtmVariablesTable::__init()
{
	//new std::list()std::list> classvariables;
	//new std::list()std::list> datasetvariables;
}

void
ExportSdtmVariablesTable::__cleanup()
{
	//if(classvariables != NULL) {
	//classvariables.RemoveAll(true);
	//delete classvariables;
	//classvariables = NULL;
	//}
	//if(datasetvariables != NULL) {
	//datasetvariables.RemoveAll(true);
	//delete datasetvariables;
	//datasetvariables = NULL;
	//}
	//
}

void
ExportSdtmVariablesTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *classvariablesKey = "class-variables";
	node = json_object_get_member(pJsonObject, classvariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSdtmClassVariablesRow> new_list;
			ExportSdtmClassVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSdtmClassVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportSdtmClassVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classvariables = new_list;
		}
		
	}
	const gchar *datasetvariablesKey = "dataset-variables";
	node = json_object_get_member(pJsonObject, datasetvariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSdtmDatasetVariablesRow> new_list;
			ExportSdtmDatasetVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSdtmDatasetVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportSdtmDatasetVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetvariables = new_list;
		}
		
	}
}

ExportSdtmVariablesTable::ExportSdtmVariablesTable(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmVariablesTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportSdtmClassVariablesRow")) {
		list<ExportSdtmClassVariablesRow> new_list = static_cast<list <ExportSdtmClassVariablesRow> > (getClassvariables());
		node = converttoJson(&new_list, "ExportSdtmClassVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSdtmClassVariablesRow> new_list = static_cast<list <ExportSdtmClassVariablesRow> > (getClassvariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSdtmClassVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSdtmClassVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classvariablesKey = "class-variables";
	json_object_set_member(pJsonObject, classvariablesKey, node);
	if (isprimitive("ExportSdtmDatasetVariablesRow")) {
		list<ExportSdtmDatasetVariablesRow> new_list = static_cast<list <ExportSdtmDatasetVariablesRow> > (getDatasetvariables());
		node = converttoJson(&new_list, "ExportSdtmDatasetVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSdtmDatasetVariablesRow> new_list = static_cast<list <ExportSdtmDatasetVariablesRow> > (getDatasetvariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSdtmDatasetVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSdtmDatasetVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetvariablesKey = "dataset-variables";
	json_object_set_member(pJsonObject, datasetvariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportSdtmClassVariablesRow>
ExportSdtmVariablesTable::getClassvariables()
{
	return classvariables;
}

void
ExportSdtmVariablesTable::setClassvariables(std::list <ExportSdtmClassVariablesRow> classvariables)
{
	this->classvariables = classvariables;
}

std::list<ExportSdtmDatasetVariablesRow>
ExportSdtmVariablesTable::getDatasetvariables()
{
	return datasetvariables;
}

void
ExportSdtmVariablesTable::setDatasetvariables(std::list <ExportSdtmDatasetVariablesRow> datasetvariables)
{
	this->datasetvariables = datasetvariables;
}


