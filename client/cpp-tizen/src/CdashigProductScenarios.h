/*
 * CdashigProductScenarios.h
 *
 * 
 */

#ifndef _CdashigProductScenarios_H_
#define _CdashigProductScenarios_H_


#include <string>
#include "CdashigProductScenariosLinks.h"
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

class CdashigProductScenarios : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigProductScenarios();
	CdashigProductScenarios(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigProductScenarios();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string getSource();

	/*! \brief Set 
	 */
	void setSource(std::string  source);
	/*! \brief Get 
	 */
	std::string getEffectiveDate();

	/*! \brief Set 
	 */
	void setEffectiveDate(std::string  effectiveDate);
	/*! \brief Get 
	 */
	std::string getRegistrationStatus();

	/*! \brief Set 
	 */
	void setRegistrationStatus(std::string  registrationStatus);
	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	CdashigProductScenariosLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigProductScenariosLinks  _links);

private:
	std::string name;
	std::string label;
	std::string description;
	std::string source;
	std::string effectiveDate;
	std::string registrationStatus;
	std::string version;
	CdashigProductScenariosLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigProductScenarios_H_ */
