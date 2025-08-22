/*
 * ProductsLinks.h
 *
 * 
 */

#ifndef _ProductsLinks_H_
#define _ProductsLinks_H_


#include <string>
#include "ProductgroupDataAnalysis.h"
#include "ProductgroupDataCollection.h"
#include "ProductgroupDataTabulation.h"
#include "ProductgroupQrs.h"
#include "ProductgroupTerminology.h"
#include "ProductsRef.h"
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

class ProductsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductsLinks();
	ProductsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductsRef  self);
	/*! \brief Get 
	 */
	ProductgroupDataCollection getDatacollection();

	/*! \brief Set 
	 */
	void setDatacollection(ProductgroupDataCollection  datacollection);
	/*! \brief Get 
	 */
	ProductgroupDataTabulation getDatatabulation();

	/*! \brief Set 
	 */
	void setDatatabulation(ProductgroupDataTabulation  datatabulation);
	/*! \brief Get 
	 */
	ProductgroupDataAnalysis getDataanalysis();

	/*! \brief Set 
	 */
	void setDataanalysis(ProductgroupDataAnalysis  dataanalysis);
	/*! \brief Get 
	 */
	ProductgroupTerminology getTerminology();

	/*! \brief Set 
	 */
	void setTerminology(ProductgroupTerminology  terminology);
	/*! \brief Get 
	 */
	ProductgroupQrs getMeasure();

	/*! \brief Set 
	 */
	void setMeasure(ProductgroupQrs  measure);

private:
	ProductsRef self;
	ProductgroupDataCollection datacollection;
	ProductgroupDataTabulation datatabulation;
	ProductgroupDataAnalysis dataanalysis;
	ProductgroupTerminology terminology;
	ProductgroupQrs measure;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductsLinks_H_ */
