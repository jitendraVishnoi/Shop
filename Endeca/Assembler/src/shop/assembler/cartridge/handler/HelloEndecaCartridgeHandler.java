package shop.assembler.cartridge.handler;

import atg.endeca.assembler.AssemblerTools;

import com.endeca.infront.assembler.AbstractCartridgeHandler;
import com.endeca.infront.assembler.CartridgeHandlerException;
import com.endeca.infront.assembler.ContentItem;

public class HelloEndecaCartridgeHandler extends AbstractCartridgeHandler{

	@Override
	public ContentItem process(ContentItem paramT) throws CartridgeHandlerException {
		AssemblerTools.getApplicationLogging().vlogDebug("HelloEndecaCartridgeHandler.process paramT::{0}", paramT);
		return paramT;
	}

}
