.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    return-void
.end method

.method public setIsDefaultDataSim(IZ)V
    .locals 0

    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 0

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNoSims(Z)V
    .locals 0

    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 0

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 0

    return-void
.end method

.method public setVowifi(IZ)V
    .locals 0

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 0

    return-void
.end method
