.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalCallback"
.end annotation


# virtual methods
.method public abstract setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
.end method

.method public abstract setIsDefaultDataSim(IZ)V
.end method

.method public abstract setIsImsRegisted(IZ)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
.end method

.method public abstract setNetworkNameVoice(ILjava/lang/String;)V
.end method

.method public abstract setNoSims(Z)V
.end method

.method public abstract setSpeechHd(IZ)V
.end method

.method public abstract setSubs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVolteNoService(IZ)V
.end method

.method public abstract setVowifi(IZ)V
.end method

.method public abstract setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
.end method
