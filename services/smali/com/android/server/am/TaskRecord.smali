.class final Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/am/ConfigurationContainer;
.source "TaskRecord.java"

# interfaces
.implements Lcom/android/server/wm/TaskWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_IS_AVAILABLE:Ljava/lang/String; = "is_available"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field public static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field public static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field public static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mBounds:Landroid/graphics/Rect;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field mFullscreen:Z

.field mLastLandBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPortraitBounds:Landroid/graphics/Rect;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field private mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field private mLockTaskMode:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeMode:I

.field private mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStack:Lcom/android/server/am/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field private mTaskToReturnTo:I

.field mTemporarilyUnresizable:Z

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field private mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZZIIZ)V
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZZIIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-static/range {p13 .. p13}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    move/from16 v0, p39

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v0, p30

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move/from16 v0, p32

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    move/from16 v0, p37

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    move/from16 v0, p38

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v2

    if-nez v2, :cond_12b

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_12b

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12b

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    :cond_12b
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iput v5, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    iput v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;I)V
    .registers 14

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iput v5, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .registers 9

    const/4 v6, -0x1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1f

    if-ne v3, v6, :cond_17

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    :cond_17
    if-ne v2, v6, :cond_1f

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    :cond_1f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_33

    const/4 v1, 0x1

    :goto_26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_35

    const/4 v0, 0x1

    :goto_2d
    if-nez v1, :cond_37

    move v4, v0

    :goto_30
    if-nez v4, :cond_39

    return-void

    :cond_33
    const/4 v1, 0x0

    goto :goto_26

    :cond_35
    const/4 v0, 0x0

    goto :goto_2d

    :cond_37
    const/4 v4, 0x1

    goto :goto_30

    :cond_39
    if-eqz v1, :cond_4c

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_6d

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_6d

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->left:I

    :cond_4c
    :goto_4c
    if-eqz v0, :cond_5f

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_73

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_73

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    :cond_5f
    :goto_5f
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_6c

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_6c
    return-void

    :cond_6d
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4c

    :cond_73
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5f
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    :cond_b
    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_32

    const/4 v0, 0x1

    :goto_17
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_34

    move v3, v1

    :goto_2f
    if-ne v0, v3, :cond_36

    :cond_31
    :goto_31
    return v1

    :cond_32
    const/4 v0, 0x0

    goto :goto_17

    :cond_34
    move v3, v2

    goto :goto_2f

    :cond_36
    move v1, v2

    goto :goto_31

    :cond_38
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_41

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_47

    :cond_41
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_48

    move v2, v0

    :cond_47
    :goto_47
    return v2

    :cond_48
    move v2, v1

    goto :goto_47
.end method

.method private closeRecentsChain()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method private isResizeable(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p1, :cond_21

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_21

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 63
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/16 v40, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v54, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v41, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const-wide/16 v22, -0x1

    const-wide/16 v24, -0x1

    const-wide/16 v26, 0x0

    const/16 v28, 0x1

    const/4 v7, -0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v56

    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    new-instance v30, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v30 .. v30}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    const/16 v31, -0x1

    const/16 v34, 0x0

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/16 v35, -0x1

    const-string/jumbo v36, ""

    const/16 v37, 0x4

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v50, 0x0

    const/16 v42, -0x1

    const/16 v43, -0x1

    const/16 v57, 0x0

    const/16 v44, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v48, v6, -0x1

    :goto_57
    if-ltz v48, :cond_2e7

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v6, -0x1

    if-ne v7, v6, :cond_7b

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_7b
    :goto_7b
    add-int/lit8 v48, v48, -0x1

    goto :goto_57

    :cond_7e
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-static/range {v49 .. v49}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_7b

    :cond_8e
    const-string/jumbo v6, "real_activity_suspended"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    goto :goto_7b

    :cond_a2
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-static/range {v49 .. v49}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_7b

    :cond_b2
    const-string/jumbo v6, "affinity"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    move-object/from16 v10, v49

    goto :goto_7b

    :cond_c0
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    move-object/from16 v11, v49

    const/16 v54, 0x1

    goto :goto_7b

    :cond_d0
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_7b

    :cond_e0
    const-string/jumbo v6, "auto_remove_recents"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    goto :goto_7b

    :cond_f0
    const-string/jumbo v6, "asked_compat_mode"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    goto/16 :goto_7b

    :cond_101
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_7b

    :cond_112
    const-string/jumbo v6, "user_setup_complete"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_123

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v41

    goto/16 :goto_7b

    :cond_123
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_134

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_7b

    :cond_134
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_145

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_7b

    :cond_145
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_156

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    goto/16 :goto_7b

    :cond_156
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_167

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    goto/16 :goto_7b

    :cond_167
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    move-object/from16 v20, v49

    goto/16 :goto_7b

    :cond_176
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_187

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    goto/16 :goto_7b

    :cond_187
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_198

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    goto/16 :goto_7b

    :cond_198
    const-string/jumbo v6, "task_thumbnailinfo_"

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ae

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :cond_1ae
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :cond_1c4
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d5

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto/16 :goto_7b

    :cond_1d5
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e6

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto/16 :goto_7b

    :cond_1e6
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f7

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_7b

    :cond_1f7
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_208

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_7b

    :cond_208
    const-string/jumbo v6, "calling_uid"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_219

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_7b

    :cond_219
    const-string/jumbo v6, "calling_package"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_228

    move-object/from16 v36, v49

    goto/16 :goto_7b

    :cond_228
    const-string/jumbo v6, "resize_mode"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_239

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    goto/16 :goto_7b

    :cond_239
    const-string/jumbo v6, "supports_picture_in_picture"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24a

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v38

    goto/16 :goto_7b

    :cond_24a
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25b

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    goto/16 :goto_7b

    :cond_25b
    const-string/jumbo v6, "non_fullscreen_bounds"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26c

    invoke-static/range {v49 .. v49}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v50

    goto/16 :goto_7b

    :cond_26c
    const-string/jumbo v6, "min_width"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27d

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto/16 :goto_7b

    :cond_27d
    const-string/jumbo v6, "min_height"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28e

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    goto/16 :goto_7b

    :cond_28e
    const-string/jumbo v6, "persist_task_version"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29f

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    goto/16 :goto_7b

    :cond_29f
    const-string/jumbo v6, "is_available"

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b0

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v44

    goto/16 :goto_7b

    :cond_2b0
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    :cond_2d1
    const-string/jumbo v6, "activity"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_326

    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2e7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e7
    :goto_2e7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v53

    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_349

    const/4 v6, 0x3

    move/from16 v0, v53

    if-ne v0, v6, :cond_2fd

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v56

    if-lt v6, v0, :cond_349

    :cond_2fd
    const/4 v6, 0x2

    move/from16 v0, v53

    if-ne v0, v6, :cond_2e7

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v55

    const-string/jumbo v6, "affinity_intent"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_316

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2e7

    :cond_316
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d1

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_2e7

    :cond_326
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "restoreTask: Unexpected name="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2e7

    :cond_349
    if-nez v54, :cond_3e8

    move-object v11, v10

    :cond_34c
    :goto_34c
    if-gtz v19, :cond_3b1

    if-eqz v8, :cond_3f4

    move-object/from16 v51, v8

    :goto_352
    const/16 v19, 0x0

    if-eqz v51, :cond_376

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v58

    :try_start_35a
    invoke-virtual/range {v51 .. v51}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v59, 0x2200

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v46

    if-eqz v46, :cond_376

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_35a .. :try_end_376} :catch_403

    :cond_376
    :goto_376
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "Updating task #"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, " for "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, ": effectiveUid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b1
    const/4 v6, 0x1

    move/from16 v0, v57

    if-ge v0, v6, :cond_3f8

    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_3c2

    const/4 v6, 0x2

    move/from16 v0, v37

    if-ne v0, v6, :cond_3c2

    const/16 v37, 0x1

    :cond_3c2
    :goto_3c2
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v44}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZZIIZ)V

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v45, v6, -0x1

    :goto_3d6
    if-ltz v45, :cond_402

    move-object/from16 v0, v21

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v45, v45, -0x1

    goto :goto_3d6

    :cond_3e8
    const-string/jumbo v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34c

    const/4 v11, 0x0

    goto/16 :goto_34c

    :cond_3f4
    move-object/from16 v51, v9

    goto/16 :goto_352

    :cond_3f8
    const/4 v6, 0x3

    move/from16 v0, v37

    if-ne v0, v6, :cond_3c2

    const/16 v37, 0x2

    const/16 v38, 0x1

    goto :goto_3c2

    :cond_402
    return-object v5

    :catch_403
    move-exception v52

    goto/16 :goto_376
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_ba

    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_b7

    move v4, v5

    :goto_e
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    :cond_10
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :cond_1c
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_c1

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_36

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_42

    :cond_36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_42
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_bf

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_4a
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    :goto_4e
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_f7

    const/4 v1, 0x0

    :goto_53
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_5a

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    :cond_5a
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "user_setup_complete"

    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_ff

    move v4, v5

    :goto_78
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_102

    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    :goto_82
    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v4

    if-nez v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    :cond_a5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_11a

    :goto_b1
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    return-void

    :cond_b7
    move v4, v6

    goto/16 :goto_e

    :cond_ba
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_10

    return-void

    :cond_bf
    move-object v4, v7

    goto :goto_4a

    :cond_c1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e6

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_4e

    :cond_e6
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_4e

    :cond_f7
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto/16 :goto_53

    :cond_ff
    move v4, v6

    goto/16 :goto_78

    :cond_102
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v7, 0x80000

    if-ne v4, v7, :cond_116

    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_112

    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_82

    :cond_112
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_82

    :cond_116
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_82

    :cond_11a
    move v5, v6

    goto :goto_b1
.end method

.method private setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2d

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p3, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p4, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    if-nez p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 4

    const/4 v1, -0x1

    if-eqz p1, :cond_14

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    :goto_13
    return-void

    :cond_14
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_13
.end method

.method static validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received strange task bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_28
    return-object p0
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eq v2, p0, :cond_2e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can not add r= to task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " current parent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2e
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    iget-boolean v4, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_43

    iget v4, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    :cond_43
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b7

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    :goto_70
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_8a

    if-lez v1, :cond_8a

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v4, :cond_8a

    add-int/lit8 p1, p1, -0x1

    :cond_8a
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v6}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_a1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    :cond_af
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    return-void

    :cond_b7
    iget v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v4, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_70
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return-void
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 8

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v2

    const/4 v5, 0x0

    move v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelThumbnailTransition()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelThumbnailTransition()V

    return-void
.end method

.method cancelWindowTransition()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelWindowTransition()V

    return-void
.end method

.method computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .registers 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-eq v4, v5, :cond_34

    move v4, v0

    :goto_25
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_36

    move v5, v0

    :goto_2e
    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_33
    return-object v1

    :cond_34
    move v4, v3

    goto :goto_25

    :cond_36
    move v5, v3

    goto :goto_2e
.end method

.method computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->unset()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v2, v10, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const v3, 0x3bcccccd    # 0.00625f

    mul-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_82

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/StackWindowController;->adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v2, v3, :cond_8b

    const/4 v2, 0x1

    :goto_53
    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-int v11, v2

    const/16 v15, 0x24

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v2, 0x24

    invoke-static {v2, v13, v14}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    :cond_82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Expected stack when calculating override config"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8b
    const/4 v2, 0x2

    goto :goto_53
.end method

.method createWindowContainer(ZZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    new-instance v0, Lcom/android/server/wm/TaskWindowContainerController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    iget-object v12, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v2, p0

    move v10, p1

    move v11, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZZZLandroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V

    return-void
.end method

.method disposeThumbnail()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;->reset()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_70

    :cond_47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_350

    :cond_65
    const-string/jumbo v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_a1

    :cond_78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_eb

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_eb
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_101

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_101
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_117

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_117
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_123

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_123

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-eqz v0, :cond_355

    :cond_123
    :goto_123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_15d
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_16d

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_16d

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_16d

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v3, :cond_19e

    :cond_16d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19e
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_1a8

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v6, :cond_35f

    :cond_1a8
    :goto_1a8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_36d

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1d1
    const-string/jumbo v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_37c

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1ec
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_210

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_210

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_234

    :cond_210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_234
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_25f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_25f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hasBeenVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mResizeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSupportsPictureInPicture="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isResizeable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " supportsSplitScreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " firstActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " lastActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (inactive for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_350
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_70

    :cond_355
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_123

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_15d

    goto/16 :goto_123

    :cond_35f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1a8

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_1a8

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1f2

    goto/16 :goto_1a8

    :cond_36d
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d1

    :cond_37c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1ec
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_a
    if-ltz v0, :cond_24

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1b
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v1

    :cond_24
    const/4 v3, 0x0

    return-object v3
.end method

.method findEffectiveRootIndex()I
    .registers 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    const/4 v0, 0x0

    :goto_a
    if-gt v0, v3, :cond_24

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    move v1, v0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_18

    :cond_24
    return v1
.end method

.method freeLastThumbnail()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_c
    if-ltz v0, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_27

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2a
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_6
.end method

.method protected getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/RecentTasks;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    :cond_1f
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eqz v0, :cond_f

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1a

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    :cond_19
    return-object v1

    :cond_1a
    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_f

    :cond_2b
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    return-object v1

    :cond_36
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->getOrientation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    :goto_43
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    :cond_49
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    goto :goto_43
.end method

.method getLaunchStackId()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isAssistantTask()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x6

    return v0

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLaunchStackId with bounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method protected getParent()Lcom/android/server/am/ConfigurationContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-object v1

    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mIsUpdateThumbnailByGesture:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->screenshotActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    :cond_1d
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    return-object v1
.end method

.method getTaskToReturnTo()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/am/ActivityRecord;
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1c

    if-nez p1, :cond_1f

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1f

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-object v1

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->getBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_a
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWindowContainerBounds: task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has null window container."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method isApplicationTask()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method isAssistantTask()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isClearingToReuseTask()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isHomeTask()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isLockTaskWhitelistedLocked()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_10

    return v5

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1f

    return v5

    :cond_1f
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_22
    if-ltz v0, :cond_31

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    return v3

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_31
    return v5
.end method

.method isOverAssistantStack()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isOverHomeStack()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isRecentsTask()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    return-void
.end method

.method okToShowLocked()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method onParentChanged()V
    .registers 2

    invoke-super {p0}, Lcom/android/server/am/ConfigurationContainer;->onParentChanged()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_a
    if-ltz v1, :cond_25

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_1d

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1d

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1d
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v4, :cond_22

    return v3

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_25
    if-lez v0, :cond_28

    const/4 v3, 0x1

    :cond_28
    return v3
.end method

.method final performClearTaskAtIndexLocked(IZ)V
    .registers 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_8
    if-ge p1, v7, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_19

    :cond_16
    :goto_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v4, "clear-task-index"

    move v5, v2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    :cond_3c
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 15

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    :goto_8
    if-ltz v8, :cond_7f

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_19

    :cond_16
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    :cond_19
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v11, v1

    add-int/lit8 v8, v8, 0x1

    :goto_26
    if-ge v8, v9, :cond_57

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_37

    :cond_34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_37
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    if-eqz v10, :cond_40

    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_40
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v4, "clear-task-stack"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_34

    :cond_57
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7e

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_7e

    invoke-static {p2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7e

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_7c

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "clear-task-top"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_7c
    const/4 v0, 0x0

    return-object v0

    :cond_7e
    return-object v11

    :cond_7f
    const/4 v0, 0x0

    return-object v0
.end method

.method final performClearTaskLocked()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZ)V

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v0, p0, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    :cond_42
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5b

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_5b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_68
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    return v2
.end method

.method removeTaskActivitiesLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZ)V

    return-void
.end method

.method removeWindowContainer()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->removeContainer()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-void
.end method

.method removedFromRecents()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    return-void
.end method

.method reparent(IIIZZLjava/lang/String;)Z
    .registers 15

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(IIIZZZLjava/lang/String;)Z
    .registers 35

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const v9, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v9, :cond_2c

    const/4 v9, 0x1

    :goto_1c
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_2e

    const/4 v9, 0x0

    return v9

    :cond_2c
    const/4 v9, 0x0

    goto :goto_1c

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    invoke-static/range {v17 .. v18}, Landroid/app/ActivityManager$StackId;->replaceWindowsOnTaskMove(II)Z

    move-result v9

    if-eqz v9, :cond_1c1

    if-eqz v21, :cond_1be

    const/4 v14, 0x1

    :goto_43
    if-eqz v14, :cond_50

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    :cond_50
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v13, 0x1

    :try_start_54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1c8

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_1c8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v5, :cond_1c4

    const/16 v22, 0x1

    :goto_6c
    if-eqz v5, :cond_1cc

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v9, v5, :cond_1cc

    const/4 v7, 0x1

    :goto_75
    if-eqz v5, :cond_1cf

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v9, v5, :cond_1cf

    const/4 v8, 0x1

    :goto_7e
    if-eqz v5, :cond_1d6

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_1d6

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v5, :cond_1d2

    const/16 v23, 0x1

    :goto_92
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v9}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v9, :cond_b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    move-object/from16 v25, v0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v26

    if-nez p3, :cond_1da

    const/4 v9, 0x1

    :goto_ae
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wm/TaskWindowContainerController;->reparent(Lcom/android/server/wm/StackWindowController;IZ)V

    :cond_b7
    if-eqz p3, :cond_1dd

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_1e3

    if-nez v22, :cond_1e0

    move/from16 v6, v23

    :goto_c2
    if-eqz v6, :cond_1e6

    const/4 v9, 0x2

    :goto_c5
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v4, v0, v1, v9, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    if-eqz p6, :cond_e3

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    :cond_e3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_e7
    .catchall {:try_start_54 .. :try_end_e7} :catchall_241

    if-eqz v9, :cond_100

    :try_start_e9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v9, v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_100} :catch_24a
    .catchall {:try_start_e9 .. :try_end_100} :catchall_241

    :cond_100
    :goto_100
    if-eqz v5, :cond_107

    move-object/from16 v9, p7

    :try_start_104
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V

    :cond_107
    if-nez p4, :cond_118

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_118

    iget-object v9, v4, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->prepareFreezingTaskBounds()V

    const/4 v9, 0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_1e9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v0, v4, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1e9

    iget-object v9, v4, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    xor-int/lit8 v25, v14, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, p5

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z
    :try_end_143
    .catchall {:try_start_104 .. :try_end_143} :catchall_241

    move-result v13

    :cond_144
    :goto_144
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    if-eqz v14, :cond_156

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    xor-int/lit8 v25, v13, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    :cond_156
    if-nez p5, :cond_16a

    xor-int/lit8 v9, v14, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_16a
    const/4 v9, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_246

    const/16 v19, 0x1

    :goto_17e
    const/4 v15, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_19d

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_19d

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_19d

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v9

    if-eqz v9, :cond_19d

    const/4 v15, 0x0

    :cond_19d
    if-eqz v19, :cond_1bd

    const/4 v9, 0x3

    move/from16 v0, v18

    if-ne v0, v9, :cond_1bd

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v9

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v9, v0, :cond_1bd

    if-eqz v15, :cond_1bd

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    :cond_1bd
    return v19

    :cond_1be
    const/4 v14, 0x0

    goto/16 :goto_43

    :cond_1c1
    const/4 v14, 0x0

    goto/16 :goto_43

    :cond_1c4
    const/16 v22, 0x0

    goto/16 :goto_6c

    :cond_1c8
    const/16 v22, 0x0

    goto/16 :goto_6c

    :cond_1cc
    const/4 v7, 0x0

    goto/16 :goto_75

    :cond_1cf
    const/4 v8, 0x0

    goto/16 :goto_7e

    :cond_1d2
    const/16 v23, 0x0

    goto/16 :goto_92

    :cond_1d6
    const/16 v23, 0x0

    goto/16 :goto_92

    :cond_1da
    const/4 v9, 0x0

    goto/16 :goto_ae

    :cond_1dd
    const/4 v6, 0x1

    goto/16 :goto_c2

    :cond_1e0
    const/4 v6, 0x1

    goto/16 :goto_c2

    :cond_1e3
    const/4 v6, 0x0

    goto/16 :goto_c2

    :cond_1e6
    const/4 v9, 0x1

    goto/16 :goto_c5

    :cond_1e9
    const/4 v9, 0x2

    move/from16 v0, v18

    if-ne v0, v9, :cond_20e

    :try_start_1ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v10

    if-nez v10, :cond_1fe

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v9}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    :cond_1fe
    xor-int/lit8 v9, v14, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p5

    invoke-virtual {v0, v10, v1, v9, v2}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v13

    goto/16 :goto_144

    :cond_20e
    const/4 v9, 0x3

    move/from16 v0, v18

    if-eq v0, v9, :cond_218

    const/4 v9, 0x4

    move/from16 v0, v18

    if-ne v0, v9, :cond_144

    :cond_218
    const/4 v9, 0x3

    move/from16 v0, v18

    if-ne v0, v9, :cond_22d

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_22d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V

    :cond_22d
    iget-object v9, v4, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    xor-int/lit8 v25, v14, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, p5

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z
    :try_end_23e
    .catchall {:try_start_1ee .. :try_end_23e} :catchall_241

    move-result v13

    goto/16 :goto_144

    :catchall_241
    move-exception v9

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v9

    :cond_246
    const/16 v19, 0x0

    goto/16 :goto_17e

    :catch_24a
    move-exception v11

    goto/16 :goto_100
.end method

.method reparent(IZIZZLjava/lang/String;)Z
    .registers 15

    if-eqz p2, :cond_11

    const v2, 0x7fffffff

    :goto_5
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v2, 0x0

    goto :goto_5
.end method

.method reparent(IZIZZZLjava/lang/String;)Z
    .registers 16

    if-eqz p2, :cond_11

    const v2, 0x7fffffff

    :goto_5
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Note: WMS has a Freeform taskId, but AMS\'s taskId is different. taskId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .registers 15

    const-wide/16 v8, 0x40

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_2c

    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask: task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not resizeable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2c
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3e

    const/4 v0, 0x1

    :goto_31
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_40

    return v7

    :cond_3e
    const/4 v0, 0x0

    goto :goto_31

    :cond_40
    invoke-static {p1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v4, :cond_59

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    if-eq v4, v5, :cond_58

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z

    :cond_58
    return v7

    :cond_59
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_91

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask: Can not resize task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to bounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " resizeMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "am.resizeTask_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v1, 0x1

    if-eqz v3, :cond_cf

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_cf

    xor-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_cf

    invoke-virtual {v2, v6, p3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfigurationLocked(IZ)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2, v6, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    if-nez v1, :cond_cf

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_cf
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/android/server/wm/TaskWindowContainerController;->resize(Landroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v1
.end method

.method resizeWindowContainer()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/wm/TaskWindowContainerController;->resize(Landroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/high16 v9, 0x80000

    const/4 v8, 0x0

    const-string/jumbo v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1f
    const-string/jumbo v4, "real_activity_suspended"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3b

    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_201

    const-string/jumbo v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1fc

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_5a
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5d
    :goto_5d
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "user_setup_complete"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_f1

    const-string/jumbo v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_fa

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_fa
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_217

    const-string/jumbo v4, ""

    :goto_145
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "resize_mode"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "supports_picture_in_picture"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_17c

    const-string/jumbo v4, "non_fullscreen_bounds"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17c
    const-string/jumbo v4, "min_width"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "min_height"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "persist_task_version"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "is_available"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1c0

    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c0
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1d8
    if-ge v1, v2, :cond_1fb

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_1fb

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1fb

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_21b

    if-lez v1, :cond_21b

    :cond_1fb
    return-void

    :cond_1fc
    const-string/jumbo v4, "@"

    goto/16 :goto_5a

    :cond_201
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_5d

    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_213

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_20e
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5d

    :cond_213
    const-string/jumbo v4, "@"

    goto :goto_20e

    :cond_217
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto/16 :goto_145

    :cond_21b
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d8
.end method

.method final setFrontOfTask()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_23

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1f

    :cond_1a
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v1, 0x1

    goto :goto_1c

    :cond_23
    if-nez v1, :cond_31

    if-lez v2, :cond_31

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    :cond_31
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_12
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z

    move-result v4

    return v4

    :cond_25
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_38

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_12

    :cond_38
    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setLastThumbnailLocked() called on Task without stack"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method setLockTaskAuth()V
    .registers 5

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-eq v2, v1, :cond_f

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-ne v2, v0, :cond_11

    :cond_f
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    :cond_11
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    packed-switch v2, :pswitch_data_32

    :goto_16
    return-void

    :pswitch_17
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x3

    :cond_1e
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_16

    :pswitch_21
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_16

    :pswitch_24
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_16

    :pswitch_28
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_2f

    move v0, v1

    :cond_2f
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_16

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_17
        :pswitch_21
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez p1, :cond_8

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    return-void

    :cond_8
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_5
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez p1, :cond_8

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    return-void

    :cond_8
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_5
.end method

.method setResizeMode(I)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setResizeable(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void
.end method

.method setStack(Lcom/android/server/am/ActivityStack;)V
    .registers 4

    if-eqz p1, :cond_13

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->onParentChanged()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    :cond_22
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDockedResizing(Z)V

    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    :goto_c
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_55

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_5f

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_52

    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_52
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_55
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    return-void

    :cond_5f
    move-object p1, v0

    goto :goto_c
.end method

.method setTaskToReturnTo(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    :cond_4
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return-void
.end method

.method setTaskToReturnTo(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_a
.end method

.method protected setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-void
.end method

.method supportsSplitScreen()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_24

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    :cond_21
    xor-int/lit8 v0, v0, 0x1

    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_41
    const-string/jumbo v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_77

    const-string/jumbo v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_77
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_8f

    const-string/jumbo v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_8f
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a7

    const-string/jumbo v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :cond_a7
    const-string/jumbo v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_d
    if-ltz v0, :cond_25

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_22

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_25
    return-object v3
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_d
    if-ltz v0, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_28

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2b
    return-object v1

    :cond_2c
    return-object v4
.end method

.method touchActiveTime()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    :cond_12
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v5

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez p1, :cond_52

    move v0, v3

    :goto_1e
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :cond_36
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    :goto_3b
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eq v0, v6, :cond_49

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    :cond_49
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_52
    move v0, v5

    goto :goto_1e

    :cond_54
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    :goto_6b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_79
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/MiuiMultiWindowUtils;->getOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_bd

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_9b
    :goto_9b
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-eq v0, v4, :cond_e1

    move v4, v3

    :goto_a6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v7, :cond_af

    move v5, v3

    :cond_af
    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_3b

    :cond_b5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6b

    :cond_bd
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastLandBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9b

    :cond_c5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_9b

    :cond_d9
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastPortraitBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9b

    :cond_e1
    move v4, v5

    goto :goto_a6
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3f

    return-void

    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :goto_48
    return-void

    :cond_49
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_48

    :cond_4d
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_5a
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_67

    return-void

    :cond_67
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_48
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_12
    return-object v0
.end method

.method updateTaskDescription()V
    .registers 15

    const/4 v2, 0x0

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_81

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_7f

    const/4 v11, 0x1

    :goto_1b
    const/4 v0, 0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_20
    if-ge v8, v9, :cond_36

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_83

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_83

    add-int/lit8 v8, v8, 0x1

    :cond_36
    if-lez v8, :cond_b5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_41
    if-ltz v8, :cond_95

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7b

    if-nez v1, :cond_57

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    :cond_57
    if-nez v3, :cond_5f

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    :cond_5f
    if-nez v4, :cond_67

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    :cond_67
    if-eqz v12, :cond_7b

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v5

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v6

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v7

    :cond_7b
    const/4 v12, 0x0

    add-int/lit8 v8, v8, -0x1

    goto :goto_41

    :cond_7f
    const/4 v11, 0x0

    goto :goto_1b

    :cond_81
    const/4 v11, 0x0

    goto :goto_1b

    :cond_83
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_92

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v13, 0x80000

    and-int/2addr v0, v13

    if-nez v0, :cond_36

    :cond_92
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_95
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_a7
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v0, v2, :cond_b5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    :cond_b5
    return-void
.end method
