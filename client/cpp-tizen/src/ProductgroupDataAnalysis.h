/*
 * ProductgroupDataAnalysis.h
 *
 * 
 */

#ifndef _ProductgroupDataAnalysis_H_
#define _ProductgroupDataAnalysis_H_


#include <string>
#include "ProductgroupDataAnalysisLinks.h"
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

class ProductgroupDataAnalysis : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataAnalysis();
	ProductgroupDataAnalysis(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataAnalysis();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataAnalysisLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(ProductgroupDataAnalysisLinks  _links);

private:
	ProductgroupDataAnalysisLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataAnalysis_H_ */
