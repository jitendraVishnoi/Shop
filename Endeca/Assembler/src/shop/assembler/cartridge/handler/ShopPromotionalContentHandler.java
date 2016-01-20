package shop.assembler.cartridge.handler;

import com.endeca.infront.assembler.AbstractCartridgeHandler;
import com.endeca.infront.assembler.CartridgeHandlerException;
import com.endeca.infront.assembler.ContentItem;

public class ShopPromotionalContentHandler extends AbstractCartridgeHandler{

	private String message;
	
	@Override
	public ContentItem process(ContentItem contentItem) throws CartridgeHandlerException {
		contentItem.put("message", getMessage());
		return contentItem;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
