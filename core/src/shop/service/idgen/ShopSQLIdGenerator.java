package shop.service.idgen;

import atg.service.idgen.IdGeneratorException;
import atg.service.idgen.SQLIdGenerator;

public class ShopSQLIdGenerator extends SQLIdGenerator{

	@Override
	public String generateStringId(String pIdSpaceName) throws IdGeneratorException {
		
		return super.generateStringId(pIdSpaceName);
	}
}
