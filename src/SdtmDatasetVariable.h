/*
 * SdtmDatasetVariable.h
 *
 * 
 */

#ifndef _SdtmDatasetVariable_H_
#define _SdtmDatasetVariable_H_


#include <string>
#include "SdtmDatasetVariableLinks.h"
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

class SdtmDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDatasetVariable();
	SdtmDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
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
	std::string getSimpleDatatype();

	/*! \brief Set 
	 */
	void setSimpleDatatype(std::string  simpleDatatype);
	/*! \brief Get 
	 */
	std::string getDescribedValueDomain();

	/*! \brief Set 
	 */
	void setDescribedValueDomain(std::string  describedValueDomain);
	/*! \brief Get 
	 */
	SdtmDatasetVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmDatasetVariableLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	std::string role;
	std::string roleDescription;
	std::string simpleDatatype;
	std::string describedValueDomain;
	SdtmDatasetVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDatasetVariable_H_ */
