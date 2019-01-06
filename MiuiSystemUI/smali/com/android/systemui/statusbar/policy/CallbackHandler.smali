.class public Lcom/android/systemui/statusbar/policy/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;


# instance fields
.field private final mCarrierNameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileTypeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mMobileTypeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mMobileTypeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    move v6, v7

    :goto_2
    invoke-interface {v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    goto :goto_3

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_2

    move v6, v7

    :goto_5
    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    goto :goto_4

    :cond_2
    move v6, v8

    goto :goto_5

    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_6

    :pswitch_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_7

    :pswitch_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3

    move v6, v7

    :goto_9
    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataEnabled(Z)V

    goto :goto_8

    :cond_3
    move v6, v8

    goto :goto_9

    :pswitch_6
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_b
    invoke-interface {v4, v9, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsImsRegisted(IZ)V

    goto :goto_a

    :cond_6
    move v6, v8

    goto :goto_b

    :pswitch_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_d
    invoke-interface {v4, v9, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVolteNoService(IZ)V

    goto :goto_c

    :cond_7
    move v6, v8

    goto :goto_d

    :pswitch_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_f
    invoke-interface {v4, v9, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSpeechHd(IZ)V

    goto :goto_e

    :cond_8
    move v6, v8

    goto :goto_f

    :pswitch_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_11
    invoke-interface {v4, v9, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVowifi(IZ)V

    goto :goto_10

    :cond_9
    move v6, v8

    goto :goto_11

    :pswitch_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNetworkNameVoice(ILjava/lang/String;)V

    goto :goto_12

    :pswitch_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v7, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsDefaultDataSim(IZ)V

    goto :goto_13

    :pswitch_e
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;->updateCarrierName(ILjava/lang/String;)V

    goto :goto_14

    :pswitch_10
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mMobileTypeListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mMobileTypeListeners:Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mMobileTypeListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v7, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;->updateMobileTypeName(ILjava/lang/String;)V

    goto :goto_15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsDefaultDataSim(IZ)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 17

    new-instance v1, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNoSims(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setSpeechHd(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVowifi(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 9

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCarrierName(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateMobileTypeName(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
