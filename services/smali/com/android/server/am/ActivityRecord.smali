.class final Lcom/android/server/am/ActivityRecord;
.super Lcom/android/server/am/ConfigurationContainer;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/AppWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I = null

.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field static final APPLICATION_ACTIVITY_TYPE:I = 0x0

.field static final ASSISTANT_ACTIVITY_TYPE:I = 0x3

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final HOME_ACTIVITY_TYPE:I = 0x1

.field static final RECENTS_ACTIVITY_TYPE:I = 0x2

.field private static final RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_SAVED_STATE:Ljava/lang/String;

.field private static final TAG_SCREENSHOTS:Ljava/lang/String;

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field private static final TAG_THUMBNAILS:Ljava/lang/String;

.field private static final TAG_VISIBILITY:Ljava/lang/String;

.field public static mPerfFirstDraw:Landroid/util/BoostFramework;


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field displayStartTime:J

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field private icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isColdStart:Z

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field launching:Z

.field private logo:I

.field mActivityType:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mDeferHidingClient:Z

.field mDisableDummyVisible:Z

.field private mHorizontalSizeConfigurations:[I

.field mIsDummyVisible:Z

.field mIsUpdateThumbnailByGesture:Z

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field private mLastReportedMultiWindowMode:Z

.field private mLastReportedPictureInPictureMode:Z

.field mLaunchTaskBehind:Z

.field private mPerf:Landroid/util/BoostFramework;

.field mRotationAnimationHint:I

.field private mShowWhenLocked:Z

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowState:I

.field mTaskOverlay:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTurnScreenOn:Z

.field mUpdateTaskThumbnailWhenHidden:Z

.field private mVerticalSizeConfigurations:[I

.field mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field perfActivityBoostHandler:I

.field persistentState:Landroid/os/PersistableBundle;

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realComponentName:Ljava/lang/String;

.field private realTheme:I

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field private startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/ActivityStack$ActivityState;"
        }
    .end annotation
.end field

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private windowFlags:I


# direct methods
.method private static synthetic -getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/am/ActivityRecord;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/ActivityRecord;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/am/ActivityStack$ActivityState;->values()[Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_74

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_72

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_70

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_6e

    :goto_33
    :try_start_33
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_6c

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_6a

    :goto_45
    :try_start_45
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_68

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_66

    :goto_58
    :try_start_58
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_64

    :goto_61
    sput-object v0, Lcom/android/server/am/ActivityRecord;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :catch_64
    move-exception v1

    goto :goto_61

    :catch_66
    move-exception v1

    goto :goto_58

    :catch_68
    move-exception v1

    goto :goto_4e

    :catch_6a
    move-exception v1

    goto :goto_45

    :catch_6c
    move-exception v1

    goto :goto_3c

    :catch_6e
    move-exception v1

    goto :goto_33

    :catch_70
    move-exception v1

    goto :goto_29

    :catch_72
    move-exception v1

    goto :goto_20

    :catch_74
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_SAVED_STATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SCREENSHOTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_SCREENSHOTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_STATES:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_SWITCH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_THUMBNAILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_THUMBNAILS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->TAG_VISIBILITY:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 31

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Lcom/android/server/am/ActivityRecord$Token;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    new-instance v2, Landroid/util/MergedConfiguration;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    if-eqz p16, :cond_ec

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v10

    if-ltz v10, :cond_dd

    iput v10, p0, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    :cond_dd
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v12

    if-eqz v12, :cond_ec

    new-instance v2, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v2, v12}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_ec
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_114

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_289

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v2, :cond_114

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_289

    :cond_114
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :goto_11a
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_29a

    const/4 v2, 0x1

    :goto_129
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_151

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v2, :cond_151

    move-object/from16 v0, p8

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    :cond_151
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->logo:I

    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v2, :cond_17a

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_29d

    const v2, 0x1030005

    :goto_178
    iput v2, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    :cond_17a
    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_189

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    :cond_189
    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2a2

    if-eqz p2, :cond_2a2

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1a9

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_2a2

    :cond_1a9
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1ad
    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1bc

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1bc
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v9

    if-eqz v9, :cond_2b0

    iget-object v2, v9, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_2aa

    iget-object v2, v9, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_2ad

    iget-object v2, v9, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    :goto_1f8
    if-eqz v9, :cond_2b3

    iget-object v2, v9, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b3

    xor-int/lit8 v2, v11, 0x1

    :goto_208
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_2b6

    iget-object v2, v9, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    :goto_215
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move-object v2, p0

    move/from16 v3, p13

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2b9

    const/4 v2, 0x1

    :goto_22e
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v2, :cond_2bc

    const/4 v2, 0x0

    :goto_237
    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c6

    const/4 v2, 0x1

    :goto_243
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    move-object/from16 v0, p8

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c9

    const/4 v2, 0x1

    :goto_24f
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_25c

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    :cond_25c
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2cb

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_2cb

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    if-eqz p16, :cond_288

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setRecentsItemCoordinates(IIII)V

    :cond_288
    :goto_288
    return-void

    :cond_289
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p8

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_11a

    :cond_29a
    const/4 v2, 0x0

    goto/16 :goto_129

    :cond_29d
    const v2, 0x103006b

    goto/16 :goto_178

    :cond_2a2
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_1ad

    :cond_2aa
    const/4 v11, 0x1

    goto/16 :goto_1f8

    :cond_2ad
    const/4 v11, 0x0

    goto/16 :goto_1f8

    :cond_2b0
    const/4 v11, 0x0

    goto/16 :goto_1f8

    :cond_2b3
    const/4 v2, 0x0

    goto/16 :goto_208

    :cond_2b6
    const/4 v2, 0x0

    goto/16 :goto_215

    :cond_2b9
    const/4 v2, 0x0

    goto/16 :goto_22e

    :cond_2bc
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_237

    :cond_2c6
    const/4 v2, 0x0

    goto/16 :goto_243

    :cond_2c9
    const/4 v2, 0x0

    goto :goto_24f

    :cond_2cb
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    goto :goto_288
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    :cond_c
    return-void
.end method

.method private static activityTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "APPLICATION_ACTIVITY_TYPE"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "HOME_ACTIVITY_TYPE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "RECENTS_ACTIVITY_TYPE"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "ASSISTANT_ACTIVITY_TYPE"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private allowTaskSnapshot()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    return v4

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_f
    if-ltz v0, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_24

    invoke-static {v1}, Lcom/android/server/am/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_24

    return v3

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_27
    return v4
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v1}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1b
    return v2
.end method

.method private canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq p1, v1, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    :cond_11
    return v0
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v5, 0x43

    invoke-interface {v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_17

    move-result v2

    if-nez v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    :catch_17
    move-exception v0

    return v1
.end method

.method private computeBounds(Landroid/graphics/Rect;)V
    .registers 14

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v9, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_14

    if-nez v8, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v9, v9, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_14

    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_14

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v9, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v5, v2

    move v4, v1

    if-ge v2, v1, :cond_73

    int-to-float v9, v2

    mul-float/2addr v9, v6

    add-float/2addr v9, v10

    float-to-int v4, v9

    :goto_53
    if-gt v2, v5, :cond_78

    if-gt v1, v4, :cond_78

    invoke-virtual {p1, v11, v11, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5a
    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7c

    iget-object v9, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v3, v9, v10

    :goto_6f
    invoke-virtual {p1, v3, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    :cond_73
    int-to-float v9, v1

    mul-float/2addr v9, v6

    add-float/2addr v9, v10

    float-to-int v5, v9

    goto :goto_53

    :cond_78
    invoke-virtual {p1, v11, v11, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5a

    :cond_7c
    const/4 v3, 0x0

    goto :goto_6f
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private static crossesSizeThreshold([III)Z
    .registers 7

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    :goto_7
    if-ltz v0, :cond_18

    aget v1, p0, v0

    if-ge p1, v1, :cond_11

    if-lt p2, v1, :cond_11

    :cond_f
    const/4 v2, 0x1

    return v2

    :cond_11
    if-lt p1, v1, :cond_15

    if-lt p2, v1, :cond_f

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_18
    return v3
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord$Token;->-wrap0(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    return-object v2

    :catch_9
    move-exception v1

    sget-object v2, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad activity token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_22

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v5

    if-nez v5, :cond_33

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    move-result v1

    :goto_1e
    if-nez v1, :cond_22

    and-int/lit16 v0, v0, -0x401

    :cond_22
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_32

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result v5

    if-nez v5, :cond_32

    and-int/lit16 v0, v0, -0x801

    :cond_32
    return v0

    :cond_33
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 7

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_8

    return v4

    :cond_8
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1a

    if-eqz p1, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v3

    if-le v0, v3, :cond_1b

    :cond_1a
    return v4

    :cond_1b
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    return v3
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_1d

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1a
    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    return-object p0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    goto :goto_2e

    :cond_31
    move v0, v1

    goto :goto_2e
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    goto :goto_2e

    :cond_31
    move v0, v1

    goto :goto_2e
.end method

.method private isProcessRunning()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_17

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    :cond_17
    if-eqz v0, :cond_1e

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, -0xd81

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/16 v2, 0x200

    if-ne p1, v2, :cond_14

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eq v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private reportLaunchTimeLocked(J)V
    .registers 18

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-nez v9, :cond_7

    return-void

    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    sub-long v10, p1, v0

    iget-wide v0, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12e

    iget-wide v0, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    sub-long v12, p1, v0

    :goto_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_67

    iget-object v1, v9, Lcom/android/server/am/ActivityStack;->mLaunchFromPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchStartTime()J

    move-result-wide v2

    iget-boolean v6, p0, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    move-object v0, p0

    move-wide/from16 v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->addActivityLaunchTime(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;JJZ)V

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_5d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->reportActivityLaunchTime([Ljava/lang/Object;)V

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x40

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x7539

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v0, "Displayed "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    cmp-long v0, v10, v12

    if-eqz v0, :cond_e1

    const-string/jumbo v0, " (total "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e1
    sget-object v0, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    move-object v3, p0

    move-wide v4, v10

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-nez v0, :cond_fe

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    :cond_fe
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-eqz v0, :cond_10f

    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    long-to-int v2, v10

    const/16 v3, 0x1042

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_10f
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_12d

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v0, :cond_12d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v0, v1}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    :cond_12d
    return-void

    :cond_12e
    move-wide v12, v10

    goto/16 :goto_17

    :cond_131
    const/4 v0, 0x0

    goto/16 :goto_5d
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v36, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const-wide/16 v32, -0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v35

    new-instance v37, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v37 .. v37}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    :goto_1a
    if-ltz v29, :cond_d9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v4, "id"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    :goto_3b
    add-int/lit8 v29, v29, -0x1

    goto :goto_1a

    :cond_3e
    const-string/jumbo v4, "launched_from_uid"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3b

    :cond_4e
    const-string/jumbo v4, "launched_from_package"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    move-object/from16 v15, v30

    goto :goto_3b

    :cond_5c
    const-string/jumbo v4, "resolved_type"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    move-object/from16 v6, v30

    goto :goto_3b

    :cond_6a
    const-string/jumbo v4, "component_specified"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    goto :goto_3b

    :cond_7a
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_3b

    :cond_8a
    const-string/jumbo v4, "task_description_"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_9f
    sget-object v4, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown ActivityRecord attribute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_bb
    sget-object v4, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity: unexpected name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_d9
    :goto_d9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_118

    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_ef

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v35

    if-lt v4, v0, :cond_118

    :cond_ef
    const/4 v4, 0x2

    move/from16 v0, v31

    if-ne v0, v4, :cond_d9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v4, "intent"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_d9

    :cond_108
    const-string/jumbo v4, "persistable_bundle"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v36

    goto :goto_d9

    :cond_118
    if-nez v5, :cond_134

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity error intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_134
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    if-nez v18, :cond_167

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity resolver error. Intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resolvedType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_167
    new-instance v10, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v25, p1

    invoke-direct/range {v10 .. v27}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, v36

    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v0, v37

    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-wide/from16 v0, v32

    iput-wide v0, v10, Lcom/android/server/am/ActivityRecord;->createTime:J

    return-object v10
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v1, v2, p1, v3}, Landroid/app/IApplicationThread;->scheduleActivityMovedToDisplay(Landroid/os/IBinder;ILandroid/content/res/Configuration;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method private scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IApplicationThread;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IApplicationThread;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-direct {p0, p2, p5}, Lcom/android/server/am/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_a
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-ne v0, v3, :cond_2b

    :cond_27
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_2b

    :cond_3f
    if-eqz p4, :cond_54

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_2b

    :cond_54
    iput v2, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_2b
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1b

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1b

    or-int/lit16 v0, v0, 0x200

    :cond_1b
    not-int v3, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    :cond_20
    return v2
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "STARTING_WINDOW_NOT_SHOWN"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "STARTING_WINDOW_SHOWN"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "STARTING_WINDOW_REMOVED"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private supportsResizeableMultiWindow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private updateOverrideConfiguration()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->computeBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method final activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 11

    const/16 v6, 0x68

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_2e

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void

    :cond_2e
    if-eqz p2, :cond_39

    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_39
    if-eqz p1, :cond_44

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    iput v5, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-virtual {p0, v4, p3}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_44
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v1, :cond_5f

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppStopped()V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v1, :cond_70

    const-string/jumbo v1, "stop-config"

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_5f

    :cond_70
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5f
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 12

    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method applyOptionsLocked()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v15

    sparse-switch v15, :sswitch_data_30e

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_3a
    return-void

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v7

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    goto :goto_35

    :sswitch_65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_35

    :sswitch_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_35

    :sswitch_14b
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1bc

    const/4 v6, 0x1

    :goto_14f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_35

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_35

    :cond_1bc
    const/4 v6, 0x0

    goto :goto_14f

    :sswitch_1be
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v17

    if-eqz v17, :cond_1ec

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    const/16 v1, 0x8

    if-ne v15, v1, :cond_1ea

    const/4 v1, 0x1

    :goto_1e3
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_35

    :cond_1ea
    const/4 v1, 0x0

    goto :goto_1e3

    :cond_1ec
    const/16 v1, 0x9

    if-ne v15, v1, :cond_210

    if-eqz v16, :cond_210

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_35

    :cond_210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v13

    const/16 v1, 0x8

    if-ne v15, v1, :cond_298

    const/4 v14, 0x1

    :goto_24b
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_35

    :cond_298
    const/4 v14, 0x0

    goto :goto_24b

    :sswitch_29a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionLaunchFromHome(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_35

    nop

    :sswitch_data_30e
    .sparse-switch
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_d8
        0x3 -> :sswitch_14b
        0x4 -> :sswitch_14b
        0x8 -> :sswitch_1be
        0x9 -> :sswitch_1be
        0xb -> :sswitch_65
        0x64 -> :sswitch_29a
        0x65 -> :sswitch_3b
    .end sparse-switch
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    :goto_a
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v2

    goto :goto_a
.end method

.method canShowWhenLocked()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsShowWhenLockedWindow(Landroid/os/IBinder;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method canTurnScreenOn()Z
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0, v2, v2}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz p1, :cond_14

    move v0, v1

    :goto_e
    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    return v1

    :cond_14
    const/4 v0, -0x1

    goto :goto_e
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v5

    if-nez v5, :cond_8

    return v4

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v5

    if-nez v5, :cond_f

    return v4

    :cond_f
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v5

    if-eqz v5, :cond_18

    return v4

    :cond_18
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isKeyguardLocked()Z

    move-result v2

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLockTaskModeState()I

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v1, 0x1

    :goto_27
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_3c

    const/4 v0, 0x1

    :goto_31
    if-nez v2, :cond_3e

    xor-int/lit8 v3, v1, 0x1

    :goto_35
    if-eqz p2, :cond_40

    if-eqz v0, :cond_40

    return v4

    :cond_3a
    const/4 v1, 0x0

    goto :goto_27

    :cond_3c
    const/4 v0, 0x0

    goto :goto_31

    :cond_3e
    const/4 v3, 0x0

    goto :goto_35

    :cond_40
    invoke-static {}, Lcom/android/server/am/ActivityRecord;->-getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6e

    :cond_4f
    return v4

    :pswitch_50
    if-nez v1, :cond_58

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v4, :cond_59

    xor-int/lit8 v4, p2, 0x1

    :cond_58
    :goto_58
    return v4

    :cond_59
    const/4 v4, 0x1

    goto :goto_58

    :pswitch_5b
    if-eqz v3, :cond_63

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_63

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_63
    return v4

    :pswitch_64
    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v5, :cond_4f

    if-eqz v3, :cond_6c

    xor-int/lit8 v4, v0, 0x1

    :cond_6c
    return v4

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5b
        :pswitch_50
        :pswitch_64
    .end packed-switch
.end method

.method clearOptionsLocked()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_c
    return-void
.end method

.method clearVoiceSessionLocked()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method completeResumeLocked()V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    if-nez v2, :cond_e

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v5, v3, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_e
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v3, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    :cond_34
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_3d
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :goto_65
    iput-object v6, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "turnScreenOnFlag"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    :goto_75
    return-void

    :cond_76
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_65

    :cond_7b
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_75
.end method

.method continueLaunchTickingLocked()Z
    .registers 9

    const/16 v7, 0x67

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    return v6

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_13

    return v6

    :cond_13
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    return v2
.end method

.method createWindowContainer()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already created for r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    new-instance v2, Lcom/android/server/wm/AppWindowContainerController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_d7

    const/4 v9, 0x1

    :goto_63
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_d9

    const/4 v11, 0x1

    :goto_72
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    mul-long v16, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const v6, 0x7fffffff

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v19}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    new-instance v4, Lcom/android/server/am/ActivityRecord$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityRecord$1;-><init>(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppWindowContainerController;->registerGestureCallback(Lcom/android/server/wm/AppWindowContainerController$GestureCallback;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, v2, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_db

    const/4 v2, 0x1

    :goto_d2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    return-void

    :cond_d7
    const/4 v9, 0x0

    goto :goto_63

    :cond_d9
    const/4 v11, 0x0

    goto :goto_72

    :cond_db
    const/4 v2, 0x0

    goto :goto_d2
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 19

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    new-instance v12, Lcom/android/internal/content/ReferrerIntent;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v1}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v2

    if-eqz v2, :cond_68

    if-eqz v13, :cond_61

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v11

    :goto_2b
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_37

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_6a

    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5b

    :try_start_41
    new-instance v8, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_6d

    const/4 v2, 0x1

    :goto_57
    invoke-interface {v3, v8, v4, v2}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_5a} :catch_8a
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_5a} :catch_6f

    const/4 v14, 0x0

    :cond_5b
    :goto_5b
    if-eqz v14, :cond_60

    invoke-direct {p0, v12}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    :cond_60
    return-void

    :cond_61
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v11

    goto :goto_2b

    :cond_68
    const/4 v11, 0x0

    goto :goto_2b

    :cond_6a
    if-eqz v11, :cond_5b

    goto :goto_37

    :cond_6d
    const/4 v2, 0x0

    goto :goto_57

    :catch_6f
    move-exception v10

    sget-object v2, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown sending new intent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_8a
    move-exception v9

    sget-object v2, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown sending new intent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchedFromUid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, " launchedFromPackage="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frontOfTask="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " task="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskAffinity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "realActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_150

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_118

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_118
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v11, :cond_150

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "splitDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_150
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "stateNotNeeded="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " componentSpecified="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v11, :cond_1a0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "rootVoiceInteraction="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1a0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "compat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v11, " labelRes=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " icon=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " theme=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mLastReportedConfigurations:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "CurrentConfiguration="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    sget-object v12, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v11

    if-nez v11, :cond_270

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "OverrideConfiguration="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_29d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mBounds="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_2a9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v11, :cond_2df

    :cond_2a9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v11, " resultWho="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    :cond_2df
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v11, :cond_3ba

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2f9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_421

    :cond_2f9
    :goto_2f9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " iconFilename="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " label=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " primaryColor="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  backgroundColor="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  statusBarColor="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  navigationBarColor="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3a3
    if-nez v3, :cond_3ba

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_3ba

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription contains Bitmap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3ba
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v11, :cond_3d4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "results="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3d4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v11, :cond_450

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_450

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "Pending Results:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3f7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_450

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_42d

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    :goto_40b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v5, :cond_42f

    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f7

    :cond_421
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    if-eqz v11, :cond_3a3

    goto/16 :goto_2f9

    :cond_42d
    const/4 v5, 0x0

    goto :goto_40b

    :cond_42f
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3f7

    :cond_450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v11, :cond_4a6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4a6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "Pending New Intents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_46c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_4a6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_498

    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_495
    add-int/lit8 v2, v2, 0x1

    goto :goto_46c

    :cond_498
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_495

    :cond_4a6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_4c0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "pendingOptions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4c0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v11, :cond_4d2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_4d2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v11, :cond_4e3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_4e3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchFailed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " launchCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, " lastLaunchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_8b8

    const-string/jumbo v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_522
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "haveState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " icicle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v11, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " delayedResume="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " finishing="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "keysPaused="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " inHistory="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " visible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " sleeping="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " idle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " mStartingWindowState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "fullscreen="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " noDisplay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " immersive="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " launchMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frozenBeforeDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " forceNewConfig="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_69c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "requestedVrComponent="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_69c
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6b0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_6ea

    :cond_6b0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "displayStartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_8c3

    const-string/jumbo v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6cd
    const-string/jumbo v11, " startTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_8ce

    const-string/jumbo v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6e7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_6ea
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_708

    if-nez v8, :cond_708

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_746

    :cond_708
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "waitingVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " nowVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " lastVisibleTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_8d9

    const-string/jumbo v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_743
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_746
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v11, :cond_76f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mDeferHidingClient="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_76f
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v11, :cond_77b

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v11, :cond_7a4

    :cond_77b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "deferRelaunchUntilPaused="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v11, " configChangeFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7a4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v11, :cond_7be

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "connections="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7be
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_8a3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "resizeMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v12}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mLastReportedMultiWindowMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " mLastReportedPictureInPictureMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v11

    if-eqz v11, :cond_873

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "supportsPictureInPicture="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_873
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_8a3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "maxAspectRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8a3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "realComponentName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8b8
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_522

    :cond_8c3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_6cd

    :cond_8ce
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_6e7

    :cond_8d9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_743
.end method

.method ensureActivityConfigurationLocked(IZ)Z
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_c

    return v7

    :cond_c
    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_14

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    return v7

    :cond_14
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_20

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_21

    :cond_20
    return v7

    :cond_21
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_38

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_38

    return v7

    :cond_38
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v5, v2, :cond_6a

    const/4 v1, 0x1

    :goto_41
    if-eqz v1, :cond_45

    iput v2, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    :cond_45
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_6c

    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6c

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_6c

    return v7

    :cond_6a
    const/4 v1, 0x0

    goto :goto_41

    :cond_6c
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    if-nez v0, :cond_91

    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_91

    if-eqz v1, :cond_8d

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    :goto_8c
    return v7

    :cond_8d
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_8c

    :cond_91
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_9b

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_a1

    :cond_9b
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    return v7

    :cond_a1
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v5}, Lcom/android/server/am/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_ad

    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_e8

    :cond_ad
    iget v5, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    iput-boolean v8, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v5

    and-int/2addr p2, v5

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c8

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_cf

    :cond_c8
    const-string/jumbo v5, "config"

    invoke-virtual {v4, p0, v7, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    :goto_ce
    return v8

    :cond_cf
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_da

    iput-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean p2, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    return v7

    :cond_da
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_e4

    invoke-virtual {p0, v7, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_ce

    :cond_e4
    invoke-virtual {p0, v8, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_ce

    :cond_e8
    if-eqz v1, :cond_f1

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    :goto_ed
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    return v7

    :cond_f1
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_ed
.end method

.method finishLaunchTickingLocked()V
    .registers 5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    return-void
.end method

.method getBounds()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getDisplayId()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    return v1
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method protected getParent()Lcom/android/server/am/ConfigurationContainer;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method getRealTheme()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    return v0
.end method

.method getRequestedOrientation()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    return v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method getStackId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method getTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getTurnScreenOnFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    return v0
.end method

.method getUid()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    return-object v0
.end method

.method handleAlreadyVisible()Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1f

    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :catch_1f
    move-exception v0

    goto :goto_17
.end method

.method hasDismissKeyguardWindows()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsDismissKeyguardWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method isAlwaysFocusable()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method isApplicationActivity()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method isAssistantActivity()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    :goto_c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_1c

    return v3

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_c

    :cond_1c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    return v3

    :cond_28
    return v4
.end method

.method final isDestroyable()Z
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_a

    :cond_9
    return v3

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p0, v1, :cond_21

    :cond_20
    return v3

    :cond_21
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_36

    return v3

    :cond_36
    const/4 v1, 0x1

    return v1
.end method

.method isFocusable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method isFreeform()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method isHomeActivity()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInHistory()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public isInterestingToUserLocked()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_f

    const/4 v0, 0x0

    goto :goto_f
.end method

.method isNoHistory()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method isNonResizableOrForcedResizable()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f

    :cond_12
    move v0, v1

    goto :goto_f
.end method

.method isPersistable()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    :cond_1e
    :goto_1e
    move v1, v0

    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method isRecentsActivity()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isResizeable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method isResolverActivity()Z
    .registers 3

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTopRunningActivity()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 15

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_2c

    if-ne v0, p2, :cond_27

    :cond_17
    const/4 v6, 0x1

    :goto_18
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v6, :cond_32

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_27
    const/4 v0, -0x1

    if-eq p2, v0, :cond_17

    const/4 v6, 0x0

    goto :goto_18

    :catchall_2c
    move-exception v0

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v4, p1}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gez v0, :cond_3f

    const/4 v4, 0x1

    :cond_3f
    return v4
.end method

.method makeFinishingLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_1a
    return-void
.end method

.method makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_8

    if-ne p0, p1, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    :try_start_d
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_43

    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    return-void

    :catch_43
    move-exception v0

    sget-object v2, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown making visibile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    if-eqz p1, :cond_d

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method notifyAppResumed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppResumed(Z)V

    return-void
.end method

.method notifyUnknownVisibilityLaunched()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->notifyUnknownVisibilityLaunched()V

    :cond_9
    return-void
.end method

.method public okToShowLocked()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v0

    :cond_32
    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x1

    goto :goto_32
.end method

.method onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/am/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppWindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStartingWindowDrawn(J)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyStartingWindowDrawn(IJ)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onWindowsDrawn(J)V
    .registers 10

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyWindowsDrawn(IJ)V

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_36

    :cond_31
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onWindowsGone()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->launching:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onWindowsVisible()V
    .registers 9

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_52

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->launching:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->isStoppingNoHistoryActivity()Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_27
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v2, :cond_41

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_41
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_4d
    :goto_4d
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_89

    :cond_52
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v3, "Timeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeline: Activity_windows_visible id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    :try_start_80
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_89

    goto :goto_4d

    :catchall_89
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method pauseKeyDispatchingLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->pauseKeyDispatching()V

    :cond_c
    return-void
.end method

.method relaunchActivityLocked(ZZ)V
    .registers 16

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSuppressResizeConfigChanges:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    iput v10, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    return-void

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_16

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_16
    if-eqz p1, :cond_8e

    const/16 v0, 0x7543

    :goto_1a
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v12

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0, v10}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    const/4 v0, 0x0

    :try_start_4e
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    xor-int/lit8 v5, p1, 0x1

    new-instance v6, Landroid/content/res/Configuration;

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v8, p2

    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_77} :catch_ac

    :goto_77
    if-eqz p1, :cond_93

    iput-object v11, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v11, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_87
    :goto_87
    iput v10, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iput-boolean v10, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v10, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    return-void

    :cond_8e
    const/16 v0, 0x7544

    goto :goto_1a

    :cond_91
    move v1, v10

    goto :goto_25

    :cond_93
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v10}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_87

    :catch_ac
    move-exception v9

    goto :goto_77
.end method

.method removeOrphanedStartingWindow(Z)V
    .registers 4

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    if-eqz p1, :cond_f

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_f
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_c
    if-ltz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1d

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_2d

    if-nez p2, :cond_1a

    :cond_23
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    :cond_2d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_c
    return-void
.end method

.method removeWindowContainer()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowContainerController;->removeContainer(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    return-void
.end method

.method reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, p1, :cond_2d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already the parent of r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    if-eqz v0, :cond_90

    if-eqz p1, :cond_90

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_90

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is in a different stack ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") than the parent of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_90
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/AppWindowContainerController;->reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public reportFullyDrawnLocked(Z)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a5

    if-eqz v3, :cond_a5

    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    sub-long v4, v0, v8

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b1

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    sub-long v6, v0, v8

    :goto_2d
    const-string/jumbo v8, "drawing"

    const-wide/16 v10, 0x40

    const/4 v9, 0x0

    invoke-static {v10, v11, v8, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/16 v9, 0x755a

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v8, "Fully drawn "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    cmp-long v8, v4, v6

    if-eqz v8, :cond_94

    const-string/jumbo v8, " (total "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_94
    sget-object v8, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    :cond_a5
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v8, p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)V

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    return-void

    :cond_b1
    move-wide v6, v4

    goto/16 :goto_2d
.end method

.method resumeKeyDispatchingLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->resumeKeyDispatching()V

    :cond_c
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "launched_from_package"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_31

    const-string/jumbo v0, "resolved_type"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_31
    const-string/jumbo v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_52
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7e

    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7e
    return-void
.end method

.method final screenshotActivityLocked()Landroid/graphics/Bitmap;
    .registers 9

    const/4 v7, 0x0

    sget-boolean v4, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    if-eqz v4, :cond_6

    return-object v7

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_b

    return-object v7

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-eqz v4, :cond_16

    return-object v7

    :cond_16
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget v3, v4, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    if-gtz v3, :cond_45

    sget-object v4, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\tInvalid thumbnail dimensions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_45
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_51

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v4, :cond_51

    return-object v7

    :cond_51
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget v1, v4, Lcom/android/server/am/ActivityManagerService;->mFullscreenThumbnailScale:F

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/android/server/wm/AppWindowContainerController;->screenshotApplications(IIIF)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method setDeferHidingClient(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_15
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setDisablePreviewScreenshots(Z)V

    return-void
.end method

.method setDummyVisible(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/AppWindowContainerController;->setDummyVisible(ZZZ)V

    return-void
.end method

.method setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method setRequestedOrientation(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    invoke-virtual {v3, p1, v2, v1, v4}, Lcom/android/server/wm/AppWindowContainerController;->setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p0, v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_29
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method setShowWhenLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    iput-object p3, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    return-void
.end method

.method setSleeping(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    return-void
.end method

.method setSleeping(ZZ)V
    .registers 7

    if-nez p2, :cond_7

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v1, p1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_31

    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    sget-object v1, Lcom/android/server/am/ActivityRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method setTask(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p1, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez p2, :cond_1c

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    :cond_19
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    :cond_1c
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez p2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->onParentChanged()V

    :cond_23
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 9

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-wide v4, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_31
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    :cond_f
    return-void
.end method

.method setTurnScreenOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    return-void
.end method

.method setVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowContainerController;->setVisibility(ZZ)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;Z)V

    return-void
.end method

.method setVisible(Z)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsUpdateThumbnailByGesture:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->screenshotActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_24
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mIsUpdateThumbnailByGesture:Z

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    :cond_28
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    return-void

    :cond_33
    move v0, v1

    goto :goto_e
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method shouldBeVisibleIgnoringKeyguard(Z)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    if-eqz p1, :cond_43

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    :goto_c
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsLeanbackOnly:Z

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    :cond_42
    return v0

    :cond_43
    const/4 v0, 0x1

    goto :goto_c

    :cond_45
    const/4 v0, 0x1

    goto :goto_2d
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V

    return-void
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v1, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackInjector;->getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v17

    if-nez v17, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackInjector;->getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I

    move-result v18

    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    if-nez v17, :cond_a3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_4e
    if-nez v17, :cond_a9

    if-nez v18, :cond_a6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    :goto_56
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz p1, :cond_ab

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_68
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isProcessRunning()Z

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->allowTaskSnapshot()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v11

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_ad

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v11

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v12

    if-gt v11, v12, :cond_ad

    const/4 v15, 0x1

    :goto_91
    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v16, p4

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/wm/AppWindowContainerController;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v19

    if-eqz v19, :cond_a2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    :cond_a2
    return-void

    :cond_a3
    move-object/from16 v5, v17

    goto :goto_4e

    :cond_a6
    move/from16 v6, v18

    goto :goto_56

    :cond_a9
    const/4 v6, 0x0

    goto :goto_56

    :cond_ab
    const/4 v10, 0x0

    goto :goto_68

    :cond_ad
    const/4 v15, 0x0

    goto :goto_91
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowContainerController;->startFreezingScreen(I)V

    :cond_b
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    :cond_16
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 3

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_e

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->stopFreezingScreen(Z)V

    :cond_e
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/server/am/ActivityStackInjector;->supportsFreeform()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method supportsPictureInPicture()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method supportsSplitScreen()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method takeFromHistory()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_17
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_2f

    const/4 v1, -0x1

    :goto_1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_34

    const-string/jumbo v1, " f}"

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_1b

    :cond_34
    const-string/jumbo v1, "}"

    goto :goto_26

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateMultiWindowMode()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v0, v1, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2a

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    :cond_2a
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_b
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_d
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_e

    :cond_d
    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3d

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    :goto_24
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v2, :cond_2a

    if-eqz p2, :cond_3a

    :cond_2a
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/am/TaskRecord;->computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    :cond_3a
    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_24

    :cond_3d
    const/4 v0, 0x0

    goto :goto_24
.end method

.method updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 7

    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object p2, v1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method
