/*
 * ExportSdtmDatasetVariablesRow.h
 *
 * 
 */

#ifndef _ExportSdtmDatasetVariablesRow_H_
#define _ExportSdtmDatasetVariablesRow_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportSdtmDatasetVariablesRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmDatasetVariablesRow();
	ExportSdtmDatasetVariablesRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmDatasetVariablesRow();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	std::string getVariableOrder();

	/*! \brief Set 
	 */
	void setVariableOrder(std::string  variableOrder);
	/*! \brief Get 
	 */
	std::string getRClass();

	/*! \brief Set 
	 */
	void setRClass(std::string  r_class);
	/*! \brief Get 
	 */
	std::string getDatasetName();

	/*! \brief Set 
	 */
	void setDatasetName(std::string  datasetName);
	/*! \brief Get 
	 */
	std::string getVariableName();

	/*! \brief Set 
	 */
	void setVariableName(std::string  variableName);
	/*! \brief Get 
	 */
	std::string getVariableLabel();

	/*! \brief Set 
	 */
	void setVariableLabel(std::string  variableLabel);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getControlledTermsCodelistorFormat();

	/*! \brief Set 
	 */
	void setControlledTermsCodelistorFormat(std::string  controlledTermsCodelistorFormat);
	/*! \brief Get 
	 */
	std::string getRole();

	/*! \brief Set 
	 */
	void setRole(std::string  role);
	/*! \brief Get 
	 */
	std::string getRoleDescription();

	/*! \brief Set 
	 */
	void setRoleDescription(std::string  roleDescription);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);

private:
	std::string version;
	std::string variableOrder;
	std::string r_class;
	std::string datasetName;
	std::string variableName;
	std::string variableLabel;
	std::string type;
	std::string controlledTermsCodelistorFormat;
	std::string role;
	std::string roleDescription;
	std::string description;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmDatasetVariablesRow_H_ */
