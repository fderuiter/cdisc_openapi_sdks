/*
 * XmlProductgroupDataAnalysis.h
 *
 * 
 */

#ifndef _XmlProductgroupDataAnalysis_H_
#define _XmlProductgroupDataAnalysis_H_


#include <string>
#include "ProductgroupDataAnalysis.h"
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

class XmlProductgroupDataAnalysis : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlProductgroupDataAnalysis();
	XmlProductgroupDataAnalysis(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlProductgroupDataAnalysis();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataAnalysis getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupDataAnalysis  self);

private:
	ProductgroupDataAnalysis self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlProductgroupDataAnalysis_H_ */
