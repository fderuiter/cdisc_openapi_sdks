/*
 * ExportQrsResponses.h
 *
 * 
 */

#ifndef _ExportQrsResponses_H_
#define _ExportQrsResponses_H_


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

class ExportQrsResponses : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportQrsResponses();
	ExportQrsResponses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportQrsResponses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getResponseGroup();

	/*! \brief Set 
	 */
	void setResponseGroup(std::string  responseGroup);
	/*! \brief Get 
	 */
	std::string getSequence();

	/*! \brief Set 
	 */
	void setSequence(std::string  sequence);
	/*! \brief Get 
	 */
	std::string getResponsesOriginalResultCodelistCCode();

	/*! \brief Set 
	 */
	void setResponsesOriginalResultCodelistCCode(std::string  responsesOriginalResultCodelistCCode);
	/*! \brief Get 
	 */
	std::string getResponsesOriginalResultTermCCode();

	/*! \brief Set 
	 */
	void setResponsesOriginalResultTermCCode(std::string  responsesOriginalResultTermCCode);
	/*! \brief Get 
	 */
	std::string getResponsesOriginalResultUnitCodelistCCode();

	/*! \brief Set 
	 */
	void setResponsesOriginalResultUnitCodelistCCode(std::string  responsesOriginalResultUnitCodelistCCode);
	/*! \brief Get 
	 */
	std::string getResponsesOriginalResultUnitTermCCode();

	/*! \brief Set 
	 */
	void setResponsesOriginalResultUnitTermCCode(std::string  responsesOriginalResultUnitTermCCode);
	/*! \brief Get 
	 */
	std::string getResponsesStandardizedResultCodelistCCode();

	/*! \brief Set 
	 */
	void setResponsesStandardizedResultCodelistCCode(std::string  responsesStandardizedResultCodelistCCode);
	/*! \brief Get 
	 */
	std::string getResponsesStandardizedResultTermCCode();

	/*! \brief Set 
	 */
	void setResponsesStandardizedResultTermCCode(std::string  responsesStandardizedResultTermCCode);
	/*! \brief Get 
	 */
	std::string getResponsesStandardizedResultUnitCodelistCCode();

	/*! \brief Set 
	 */
	void setResponsesStandardizedResultUnitCodelistCCode(std::string  responsesStandardizedResultUnitCodelistCCode);
	/*! \brief Get 
	 */
	std::string getResponsesStandardizedResultUnitTermCCode();

	/*! \brief Set 
	 */
	void setResponsesStandardizedResultUnitTermCCode(std::string  responsesStandardizedResultUnitTermCCode);

private:
	std::string responseGroup;
	std::string sequence;
	std::string responsesOriginalResultCodelistCCode;
	std::string responsesOriginalResultTermCCode;
	std::string responsesOriginalResultUnitCodelistCCode;
	std::string responsesOriginalResultUnitTermCCode;
	std::string responsesStandardizedResultCodelistCCode;
	std::string responsesStandardizedResultTermCCode;
	std::string responsesStandardizedResultUnitCodelistCCode;
	std::string responsesStandardizedResultUnitTermCCode;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportQrsResponses_H_ */
