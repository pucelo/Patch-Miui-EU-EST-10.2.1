.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$1;,
        Landroid/telecom/InCallService$2;,
        Landroid/telecom/InCallService$InCallServiceBinder;,
        Landroid/telecom/InCallService$VideoCall;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_ON_CONNECTION_EVENT:I = 0x9

.field private static final MSG_ON_RTT_INITIATION_FAILURE:I = 0xb

.field private static final MSG_ON_RTT_UPGRADE_REQUEST:I = 0xa

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_SILENCE_RINGER:I = 0x8

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method static synthetic -get0(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .registers 2

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .registers 2

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .registers 2

    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-void
.end method


# virtual methods
.method public final canAddCall()Z
    .registers 2

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_5
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    goto :goto_5
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    goto :goto_5
.end method

.method public final getCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getPhone()Landroid/telecom/Phone;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .registers 2

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .registers 2

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .registers 2

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .registers 2

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSilenceRinger()V
    .registers 1

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_14

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    iput-object v2, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public final setAudioRoute(I)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    :cond_9
    return-void
.end method

.method public final setMuted(Z)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    :cond_9
    return-void
.end method
