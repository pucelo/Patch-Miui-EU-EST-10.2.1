.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    if-eqz p1, :cond_14

    :try_start_a
    new-instance v1, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_18

    :goto_13
    return-void

    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    goto :goto_13

    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    return-void
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_14
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_14
    move-exception v0

    goto :goto_f
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public getCallId()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .registers 4

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    return v2
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    return-object v2
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public isAlive()Z
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    return v2

    :pswitch_e
    const/4 v1, 0x1

    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public isInCall()Z
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    return v2
.end method

.method public isMultiparty()Z
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_6

    return v2

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    return v2
.end method

.method public merge()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public reject(I)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public sendRttModifyResponse(Z)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-void
.end method

.method public setMute(Z)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public startDtmf(C)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public stopDtmf()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public terminate(I)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method
