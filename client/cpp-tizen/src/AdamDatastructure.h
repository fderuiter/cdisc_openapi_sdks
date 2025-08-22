/*
 * AdamDatastructure.h
 *
 * 
 */

#ifndef _AdamDatastructure_H_
#define _AdamDatastructure_H_


#include <string>
#include "AdamDatastructureLinks.h"
#include "AdamVarset.h"
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

class AdamDatastructure : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamDatastructure();
	AdamDatastructure(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamDatastructure();

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
	std::string getRClass();

	/*! \brief Set 
	 */
	void setRClass(std::string  r_class);
	/*! \brief Get 
	 */
	AdamDatastructureLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(AdamDatastructureLinks  _links);
	/*! \brief Get 
	 */
	std::list<AdamVarset> getAnalysisVariableSets();

	/*! \brief Set 
	 */
	void setAnalysisVariableSets(std::list <AdamVarset> analysisVariableSets);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	std::string r_class;
	AdamDatastructureLinks _links;
	std::list <AdamVarset>analysisVariableSets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamDatastructure_H_ */
