.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final EMERGENCY_MMTEL:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final MAX:I = 0x3

.field public static final MMTEL:I = 0x1

.field public static final RCS:I = 0x2

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NOT_AVAILABLE:I = 0x0

.field public static final STATE_READY:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method static synthetic lambda$-android_telephony_ims_feature_ImsFeature_4367(ILandroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .registers 2

    invoke-interface {p1, p0}, Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;->onFeatureRemoved(I)V

    return-void
.end method

.method private notifyFeatureState(I)V
    .registers 9

    iget-object v4, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_56

    :try_start_15
    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying ImsFeatureState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_32} :catch_33
    .catchall {:try_start_15 .. :try_end_32} :catchall_56

    goto :goto_9

    :catch_33
    move-exception v1

    :try_start_34
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v3, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_56

    goto :goto_9

    :catchall_56
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_59
    monitor-exit v4

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->sendImsServiceIntent(I)V

    return-void
.end method

.method private sendImsServiceIntent(I)V
    .registers 5

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    :cond_9
    return-void

    :cond_a
    packed-switch p1, :pswitch_data_36

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_15
    const-string/jumbo v1, "android:phone_id"

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_23
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :pswitch_2c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_15

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public addFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .registers 4

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_15

    :try_start_b
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    :try_start_10
    monitor-exit v2

    :goto_11
    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    const-string/jumbo v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getFeatureState()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    return v0
.end method

.method public notifyFeatureRemoved(I)V
    .registers 5

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    new-instance v2, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/-$Lambda$nHF_Dbrg4P2H381tqGPRuFD0u_w;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public removeFeatureRemovedListener(Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V
    .registers 4

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mRemovedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final setFeatureState(I)V
    .registers 3

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_9
    return-void
.end method

.method public setSlotId(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method
