#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmigWorkbook.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmigWorkbook::ExportSdtmigWorkbook()
{
	//__init();
}

ExportSdtmigWorkbook::~ExportSdtmigWorkbook()
{
	//__cleanup();
}

void
ExportSdtmigWorkbook::__init()
{
	//new std::list()std::list> variables;
	//new std::list()std::list> datasets;
}

void
ExportSdtmigWorkbook::__cleanup()
{
	//if(variables != NULL) {
	//variables.RemoveAll(true);
	//delete variables;
	//variables = NULL;
	//}
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
ExportSdtmigWorkbook::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *variablesKey = "variables";
	node = json_object_get_member(pJsonObject, variablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSdtmigVariablesRow> new_list;
			ExportSdtmigVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSdtmigVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportSdtmigVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			variables = new_list;
		}
		
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSdtmigDatasetsRow> new_list;
			ExportSdtmigDatasetsRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSdtmigDatasetsRow")) {
					jsonToValue(&inst, temp_json, "ExportSdtmigDatasetsRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

ExportSdtmigWorkbook::ExportSdtmigWorkbook(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmigWorkbook::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportSdtmigVariablesRow")) {
		list<ExportSdtmigVariablesRow> new_list = static_cast<list <ExportSdtmigVariablesRow> > (getVariables());
		node = converttoJson(&new_list, "ExportSdtmigVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSdtmigVariablesRow> new_list = static_cast<list <ExportSdtmigVariablesRow> > (getVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSdtmigVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSdtmigVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *variablesKey = "variables";
	json_object_set_member(pJsonObject, variablesKey, node);
	if (isprimitive("ExportSdtmigDatasetsRow")) {
		list<ExportSdtmigDatasetsRow> new_list = static_cast<list <ExportSdtmigDatasetsRow> > (getDatasets());
		node = converttoJson(&new_list, "ExportSdtmigDatasetsRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSdtmigDatasetsRow> new_list = static_cast<list <ExportSdtmigDatasetsRow> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSdtmigDatasetsRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSdtmigDatasetsRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportSdtmigVariablesRow>
ExportSdtmigWorkbook::getVariables()
{
	return variables;
}

void
ExportSdtmigWorkbook::setVariables(std::list <ExportSdtmigVariablesRow> variables)
{
	this->variables = variables;
}

std::list<ExportSdtmigDatasetsRow>
ExportSdtmigWorkbook::getDatasets()
{
	return datasets;
}

void
ExportSdtmigWorkbook::setDatasets(std::list <ExportSdtmigDatasetsRow> datasets)
{
	this->datasets = datasets;
}


