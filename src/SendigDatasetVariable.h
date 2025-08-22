/*
 * SendigDatasetVariable.h
 *
 * 
 */

#ifndef _SendigDatasetVariable_H_
#define _SendigDatasetVariable_H_


#include <string>
#include "SendigDatasetVariableLinks.h"
#include <list>
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

class SendigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigDatasetVariable();
	SendigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigDatasetVariable();

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
	std::string getSimpleDatatype();

	/*! \brief Set 
	 */
	void setSimpleDatatype(std::string  simpleDatatype);
	/*! \brief Get 
	 */
	std::string getCore();

	/*! \brief Set 
	 */
	void setCore(std::string  core);
	/*! \brief Get 
	 */
	std::string getDescribedValueDomain();

	/*! \brief Set 
	 */
	void setDescribedValueDomain(std::string  describedValueDomain);
	/*! \brief Get 
	 */
	std::list<std::string> getValueList();

	/*! \brief Set 
	 */
	void setValueList(std::list <std::string> valueList);
	/*! \brief Get 
	 */
	SendigDatasetVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SendigDatasetVariableLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	std::string role;
	std::string simpleDatatype;
	std::string core;
	std::string describedValueDomain;
	std::list <std::string>valueList;
	SendigDatasetVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigDatasetVariable_H_ */
