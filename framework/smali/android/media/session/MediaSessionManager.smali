.class public final Landroid/media/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$Callback;,
        Landroid/media/session/MediaSessionManager$CallbackImpl;,
        Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListener;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;,
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    }
.end annotation


# static fields
.field public static final RESULT_MEDIA_KEY_HANDLED:I = 0x1

.field public static final RESULT_MEDIA_KEY_NOT_HANDLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

.field private final mService:Landroid/media/session/ISessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    return-void
.end method


# virtual methods
.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    return-void
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V
    .registers 10

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-nez p4, :cond_12

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    :cond_12
    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Attempted to add session listener twice, ignoring."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_4a

    monitor-exit v3

    return-void

    :cond_28
    :try_start_28
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p4}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_4a

    :try_start_2f
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get3(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Landroid/media/session/ISessionManager;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_3f
    .catchall {:try_start_2f .. :try_end_3d} :catchall_4a

    :goto_3d
    monitor-exit v3

    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Error in addOnActiveSessionsChangedListener."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4a

    goto :goto_3d

    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    return-void
.end method

.method public createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v0

    return-object v0
.end method

.method public dispatchAdjustVolume(III)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchAdjustVolume(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SessionManager"

    const-string/jumbo v2, "Failed to send adjust volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SessionManager"

    const-string/jumbo v2, "Failed to send key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SessionManager"

    const-string/jumbo v2, "Failed to send volume key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v6, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v6, p1, p2}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v5, :cond_33

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v7, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v1, v7, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_26} :catch_29

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :catch_29
    move-exception v3

    const-string/jumbo v6, "SessionManager"

    const-string/jumbo v7, "Failed to get active sessions: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return-object v2
.end method

.method public isGlobalPriorityActive()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1}, Landroid/media/session/ISessionManager;->isGlobalPriorityActive()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "SessionManager"

    const-string/jumbo v2, "Failed to check if the global priority is active."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_34

    if-eqz v1, :cond_24

    :try_start_18
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get3(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_26
    .catchall {:try_start_18 .. :try_end_21} :catchall_37

    :try_start_21
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-wrap0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    :cond_24
    :goto_24
    monitor-exit v3

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Error in removeOnActiveSessionsChangedListener."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_37

    :try_start_30
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-wrap0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_24

    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_37
    move-exception v2

    :try_start_38
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-wrap0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_34
.end method

.method public setCallback(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .registers 8

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_10

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_27
    .catchall {:try_start_6 .. :try_end_e} :catchall_32

    :goto_e
    monitor-exit v3

    return-void

    :cond_10
    if-nez p2, :cond_18

    :try_start_12
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_18
    new-instance v2, Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-direct {v2, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl;-><init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27
    .catchall {:try_start_12 .. :try_end_26} :catchall_32

    goto :goto_e

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Failed to set media key callback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_e

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .registers 8

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_10

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_27
    .catchall {:try_start_6 .. :try_end_e} :catchall_32

    :goto_e
    monitor-exit v3

    return-void

    :cond_10
    if-nez p2, :cond_18

    :try_start_12
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_18
    new-instance v2, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-direct {v2, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27
    .catchall {:try_start_12 .. :try_end_26} :catchall_32

    goto :goto_e

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Failed to set media key listener"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_e

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .registers 8

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_10

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_27
    .catchall {:try_start_6 .. :try_end_e} :catchall_32

    :goto_e
    monitor-exit v3

    return-void

    :cond_10
    if-nez p2, :cond_18

    :try_start_12
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_18
    new-instance v2, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-direct {v2, p1, p2}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-interface {v2, v4}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27
    .catchall {:try_start_12 .. :try_end_26} :catchall_32

    goto :goto_e

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v2, "SessionManager"

    const-string/jumbo v4, "Failed to set volume key long press listener"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_e

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SessionManager"

    const-string/jumbo v2, "Error in setRemoteVolumeController."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
