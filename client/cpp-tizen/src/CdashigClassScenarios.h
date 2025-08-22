/*
 * CdashigClassScenarios.h
 *
 * 
 */

#ifndef _CdashigClassScenarios_H_
#define _CdashigClassScenarios_H_


#include <string>
#include "CdashigClassScenariosLinks.h"
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

class CdashigClassScenarios : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClassScenarios();
	CdashigClassScenarios(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClassScenarios();

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
	CdashigClassScenariosLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigClassScenariosLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	CdashigClassScenariosLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClassScenarios_H_ */
