.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$IconState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        ">;",
        "Lcom/android/systemui/DemoMode;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public abstract addCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V
.end method

.method public abstract addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract addMobileTypeListener(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
.end method

.method public abstract getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
.end method

.method public abstract getSignalState()Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;
.end method

.method public abstract hasEmergencyCryptKeeperText()Z
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public abstract removeCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V
.end method

.method public abstract removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract removeMobileTypeListener(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
