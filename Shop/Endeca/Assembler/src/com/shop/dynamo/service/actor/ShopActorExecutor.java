package com.shop.dynamo.service.actor;

import atg.nucleus.GenericService;
import atg.service.actor.*;
import com.endeca.infront.assembler.ContentItem;
import com.shop.AssemblerConstant;

/**
 * Created by Jitendra on 1/10/2017.
 */
public class ShopActorExecutor extends GenericService {

    public static final String ATG_CONTENTS = "atg_contents";
    private ActorContextFactory contextFactory;
    private ModelMapFactory mapFactory;

    public ContentItem invokeActor(Actor actor, ContentItem contentItem) {
        vlogDebug("Inside ShopActorExecutor.invokeActor actor:{0}, contenItem:{1}", actor, contentItem);
        if (actor == null) {
            return contentItem;
        } else {
            try {
                ActorContext context = getContextFactory().createActorContext();
                context.putAttribute(AssemblerConstant.CURRENT_CONTENT, contentItem);
                ModelMap modelMap = getMapFactory().createModelMap();
                if (actor instanceof VariantActor) {
                    ActorUtils.putActorChainId(context, ((VariantActor) actor).getDefaultActorChainId());
                }
                actor.act(context, modelMap);
                contentItem.put(ATG_CONTENTS, modelMap);
            } catch (ActorException e) {
                e.printStackTrace();
            }
        }
        return contentItem;
    }

    public ActorContextFactory getContextFactory() {
        return contextFactory;
    }

    public void setContextFactory(ActorContextFactory contextFactory) {
        this.contextFactory = contextFactory;
    }

    public ModelMapFactory getMapFactory() {
        return mapFactory;
    }

    public void setMapFactory(ModelMapFactory mapFactory) {
        this.mapFactory = mapFactory;
    }
}
