/*
 * CtPackageTerm.h
 *
 * 
 */

#ifndef _CtPackageTerm_H_
#define _CtPackageTerm_H_


#include <string>
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

class CtPackageTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	CtPackageTerm();
	CtPackageTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtPackageTerm();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getConceptId();

	/*! \brief Set 
	 */
	void setConceptId(std::string  conceptId);
	/*! \brief Get 
	 */
	std::string getSubmissionValue();

	/*! \brief Set 
	 */
	void setSubmissionValue(std::string  submissionValue);
	/*! \brief Get 
	 */
	std::string getDefinition();

	/*! \brief Set 
	 */
	void setDefinition(std::string  definition);
	/*! \brief Get 
	 */
	std::string getPreferredTerm();

	/*! \brief Set 
	 */
	void setPreferredTerm(std::string  preferredTerm);
	/*! \brief Get 
	 */
	std::list<std::string> getSynonyms();

	/*! \brief Set 
	 */
	void setSynonyms(std::list <std::string> synonyms);

private:
	std::string conceptId;
	std::string submissionValue;
	std::string definition;
	std::string preferredTerm;
	std::list <std::string>synonyms;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtPackageTerm_H_ */
