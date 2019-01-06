.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field public static final INCALL_UI_NAME:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field public static final MAX_SWITCH_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field mLastActivityCallTime:J

.field private final mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchFlags:I

.field private mLaunchSingleInstance:Z

.field private mLaunchSingleTask:Z

.field private mLaunchSingleTop:Z

.field private mLaunchTaskBehind:Z

.field private mMovedOtherTask:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field public mPerf:Landroid/util/BoostFramework;

.field private mPowerHintSent:Z

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceDisplayId:I

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mUsingVr2dDisplay:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityStarter;->mLastActivityCallTime:J

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_37

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    :cond_37
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_16

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_15
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .registers 7

    const/high16 v1, 0x80000

    and-int v0, p4, v1

    if-eqz v0, :cond_17

    if-nez p2, :cond_a

    if-eqz p3, :cond_17

    :cond_a
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x8080001

    and-int/2addr p4, v0

    :goto_16
    :pswitch_16
    return p4

    :cond_17
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v0, :pswitch_data_28

    goto :goto_16

    :pswitch_1f
    or-int/2addr p4, v1

    goto :goto_16

    :pswitch_21
    or-int/2addr p4, v1

    goto :goto_16

    :pswitch_23
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_16

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1f
        :pswitch_21
        :pswitch_23
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 9

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v2, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    packed-switch v2, :pswitch_data_38

    :pswitch_e
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v4

    if-eqz v4, :cond_36

    iget v4, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    :goto_1a
    if-eqz v0, :cond_27

    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_27

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_27

    const/4 v3, 0x1

    :cond_27
    return v3

    :pswitch_28
    const/4 v0, 0x1

    goto :goto_1a

    :pswitch_2a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    goto :goto_1a

    :pswitch_2f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreen()Z

    move-result v0

    goto :goto_1a

    :pswitch_34
    const/4 v0, 0x0

    goto :goto_1a

    :cond_36
    const/4 v0, 0x0

    goto :goto_1a

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_34
        :pswitch_2f
        :pswitch_e
        :pswitch_e
        :pswitch_2a
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .registers 9

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_128

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_128

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_128

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v0, :cond_44

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Launching into task without base intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_44
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_c1

    :cond_4c
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to launch singleInstance/Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " into different task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8c
    if-eqz v2, :cond_c1

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caller with mInTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has root "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but target is singleInstance/Task"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c1
    if-nez v2, :cond_11d

    const v1, 0x18082000

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, -0x18082001

    and-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, 0x18082000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    :goto_e7
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    :cond_eb
    :goto_eb
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_11c

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_147

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-nez v3, :cond_11c

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_11c

    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_11c
    :goto_11c
    return-void

    :cond_11d
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_125

    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_e7

    :cond_125
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_e7

    :cond_128
    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v3

    if-nez v3, :cond_138

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_eb

    :cond_138
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_eb

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_eb

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_eb

    :cond_147
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_154

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_11c

    :cond_154
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_15c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_11c

    :cond_15c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_11c
.end method

.method private computeSourceStack()V
    .registers 7

    const/high16 v5, 0x10000000

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_a

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_19
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v5

    if-nez v1, :cond_64

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; forcing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_62
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :cond_64
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_70
    return-void

    :cond_71
    move-object v1, v2

    goto :goto_62
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 15

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-direct {p0, p1, p4, v5, p5}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_c

    return-object v2

    :cond_c
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_1b

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v6

    :cond_26
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    if-eqz v6, :cond_3c

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_3c

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v6, p1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :cond_3c
    if-nez v2, :cond_6a

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v6, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_4a
    if-ltz v4, :cond_5e

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget v6, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    return-object v2

    :cond_5b
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    :cond_5e
    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v3

    :goto_64
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v3, v8, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :cond_6a
    return-object v2

    :cond_6b
    if-eqz p3, :cond_6f

    const/4 v3, 0x2

    goto :goto_64

    :cond_6f
    const/4 v3, 0x1

    goto :goto_64
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 20

    iget-boolean v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_17
    const-string/jumbo v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    iget-object v2, p1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    iget-object v7, p1, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iget v10, p1, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    iget-object v11, p1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    iget-boolean v12, p1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    move-object v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/16 v1, 0x7533

    invoke-static {v1, p1, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 15

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v5

    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_36
    if-eqz p4, :cond_4f

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    :goto_3c
    if-eqz p4, :cond_51

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v3

    :goto_42
    if-eq v3, v8, :cond_53

    if-eq v2, v8, :cond_53

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Stack and display id can\'t be set at the same time."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4f
    const/4 v2, -0x1

    goto :goto_3c

    :cond_51
    const/4 v3, -0x1

    goto :goto_42

    :cond_53
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_60
    const/4 v5, 0x7

    if-ne v3, v5, :cond_6b

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_6b
    if-ne v3, v9, :cond_74

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v7, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_74
    if-eq v2, v8, :cond_7d

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_7d
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v5, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    :cond_8a
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_92

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    if-eqz v5, :cond_93

    :cond_92
    return-object v6

    :cond_93
    if-eqz p3, :cond_a0

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    :goto_99
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_a5

    return-object v4

    :cond_a0
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_99

    :cond_a5
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne p3, v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v5

    :cond_ba
    if-eqz v4, :cond_c9

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v5

    if-eqz v5, :cond_c9

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v7, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    return-object v5

    :cond_c9
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_d8

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-nez v5, :cond_d8

    return-object v6

    :cond_d8
    return-object v1
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .registers 8

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3d

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-nez v4, :cond_3d

    :cond_f
    const/4 v1, 0x1

    :goto_10
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_1b

    const/4 v3, 0x1

    :cond_1b
    and-int/2addr v1, v3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v4, :cond_f

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    goto :goto_10

    :cond_44
    const/4 v0, 0x0

    goto :goto_3c

    :cond_46
    if-eqz v1, :cond_3c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_3c

    :cond_5f
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_3c

    :cond_76
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_3c
.end method

.method private getSourceDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_9

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    if-eq v0, v2, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    return v0

    :cond_13
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    :goto_19
    if-eq v0, v2, :cond_1e

    return v0

    :cond_1c
    const/4 v0, -0x1

    goto :goto_19

    :cond_1e
    return v3
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private reset()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mUsingVr2dDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :goto_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_e
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_3d

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_3d

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v6, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_3d
    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 15

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->reset()V

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput-object p6, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object p7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ActivityStarter;->getSourceDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceDisplayId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15d

    const/4 v3, 0x1

    :goto_2b
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_160

    const/4 v3, 0x1

    :goto_33
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_163

    const/4 v3, 0x1

    :goto_3b
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_169

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_169

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_169

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_166

    const/4 v3, 0x1

    :goto_65
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_73

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_73

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    :cond_73
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_88

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_88

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_88
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_a1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_9a

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a1

    :cond_9a
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_a1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-nez v3, :cond_16c

    const/4 v3, 0x1

    :goto_ab
    iput-boolean v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    iput-boolean p4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz p4, :cond_b9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bf

    :cond_b9
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    :cond_bf
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_ff

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_ff

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v3

    if-eqz v3, :cond_ff

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v3

    if-nez v3, :cond_ff

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_16f

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    :goto_f1
    if-eqz v2, :cond_ff

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_ff

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    :cond_ff
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_171

    move-object v3, p1

    :goto_107
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_12f

    iget-boolean v3, p3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12f

    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    :cond_12f
    iput p5, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_152

    move-object v0, p6

    if-nez p6, :cond_142

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    :cond_142
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_152

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    :cond_152
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_173

    const/4 v3, 0x1

    :goto_15a
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    return-void

    :cond_15d
    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_160
    const/4 v3, 0x0

    goto/16 :goto_33

    :cond_163
    const/4 v3, 0x0

    goto/16 :goto_3b

    :cond_166
    const/4 v3, 0x0

    goto/16 :goto_65

    :cond_169
    const/4 v3, 0x0

    goto/16 :goto_65

    :cond_16c
    const/4 v3, 0x0

    goto/16 :goto_ab

    :cond_16f
    const/4 v2, 0x0

    goto :goto_f1

    :cond_171
    const/4 v3, 0x0

    goto :goto_107

    :cond_173
    const/4 v3, 0x0

    goto :goto_15a
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 16

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-nez v10, :cond_ed

    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_f5

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    :goto_1a
    if-eqz v12, :cond_be

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v12, v0, :cond_28

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v12, v0, :cond_be

    :cond_28
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v0, v2, :cond_be

    :cond_55
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    :cond_66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v0, v2

    const v2, 0x10008000

    if-ne v0, v2, :cond_f8

    const/4 v13, 0x1

    :goto_75
    if-nez v13, :cond_b5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v11, :cond_91

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v11, v0, :cond_fb

    :cond_91
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "bringingFoundTaskToFront"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    :cond_a9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    :cond_ac
    :goto_ac
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_b5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-direct {p0, v0, v2, v10}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    :cond_be
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_ce

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "intentActivityFound"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_ce
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_ed
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    goto/16 :goto_14

    :cond_f5
    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_f8
    const/4 v13, 0x0

    goto/16 :goto_75

    :cond_fb
    iget v0, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_105

    iget v0, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_135

    :cond_105
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_11b

    iget v2, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v7, "launchToSide"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    :cond_117
    :goto_117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_ac

    :cond_11b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "bringToFrontInsteadOfAdjacentLaunch"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_117

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->remove()V

    goto :goto_117

    :cond_135
    iget v0, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v0, v2, :cond_152

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v8, "reparentToDisplay"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_ac

    :cond_152
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    if-nez v0, :cond_175

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    if-eqz v0, :cond_175

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v8, "reparentingHome"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_ac

    :cond_175
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_ac

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ac

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v8, "reparentingFreeform"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_ac

    :cond_19a
    return-object p1
.end method

.method private setTaskFromInTask()I
    .registers 13

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_7b

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget v0, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v2, :cond_7b

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v0, :cond_7b

    :cond_5d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "inTaskToFront"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_76

    return v7

    :cond_76
    invoke-direct {p0, v11}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x3

    return v0

    :cond_7b
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "inTaskToFront"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/4 v0, 0x2

    return v0

    :cond_98
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    if-eq v1, v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v6, "inTaskToFront"

    move v2, v7

    move v3, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_ca
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v6, -0x1

    move v3, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    :cond_da
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    return v4
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 10

    const v1, 0x10008000

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    iput-object v6, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v0, :cond_6c

    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_1d

    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "startActivityUnchecked"

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    goto :goto_1d

    :cond_6c
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-eqz v0, :cond_a5

    :cond_87
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_a0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_1d

    :cond_a5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1d

    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_1d

    :cond_b7
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_c4

    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_1d

    :cond_c4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_1d
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)I
    .registers 13

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    :goto_26
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_2c
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    const-string/jumbo v0, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_7d
    :goto_7d
    if-eqz p1, :cond_84

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    :cond_84
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_cf

    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    return v0

    :cond_b0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_26

    :cond_b6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2c

    :cond_ba
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_5b

    :cond_c6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    goto :goto_7d

    :cond_cf
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_e0

    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_e0
    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    :cond_e3
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "reuseOrNewTask"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_ef
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskFromSourceRecord()I
    .registers 15

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x65

    return v1

    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1081

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    :cond_46
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v10, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_5a
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, v0, :cond_107

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    :goto_68
    if-eqz v7, :cond_a3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_92

    iget v1, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v1, :cond_92

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_92
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_a3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_a3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_10a

    iput-object v9, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_a9
    :goto_a9
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-eq v13, v0, :cond_11d

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11d

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v6, "sourceTaskToFront"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_12a

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12a

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    if-eqz v12, :cond_163

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-static {v3, v1, v2}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_fc
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/4 v1, 0x3

    return v1

    :cond_103
    iget v10, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_5a

    :cond_107
    const/4 v7, 0x1

    goto/16 :goto_68

    :cond_10a
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v9, :cond_a9

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v6, "launchToSide"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    goto :goto_a9

    :cond_11d
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "sourceStackToFront"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_c8

    :cond_12a
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_163

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_163

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_163

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/16 v2, 0x7533

    invoke-static {v2, v1, v11}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_161

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_161
    const/4 v1, 0x3

    return v1

    :cond_163
    const-string/jumbo v1, "setTaskFromSourceRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .registers 15

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_5f

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    :goto_27
    const-string/jumbo v0, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v13, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting new activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in new guessed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v10, 0x1

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    goto :goto_27
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 79

    const/16 v49, 0x0

    if-eqz p18, :cond_80

    invoke-virtual/range {p18 .. p18}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v54

    :goto_8
    const/16 v16, 0x0

    if-eqz p1, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    if-eqz v16, :cond_83

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p12, v0

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p13, v0

    :cond_26
    :goto_26
    if-eqz p5, :cond_be

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    :goto_32
    if-nez v49, :cond_71

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "START u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "} from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityStarterInjector;->interceptAdvertiseActivityInMiuiAiMode(Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v5

    if-eqz v5, :cond_c2

    const/16 v5, -0x60

    return v5

    :cond_80
    const/16 v54, 0x0

    goto :goto_8

    :cond_83
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v49, -0x5e

    goto/16 :goto_26

    :cond_be
    const/16 v25, 0x0

    goto/16 :goto_32

    :cond_c2
    const/16 v43, 0x0

    const/4 v6, 0x0

    if-eqz p9, :cond_106

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v43

    if-eqz v43, :cond_106

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_f4

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f4

    const/4 v5, -0x1

    move/from16 v0, p11

    if-ne v0, v5, :cond_f4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_f4

    const/16 p11, -0x3e9

    :cond_f4
    if-gez p11, :cond_fc

    const/16 v5, -0x3e9

    move/from16 v0, p11

    if-ne v0, v5, :cond_106

    :cond_fc
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_106

    move-object/from16 v6, v43

    :cond_106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v51

    const/high16 v5, 0x2000000

    and-int v5, v5, v51

    if-eqz v5, :cond_153

    if-eqz v43, :cond_153

    if-ltz p11, :cond_11a

    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v5, -0x5d

    return v5

    :cond_11a
    move-object/from16 v0, v43

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_129

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_129

    const/4 v6, 0x0

    :cond_129
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p10, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p11, v0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_145

    move-object/from16 v0, v43

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    :cond_145
    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p13

    if-ne v5, v0, :cond_153

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p14, v0

    :cond_153
    if-nez v49, :cond_15d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_15d

    const/16 v49, -0x5b

    :cond_15d
    if-nez v49, :cond_163

    if-nez p5, :cond_163

    const/16 v49, -0x5c

    :cond_163
    if-nez v49, :cond_1bc

    if-eqz v43, :cond_1bc

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_1bc

    const/high16 v5, 0x10000000

    and-int v5, v5, v51

    if-nez v5, :cond_1bc

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v7, :cond_1bc

    :try_start_185
    const-string/jumbo v5, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1bc

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_1ba} :catch_20a

    const/16 v49, -0x61

    :cond_1bc
    :goto_1bc
    if-nez v49, :cond_1ef

    if-eqz p7, :cond_1ef

    :try_start_1c0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1ef

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in new voice task does not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_1c0 .. :try_end_1ed} :catch_218

    const/16 v49, -0x61

    :cond_1ef
    :goto_1ef
    if-nez v6, :cond_226

    const/4 v4, 0x0

    :goto_1f2
    if-eqz v49, :cond_22b

    if-eqz v6, :cond_206

    const/16 v5, -0x3e9

    move/from16 v0, p11

    if-eq v0, v5, :cond_206

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_206
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return v49

    :catch_20a
    move-exception v48

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v48

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v49, -0x61

    goto :goto_1bc

    :catch_218
    move-exception v48

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v48

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v49, -0x61

    goto :goto_1ef

    :cond_226
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    goto :goto_1f2

    :cond_22b
    new-instance v20, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    move/from16 v0, p17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->startFlags:I

    move-object/from16 v0, v20

    iput-object v6, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resultRecord:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->stackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->userId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p19

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, p18

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)Z

    move-result v5

    xor-int/lit8 v47, v5, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p5

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p13

    move/from16 v10, p12

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int v47, v47, v5

    if-nez v47, :cond_2b2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v9, p2

    move-object/from16 v10, p14

    move/from16 v11, p13

    move-object/from16 v12, p5

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ExtraActivityManagerService;->isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2b2

    const/16 v47, 0x1

    :cond_2b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_2d4

    :try_start_2ba
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-interface {v5, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2cf
    .catch Landroid/os/RemoteException; {:try_start_2ba .. :try_end_2cf} :catch_356

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int v47, v47, v5

    :cond_2d4
    :goto_2d4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v8, v25

    move/from16 v9, p15

    move/from16 v10, p16

    move/from16 v11, p17

    move-object/from16 v12, p14

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p22

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p18

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p5, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 p4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 p22, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    move/from16 p12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    move/from16 p13, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 p18, v0

    if-eqz v47, :cond_360

    if-eqz v6, :cond_350

    const/16 v5, -0x3e9

    move/from16 v0, p11

    if-eq v0, v5, :cond_350

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_350
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v5, 0x66

    return v5

    :catch_356
    move-exception v48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_2d4

    :cond_360
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_37e

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    const/16 p4, 0x0

    move/from16 p13, p16

    move/from16 p12, p15

    :cond_37e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v5, :cond_42e

    if-eqz p5, :cond_42e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v0, v25

    invoke-virtual {v5, v7, v0}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_42e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    const/4 v5, 0x1

    new-array v0, v5, [Landroid/content/Intent;

    move-object/from16 v29, v0

    const/4 v5, 0x0

    aput-object p2, v29, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v5, 0x0

    aput-object p4, v30, v5

    const/16 v22, 0x2

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v31, 0x50000000

    const/16 v32, 0x0

    move-object/from16 v23, p14

    move/from16 v24, p13

    invoke-virtual/range {v21 .. v32}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v53

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v50

    new-instance v52, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.REVIEW_PERMISSIONS"

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x800000

    or-int v5, v5, v50

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/IntentSender;

    move-object/from16 v0, v53

    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v6, :cond_409

    const/16 v5, -0x3e9

    move/from16 v0, p11

    if-eq v0, v5, :cond_409

    const-string/jumbo v5, "android.intent.extra.RESULT_NEEDED"

    const/4 v7, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_409
    move-object/from16 p2, v52

    const/16 p4, 0x0

    move/from16 p13, p16

    move/from16 p12, p15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v52

    move-object/from16 v1, p4

    move/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    :cond_42e
    if-eqz p6, :cond_45f

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v5, :cond_45f

    move-object/from16 v0, p6

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p14

    move-object/from16 v11, v54

    move-object/from16 v12, p4

    move/from16 v13, v25

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/16 p4, 0x0

    move/from16 p13, p16

    move/from16 p12, p15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    :cond_45f
    new-instance v26, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v35

    if-eqz p7, :cond_4f8

    const/16 v40, 0x1

    :goto_473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v41, v0

    move-object/from16 v28, v16

    move/from16 v29, p12

    move/from16 v30, p13

    move-object/from16 v31, p14

    move-object/from16 v32, p2

    move-object/from16 v33, p4

    move-object/from16 v34, p5

    move-object/from16 v36, v6

    move-object/from16 v37, p10

    move/from16 v38, p11

    move/from16 v39, p20

    move-object/from16 v42, p18

    invoke-direct/range {v26 .. v43}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    if-eqz p21, :cond_499

    const/4 v5, 0x0

    aput-object v26, p21, v5

    :cond_499
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_4a9

    if-eqz v43, :cond_4a9

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_4a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v45, v0

    if-nez p7, :cond_4fc

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_4c7

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p13

    if-eq v5, v0, :cond_4fc

    :cond_4c7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v12, "Activity start"

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p15

    move/from16 v11, p16

    move-object/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_4fc

    new-instance v41, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v42, v26

    move/from16 v44, p17

    move-object/from16 v46, v16

    invoke-direct/range {v41 .. v46}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v5, 0x64

    return v5

    :cond_4f8
    const/16 v40, 0x0

    goto/16 :goto_473

    :cond_4fc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_52b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    :goto_50c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V

    const/16 v33, 0x1

    move-object/from16 v27, p0

    move-object/from16 v28, v26

    move-object/from16 v29, v43

    move-object/from16 v30, p7

    move-object/from16 v31, p8

    move/from16 v32, p17

    move-object/from16 v34, p18

    move-object/from16 v35, p22

    move-object/from16 v36, p21

    invoke-direct/range {v27 .. v36}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    return v5

    :cond_52b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_50c
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 20

    const/16 v2, -0x60

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_65

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    :goto_13
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v7

    if-eqz v8, :cond_67

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    :goto_1d
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v7, :cond_69

    xor-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_69

    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_75

    :cond_33
    :goto_33
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    :cond_4c
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    return v2

    :cond_65
    const/4 v8, 0x0

    goto :goto_13

    :cond_67
    const/4 v6, 0x0

    goto :goto_1d

    :cond_69
    if-eqz v6, :cond_33

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_33

    :try_start_6f
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_75

    goto :goto_33

    :catchall_75
    move-exception v0

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-nez v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    :cond_8f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 37

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p6

    move/from16 v9, p5

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v4 .. v12}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_69

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v18

    :goto_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_6c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v17

    :goto_46
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStarterInjector;->activityExistInMiuiAiModeStack(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v5

    if-nez v5, :cond_5e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/am/ActivityStarterInjector;->activityExistInFullScreenWorkspaceStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_6f

    :cond_5e
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, " Activity exist, start activity in miuiAiMode failed. "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x60

    return v5

    :cond_69
    const/16 v18, -0x1

    goto :goto_38

    :cond_6c
    const/16 v17, 0x0

    goto :goto_46

    :cond_6f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/am/ActivityStarterInjector;->clearTaskIfNeeded(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const/16 v20, 0x0

    :cond_7f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/am/ActivityStarterInjector;->reparentMiuiAiTaskIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;II)Z

    move-result v5

    if-eqz v5, :cond_97

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, " reusedActivity in miuiAiModeStack has moved to fullScreenStack."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    if-eqz v20, :cond_1a5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, 0x10008000

    and-int/2addr v5, v8

    const v8, 0x10008000

    if-ne v5, v8, :cond_c7

    const/4 v5, 0x1

    :goto_af
    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v5

    if-eqz v5, :cond_c9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    return v5

    :cond_c7
    const/4 v5, 0x0

    goto :goto_af

    :cond_c9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_de

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    :cond_de
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_f1

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_f1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_110

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v5}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_110

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v5, :cond_110

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v5, :cond_145

    :cond_110
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_12b

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    :cond_12b
    if-eqz v23, :cond_145

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_13e

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_13e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_145
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    if-eqz p9, :cond_181

    move-object/from16 v0, p9

    array-length v5, v0

    if-lez v5, :cond_181

    const/4 v5, 0x0

    aget-object v15, p9, v5

    :goto_167
    if-eqz v15, :cond_174

    iget-boolean v5, v15, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_171

    iget-boolean v5, v15, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v5, :cond_174

    :cond_171
    const/4 v5, 0x0

    aput-object v20, p9, v5

    :cond_174
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_183

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    const/4 v5, 0x1

    return v5

    :cond_181
    const/4 v15, 0x0

    goto :goto_167

    :cond_183
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_1a5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_1a5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    if-eqz p9, :cond_1a3

    move-object/from16 v0, p9

    array-length v5, v0

    if-lez v5, :cond_1a3

    const/4 v5, 0x0

    aput-object v20, p9, v5

    :cond_1a3
    const/4 v5, 0x2

    return v5

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v5, :cond_1ef

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1ed

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    :goto_1bf
    if-eqz v4, :cond_1e3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v6, -0x3e9

    if-eq v5, v6, :cond_1e3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_1e3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v5, -0x5c

    return v5

    :cond_1ed
    const/4 v4, 0x0

    goto :goto_1bf

    :cond_1ef
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    if-eqz v23, :cond_273

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_273

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_273

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_273

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_273

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_273

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-nez v5, :cond_271

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-nez v5, :cond_271

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    :goto_24c
    if-eqz v13, :cond_291

    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_260

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_275

    const/4 v5, 0x1

    return v5

    :cond_271
    const/4 v13, 0x1

    goto :goto_24c

    :cond_273
    const/4 v13, 0x0

    goto :goto_24c

    :cond_275
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    const/4 v5, 0x3

    return v5

    :cond_291
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_2fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_2fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v22

    :goto_2a6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_2fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_2fe

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2fe

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2fe

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_2ec

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0x1081

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    :cond_2ec
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)I

    move-result v19

    :goto_2f8
    if-eqz v19, :cond_318

    return v19

    :cond_2fb
    const/16 v22, 0x0

    goto :goto_2a6

    :cond_2fe
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_309

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v19

    goto :goto_2f8

    :cond_309
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_314

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v19

    goto :goto_2f8

    :cond_314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_2f8

    :cond_318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_371

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(Lcom/android/server/am/ActivityRecord;)V

    :cond_371
    if-eqz v14, :cond_399

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0x7534

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    const/16 v7, 0x7535

    invoke-static {v7, v5, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v7, v24

    move v8, v14

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_472

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_3fd

    if-eqz v26, :cond_43a

    move-object/from16 v0, v26

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_43a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v26

    if-eq v5, v0, :cond_43a

    :cond_3fd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :goto_40e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v6, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V

    const/4 v5, 0x0

    return v5

    :cond_43a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_45e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_45e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "startActivityUnchecked"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_45e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_40e

    :cond_472
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_40e
.end method

.method private updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 7

    const v2, 0x10004000

    const/4 v1, 0x1

    if-nez p1, :cond_7

    return-void

    :cond_7
    and-int v0, p2, v2

    if-ne v0, v2, :cond_f

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void

    :cond_f
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_17
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void

    :cond_1b
    if-eqz p3, :cond_2e

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eq p3, v0, :cond_2e

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void

    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void
.end method


# virtual methods
.method clearPendingActivityLaunchesLocked(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_9
    if-ltz v2, :cond_28

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_25

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_28
    return v0
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .registers 14

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    :goto_19
    :try_start_19
    iget-object v1, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_0

    :catch_29
    move-exception v10

    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception during pending activity launch pal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_4b
    const/4 v6, 0x0

    goto :goto_19

    :cond_4d
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_59

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59

    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59

    :cond_3f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_59

    :cond_4f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastStartReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastStartActivityResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v1, v3

    if-eqz v0, :cond_c6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastStartActivityRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v1, v3

    if-eqz v0, :cond_fa

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_fa
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_120

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartActivity:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_120
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_132

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_132
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_144

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLaunchSingleTop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mLaunchSingleInstance="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mLaunchSingleTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z
    .registers 8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_46

    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0

    :pswitch_f
    return v3

    :pswitch_10
    const/4 v0, 0x1

    return v0

    :pswitch_12
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    return v0

    :pswitch_17
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreen()Z

    move-result v0

    return v0

    :pswitch_1c
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    return v0

    :pswitch_21
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v0

    return v0

    :pswitch_26
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    return v0

    :cond_2b
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isValidLaunchStackId: Unexpected stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    nop

    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    .registers 16

    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v8

    if-eqz v8, :cond_7

    return-void

    :cond_7
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1d

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V

    :cond_1d
    const/4 v5, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :cond_26
    :goto_26
    const/4 v8, 0x3

    if-ne v5, v8, :cond_86

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isVisible()Z

    move-result v4

    :goto_36
    if-eqz v4, :cond_85

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    :goto_3e
    if-eqz v7, :cond_58

    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-eqz v8, :cond_58

    sget-object v8, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "now home is dummyVisible"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_26

    iget v5, p5, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_26

    :cond_54
    const/4 v4, 0x0

    goto :goto_36

    :cond_56
    const/4 v7, 0x0

    goto :goto_3e

    :cond_58
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    :goto_65
    if-eqz v6, :cond_7f

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7f

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedTask(I)V

    return-void

    :cond_7d
    const/4 v6, 0x0

    goto :goto_65

    :cond_7f
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    :cond_85
    return-void

    :cond_86
    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v9, 0x10008000

    and-int/2addr v8, v9

    const v9, 0x10008000

    if-ne v8, v9, :cond_a9

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_a7

    const/4 v0, 0x1

    :goto_96
    const/4 v8, 0x4

    if-ne v5, v8, :cond_ad

    const/4 v8, 0x2

    if-eq p2, v8, :cond_9f

    const/4 v8, 0x3

    if-ne p2, v8, :cond_ab

    :cond_9f
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    return-void

    :cond_a7
    const/4 v0, 0x0

    goto :goto_96

    :cond_a9
    const/4 v0, 0x0

    goto :goto_96

    :cond_ab
    if-nez v0, :cond_9f

    :cond_ad
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_1b

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    :cond_16
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .registers 8

    const/4 v4, 0x1

    move v1, p1

    if-nez p1, :cond_11

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_25

    :cond_10
    const/4 v1, 0x1

    :cond_11
    :goto_11
    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    :cond_24
    return-void

    :cond_25
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    goto :goto_11
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)I
    .registers 44

    if-nez p4, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-nez p5, :cond_16

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_27

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    if-ltz p2, :cond_58

    const/16 v16, -0x1

    :goto_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_7b

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    :goto_48
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_109

    aget-object v29, p4, v28

    if-nez v29, :cond_64

    move-object/from16 v3, v29

    :goto_55
    add-int/lit8 v28, v28, 0x1

    goto :goto_48

    :cond_58
    if-nez p1, :cond_5f

    move/from16 v16, v19

    move/from16 p2, v20

    goto :goto_33

    :cond_5f
    const/16 p2, -0x1

    const/16 v16, -0x1

    goto :goto_33

    :cond_64
    if-eqz v29, :cond_80

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v2

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_80
    :try_start_80
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_ba

    const/16 v24, 0x1

    :goto_88
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v4, p5, v28

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    if-eqz v9, :cond_bd

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_bd

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ba
    const/16 v24, 0x0

    goto :goto_88

    :cond_bd
    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_f5

    move-object/from16 v2, p7

    :goto_c8
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v22

    aget-object v8, p5, v28

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v13, p6

    move/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v27, p9

    invoke-virtual/range {v4 .. v27}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_80 .. :try_end_ea} :catchall_75

    move-result v32

    if-gez v32, :cond_f7

    :try_start_ed
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_7b

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v32

    :cond_f5
    const/4 v2, 0x0

    goto :goto_c8

    :cond_f7
    const/4 v2, 0x0

    :try_start_f8
    aget-object v2, v25, v2

    if-eqz v2, :cond_105

    const/4 v2, 0x0

    aget-object v2, v25, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0
    :try_end_103
    .catchall {:try_start_f8 .. :try_end_103} :catchall_75

    goto/16 :goto_55

    :cond_105
    const/16 p6, 0x0

    goto/16 :goto_55

    :cond_109
    :try_start_109
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_7b

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    return v2
.end method

.method startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .registers 49

    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Need to specify a reason."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    move-object/from16 v0, p23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move-object/from16 v24, p22

    invoke-direct/range {v2 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    if-eqz p21, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, p21, v3

    :cond_6b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_78

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    :goto_77
    return v2

    :cond_78
    const/4 v2, 0x0

    goto :goto_77
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .registers 76

    if-eqz p4, :cond_11

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "File descriptors passed in Intent"

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_f3

    const/16 v31, 0x1

    :goto_22
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/am/ExtraActivityManagerService;->hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    new-instance v37, Landroid/content/Intent;

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz v31, :cond_67

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_67

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_67

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v31, 0x0

    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p5

    move/from16 v1, p17

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v47

    if-nez v47, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v51

    if-eqz v51, :cond_ca

    invoke-virtual/range {v51 .. v51}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v54

    const/16 v45, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    :try_start_97
    move-object/from16 v0, v54

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v44

    if-eqz v44, :cond_f7

    move-object/from16 v0, v44

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_f7

    move-object/from16 v0, v54

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_b4
    .catchall {:try_start_97 .. :try_end_b4} :catchall_fa

    move-result v4

    xor-int/lit8 v45, v4, 0x1

    :goto_b7
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v45, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v7, 0xc0000

    move-object/from16 v0, p5

    move/from16 v1, p17

    invoke-virtual {v4, v6, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v47

    :cond_ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v47

    move/from16 v1, p11

    move-object/from16 v2, p12

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_e2

    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "aInfo is null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    invoke-virtual {v6}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v40

    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isXSpaceActive()Z

    move-result v4

    if-eqz v4, :cond_458

    const/4 v4, 0x4

    move/from16 v0, v40

    if-ne v0, v4, :cond_ff

    const/4 v4, 0x5

    return v4

    :cond_f3
    const/16 v31, 0x0

    goto/16 :goto_22

    :cond_f7
    const/16 v45, 0x0

    goto :goto_b7

    :catchall_fa
    move-exception v4

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-eqz p8, :cond_148

    const/4 v7, 0x1

    :goto_108
    move/from16 v8, p10

    move/from16 v9, p17

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Lcom/android/server/am/ActivityStackSupervisorInjector;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v7, v5

    move-object/from16 v8, p4

    move-object/from16 v10, p12

    move-object/from16 v11, p5

    move/from16 v12, p11

    move/from16 v13, p17

    move-object/from16 v14, p3

    invoke-static/range {v7 .. v14}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    :goto_127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v4, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    move-object/from16 v9, p1

    move-object v10, v5

    move-object/from16 v11, p4

    move/from16 v12, p17

    move-object/from16 v14, p3

    invoke-static/range {v7 .. v14}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14a

    const/4 v4, 0x5

    return v4

    :cond_148
    const/4 v7, 0x0

    goto :goto_108

    :cond_14a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p8, :cond_3c9

    const/4 v13, 0x1

    :goto_157
    move-object/from16 v9, p1

    move-object v10, v5

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p10

    move/from16 v15, p16

    move/from16 v16, p17

    move/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p15

    invoke-static/range {v7 .. v19}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p4

    move-object/from16 v1, p12

    move/from16 v2, p17

    invoke-static {v5, v0, v4, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lcom/android/server/am/ExtraActivityManagerService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p4

    move-object/from16 v1, p12

    move/from16 v2, p17

    invoke-static {v5, v0, v4, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object/from16 v0, p4

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMiuiFlags(I)Landroid/content/Intent;

    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v55, v0

    monitor-enter v55

    :try_start_1a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v26

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    if-ltz p2, :cond_3cc

    const/16 v23, -0x1

    :goto_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v49, v0

    if-eqz p14, :cond_3dd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_3da

    const/4 v4, 0x1

    :goto_1cc
    move-object/from16 v0, v49

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    if-eqz v5, :cond_2e5

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2e5

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2e5

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v7, :cond_20e

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e5

    :cond_20e
    move/from16 v10, p2

    if-eqz p1, :cond_224

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v35

    if-eqz v35, :cond_3e0

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_224
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "android"

    const/4 v4, 0x1

    new-array v15, v4, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p4, v15, v4

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object p5, v16, v4

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v17, 0x50000000

    const/16 v18, 0x0

    move/from16 v11, p17

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v50

    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    if-ltz p10, :cond_257

    const-string/jumbo v4, "has_result"

    const/4 v7, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_257
    const-string/jumbo v4, "intent"

    new-instance v7, Landroid/content/IntentSender;

    move-object/from16 v0, v50

    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_295

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v4, "cur_app"

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "cur_task"

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_295
    const-string/jumbo v4, "new_app"

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android"

    const-class v7, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 p4, v41

    const/16 p5, 0x0

    const/16 p1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    move-object/from16 v0, v41

    move/from16 v1, p17

    invoke-virtual {v4, v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v47

    if-eqz v47, :cond_421

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_2d9
    if-eqz v5, :cond_2e5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    :cond_2e5
    move-object/from16 v11, v49

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v5

    move-object/from16 v17, p8

    move/from16 v18, p10

    move/from16 v19, p17

    invoke-static/range {v11 .. v19}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V

    const/4 v4, 0x1

    new-array v0, v4, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v32, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, v37

    move-object/from16 v15, p5

    move-object/from16 v16, v5

    move-object/from16 v17, v47

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move/from16 v22, p10

    move/from16 v24, p2

    move-object/from16 v25, p3

    move/from16 v28, p11

    move/from16 v30, p16

    move-object/from16 v33, p18

    move-object/from16 v34, p19

    invoke-virtual/range {v11 .. v34}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v48

    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, v49

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v4, :cond_34d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v49

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    :cond_34d
    if-eqz p13, :cond_3b6

    move/from16 v0, v48

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/WaitResult;->result:I

    if-nez v48, :cond_387

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_362
    .catchall {:try_start_1a2 .. :try_end_362} :catchall_44d

    :cond_362
    :try_start_362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_369
    .catch Ljava/lang/InterruptedException; {:try_start_362 .. :try_end_369} :catch_455
    .catchall {:try_start_362 .. :try_end_369} :catchall_44d

    :goto_369
    :try_start_369
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/WaitResult;->result:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_37e

    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_37e

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v4, :cond_362

    :cond_37e
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/WaitResult;->result:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_387

    const/16 v48, 0x2

    :cond_387
    const/4 v4, 0x2

    move/from16 v0, v48

    if-ne v0, v4, :cond_3b6

    const/4 v4, 0x0

    aget-object v46, v32, v4

    move-object/from16 v0, v46

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_424

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v7, :cond_424

    const/4 v4, 0x0

    move-object/from16 v0, p13

    iput-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p13

    iput-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/WaitResult;->thisTime:J

    :cond_3b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    const/4 v7, 0x0

    aget-object v7, v32, v7

    move/from16 v0, v48

    invoke-virtual {v4, v0, v7}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_3c4
    .catchall {:try_start_369 .. :try_end_3c4} :catchall_44d

    monitor-exit v55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v48

    :cond_3c9
    const/4 v13, 0x0

    goto/16 :goto_157

    :cond_3cc
    if-nez p1, :cond_3d4

    move/from16 v23, v26

    move/from16 p2, v27

    goto/16 :goto_1b1

    :cond_3d4
    const/16 p2, -0x1

    const/16 v23, -0x1

    goto/16 :goto_1b1

    :cond_3da
    const/4 v4, 0x0

    goto/16 :goto_1cc

    :cond_3dd
    const/4 v4, 0x0

    goto/16 :goto_1cc

    :cond_3e0
    :try_start_3e0
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v29 .. v29}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_41a
    .catchall {:try_start_3e0 .. :try_end_41a} :catchall_44d

    const/16 v4, -0x5e

    monitor-exit v55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_421
    const/4 v5, 0x0

    goto/16 :goto_2d9

    :cond_424
    :try_start_424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/WaitResult;->thisTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p13

    invoke-virtual {v4, v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_439
    .catchall {:try_start_424 .. :try_end_439} :catchall_44d

    :goto_439
    :try_start_439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_440
    .catch Ljava/lang/InterruptedException; {:try_start_439 .. :try_end_440} :catch_453
    .catchall {:try_start_439 .. :try_end_440} :catchall_44d

    :goto_440
    :try_start_440
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/WaitResult;->timeout:Z

    if-nez v4, :cond_3b6

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;
    :try_end_44a
    .catchall {:try_start_440 .. :try_end_44a} :catchall_44d

    if-nez v4, :cond_3b6

    goto :goto_439

    :catchall_44d
    move-exception v4

    monitor-exit v55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :catch_453
    move-exception v36

    goto :goto_440

    :catch_455
    move-exception v36

    goto/16 :goto_369

    :cond_458
    move-object/from16 p4, v6

    goto/16 :goto_127
.end method

.method startConfirmCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7

    const v1, 0x10804000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_2a

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :goto_d
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_2a
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_d
.end method

.method startHomeActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartRecord:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHomeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLastHomeActivityStartResult:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_5c
    return-void
.end method
