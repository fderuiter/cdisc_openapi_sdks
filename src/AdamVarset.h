/*
 * AdamVarset.h
 *
 * 
 */

#ifndef _AdamVarset_H_
#define _AdamVarset_H_


#include <string>
#include "AdamVariable.h"
#include "AdamVarsetLinks.h"
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

class AdamVarset : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamVarset();
	AdamVarset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamVarset();

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
	AdamVarsetLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(AdamVarsetLinks  _links);
	/*! \brief Get 
	 */
	std::list<AdamVariable> getAnalysisVariables();

	/*! \brief Set 
	 */
	void setAnalysisVariables(std::list <AdamVariable> analysisVariables);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	AdamVarsetLinks _links;
	std::list <AdamVariable>analysisVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamVarset_H_ */
