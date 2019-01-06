.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field private static final MAX_STACK_SIZE:I = 0x64

.field private static final NAVI_APP_PKG_NAME:[Ljava/lang/String;

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field private static final VOICE_ASSIST_PKG_NAME:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyFocusOwnerOnDuck:Z

.field private mRingOrCallActive:Z


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.autonavi.minimap"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.tencent.map"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v1, "focus commands as seen by MediaFocusControl"

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    const/16 v0, 0xe

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .registers 7

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_f

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_22
    :try_start_22
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v1, :cond_7a

    const-string/jumbo v1, "No external focus policy\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_1f

    :goto_32
    monitor-exit v2

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Notify on duck:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " In ring or call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_7a
    :try_start_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "External focus policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", focus owners:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    :try_end_9d
    .catchall {:try_start_7a .. :try_end_9d} :catchall_1f

    goto :goto_32
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/16 v0, 0x3e8

    return v0

    :pswitch_c
    const/16 v0, 0x2bc

    return v0

    :pswitch_f
    const/16 v0, 0x1f4

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3

    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    :cond_1a
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(ILcom/android/server/audio/FocusRequester;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_e
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v1, v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_46

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2

    :cond_46
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v2, 0x2

    return v2
.end method

.method private pushBelowNaviFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_e
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v1, v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_46

    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "No navigation focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2

    :cond_46
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert Focus below:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v2, 0x2

    return v2
.end method

.method private removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    return-void

    :cond_9
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    :cond_39
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    if-eqz p3, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    :cond_2e
    if-eqz p2, :cond_33

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_33
    return-void

    :cond_34
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_3a
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    :goto_14
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_1a

    :cond_4d
    const/4 v1, 0x0

    goto :goto_14

    :cond_4f
    if-eqz v1, :cond_54

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_54
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .registers 3

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    return-void
.end method

.method private shouldLockForNavigation(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    return v2

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 17

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "MediaFocusControl"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :try_start_43
    sget-object v11, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_46
    .catch Ljava/util/ConcurrentModificationException; {:try_start_43 .. :try_end_46} :catch_8a

    :try_start_46
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_64

    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_87

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    :try_start_62
    monitor-exit v11
    :try_end_63
    .catch Ljava/util/ConcurrentModificationException; {:try_start_62 .. :try_end_63} :catch_8a

    return v1

    :cond_64
    :try_start_64
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string/jumbo v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_85

    const/4 v1, 0x1

    :goto_70
    and-int v10, v2, v1

    if-eqz v10, :cond_77

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    :cond_77
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    if-eqz v10, :cond_82

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_87

    :cond_82
    :try_start_82
    monitor-exit v11

    :goto_83
    const/4 v1, 0x1

    return v1

    :cond_85
    const/4 v1, 0x0

    goto :goto_70

    :catchall_87
    move-exception v1

    monitor-exit v11

    throw v1
    :try_end_8a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_82 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v9

    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_83
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_36

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x1

    :cond_28
    if-eqz v0, :cond_2c

    monitor-exit v4

    return-void

    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_36

    monitor-exit v4

    return-void

    :catchall_36
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .registers 5

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;)V

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .registers 8

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_20

    if-nez v1, :cond_a

    monitor-exit v2

    return v4

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_20

    if-nez v0, :cond_1a

    monitor-exit v2

    return v4

    :cond_1a
    :try_start_1a
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    move-result v1

    monitor-exit v2

    return v1

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    array-length v2, p2

    :goto_2
    if-ge v1, v2, :cond_12

    aget-object v0, p2, v1

    const-string/jumbo v3, "focusStack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    :cond_12
    return-void

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1c

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    return-void
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1e

    :goto_1c
    const/4 v2, 0x1

    return v2

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .registers 16

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/FocusRequester;

    if-eqz v7, :cond_3b

    invoke-virtual {v7, p3}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v7}, Lcom/android/server/audio/FocusRequester;->release()V

    new-instance v4, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v4, p0, p4}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/server/audio/FocusRequester;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    :goto_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_58

    :goto_3a
    return v10

    :cond_3b
    if-eq p2, v10, :cond_40

    const/4 v0, 0x2

    if-ne p2, v0, :cond_35

    :cond_40
    new-instance v4, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v4, p0, p4}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/server/audio/FocusRequester;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :catch_58
    move-exception v6

    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4

    move-object v0, p1

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_36
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_36
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit v3

    return-void

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 34

    sget-object v5, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestAudioFocus() from uid/pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " clientId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " callingPack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " flags=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " sdk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "MediaFocusControl"

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v5

    if-nez v5, :cond_8c

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_8c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v5, v7, v6, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_a0

    const/4 v5, 0x0

    return v5

    :cond_a0
    sget-object v24, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v24

    :try_start_a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_bb

    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_a3 .. :try_end_b8} :catchall_2a8

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_bb
    :try_start_bb
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    xor-int/lit8 v6, v5, 0x1

    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_135

    const/4 v5, 0x1

    :goto_cd
    and-int v17, v6, v5

    if-eqz v17, :cond_d6

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    :cond_d6
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->shouldLockForNavigation(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fe

    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set NAVI_LOCK for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p7, p7, 0x10

    :cond_fe
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v5, :cond_137

    new-instance v3, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p2

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    :goto_11a
    const/16 v18, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v5

    if-nez v5, :cond_13b

    and-int/lit8 v5, p7, 0x1

    if-nez v5, :cond_139

    const/16 v22, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    :try_end_132
    .catchall {:try_start_bb .. :try_end_132} :catchall_2a8

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_135
    const/4 v5, 0x0

    goto :goto_cd

    :cond_137
    const/4 v3, 0x0

    goto :goto_11a

    :cond_139
    const/16 v18, 0x1

    :cond_13b
    const/16 v19, 0x0

    if-nez v18, :cond_188

    :try_start_13f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_188

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.miui.voiceassist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_188

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/MediaFocusControl;->isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v5

    if-eqz v5, :cond_188

    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delay focus grant for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    :cond_188
    const/16 v23, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;ILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    :try_end_194
    .catchall {:try_start_13f .. :try_end_194} :catchall_2a8

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x2

    monitor-exit v24

    return v5

    :cond_19a
    :try_start_19a
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1a3
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_2a8

    const/4 v5, 0x0

    :try_start_1a4
    move-object/from16 v0, p3

    invoke-interface {v0, v11, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a9
    .catch Landroid/os/RemoteException; {:try_start_1a4 .. :try_end_1a9} :catch_1f2
    .catchall {:try_start_1a4 .. :try_end_1a9} :catchall_2a8

    :try_start_1a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_225

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_225

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/audio/FocusRequester;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v5

    move/from16 v0, p2

    if-ne v5, v0, :cond_219

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_219

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_1ef
    .catchall {:try_start_1a9 .. :try_end_1ef} :catchall_2a8

    const/4 v5, 0x1

    monitor-exit v24

    return v5

    :catch_1f2
    move-exception v16

    :try_start_1f3
    const-string/jumbo v5, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catchall {:try_start_1f3 .. :try_end_216} :catchall_2a8

    const/4 v5, 0x0

    monitor-exit v24

    return v5

    :cond_219
    if-nez v18, :cond_225

    :try_start_21b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_225
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    new-instance v4, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p0

    move/from16 v15, p8

    invoke-direct/range {v4 .. v15}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    if-eqz v18, :cond_260

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v21

    if-eqz v21, :cond_25e

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_25e
    .catchall {:try_start_21b .. :try_end_25e} :catchall_2a8

    :cond_25e
    monitor-exit v24

    return v21

    :cond_260
    if-eqz v19, :cond_277

    :try_start_262
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->pushBelowNaviFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v21

    if-eqz v21, :cond_275

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_275
    .catchall {:try_start_262 .. :try_end_275} :catchall_2a8

    :cond_275
    monitor-exit v24

    return v21

    :cond_277
    :try_start_277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_288

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;)V

    :cond_288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    if-eqz v17, :cond_2a5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V
    :try_end_2a5
    .catchall {:try_start_277 .. :try_end_2a5} :catchall_2a8

    :cond_2a5
    monitor-exit v24

    const/4 v5, 0x1

    return v5

    :catchall_2a8
    move-exception v5

    monitor-exit v24

    throw v5
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    return-void
.end method

.method public unmutePlayersForCall()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v0, p1, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
