package com.shop.assembler.cartridge.handler;

import atg.nucleus.ServiceEvent;
import atg.nucleus.ServiceException;
import atg.nucleus.ServiceListener;
import atg.nucleus.logging.ApplicationLoggingImpl;
import atg.nucleus.logging.ApplicationLoggingSender;
import atg.nucleus.logging.LoggingPropertied;
import atg.service.actor.Actor;
import com.endeca.infront.assembler.AbstractCartridgeHandler;
import com.endeca.infront.assembler.CartridgeHandlerException;
import com.endeca.infront.assembler.ContentItem;
import com.shop.dynamo.service.actor.ShopActorExecutor;

/**
 * Created by Jitendra on 1/3/2017.
 */
public class ActorInvokingCartridgeHandler extends AbstractCartridgeHandler implements LoggingPropertied, ServiceListener {

    ApplicationLoggingImpl logging;
    private Actor actorToInvoke;
    private ShopActorExecutor actorExecutor;

    public ActorInvokingCartridgeHandler() {
        logging = new ApplicationLoggingImpl(this.getClass().getName());
        logging.setLoggingDebug(true);
    }


    @Override
    public ContentItem initialize(ContentItem pContentItem) throws CartridgeHandlerException {
        return super.initialize(pContentItem);
    }

    @Override
    public void preprocess(ContentItem pContentItem) throws CartridgeHandlerException {
        super.preprocess(pContentItem);
    }

    @Override
    public ContentItem process(ContentItem pContentItem) throws CartridgeHandlerException {
        if (getLogging().isLoggingDebug()) {
            getLogging().logDebug("Inside ActorInvokingCartridgeHandler.process pContentItem::" + pContentItem);
        }
        getActorExecutor().invokeActor(getActorToInvoke(), pContentItem);

        return pContentItem;
    }

    // getLogging method comes from LoggingPropertied
    @Override
    public ApplicationLoggingSender getLogging() {
        return logging;
    }

    public Actor getActorToInvoke() {
        return actorToInvoke;
    }

    public void setActorToInvoke(Actor actorToInvoke) {
        this.actorToInvoke = actorToInvoke;
    }

    // startService and stopService method comes from ServiceListener
    @Override
    public void startService(ServiceEvent pEvent) throws ServiceException {
        logging.initializeFromServiceEvent(pEvent);
    }

    @Override
    public void stopService() {
        getLogging().logInfo("Shutting down ActorInvokingCartridgeHandler");
    }

    public ShopActorExecutor getActorExecutor() {
        return actorExecutor;
    }

    public void setActorExecutor(ShopActorExecutor actorExecutor) {
        this.actorExecutor = actorExecutor;
    }
}
