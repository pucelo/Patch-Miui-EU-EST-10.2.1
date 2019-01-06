.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final ACTIVITY_MOVED_TO_DISPLAY:I = 0x9d

.field public static final APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final ATTACH_AGENT:I = 0x9b

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_63c

    :goto_b
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v14, Lcom/android/internal/os/SomeArgs;

    if-eqz v4, :cond_18

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_18
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JLandroid/os/Message;)V

    return-void

    :pswitch_20
    const-string/jumbo v4, "activityStart"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityThread$ActivityClientRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const-string/jumbo v5, "LAUNCH_ACTIVITY"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v0, v6, v5}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThreadInjector;->clearCachedDrawables()V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b

    :pswitch_5c
    const-string/jumbo v4, "activityRestart"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityThread$ActivityClientRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b

    :pswitch_7b
    const-string/jumbo v4, "activityPause"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_ae

    const/4 v7, 0x1

    :goto_98
    iget v8, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_b0

    const/4 v9, 0x1

    :goto_a1
    iget v10, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :cond_ae
    const/4 v7, 0x0

    goto :goto_98

    :cond_b0
    const/4 v9, 0x0

    goto :goto_a1

    :pswitch_b2
    const-string/jumbo v4, "activityPause"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e5

    const/4 v7, 0x1

    :goto_cf
    iget v8, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e7

    const/4 v9, 0x1

    :goto_d8
    iget v10, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :cond_e5
    const/4 v7, 0x0

    goto :goto_cf

    :cond_e7
    const/4 v9, 0x0

    goto :goto_d8

    :pswitch_e9
    const-string/jumbo v4, "activityStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v8, 0x1

    invoke-static {v5, v4, v8, v6, v7}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_10e
    const-string/jumbo v4, "activityStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v8, 0x0

    invoke-static {v5, v4, v8, v6, v7}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_133
    const-string/jumbo v4, "activityShowWindow"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_150
    const-string/jumbo v4, "activityHideWindow"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_16d
    const-string/jumbo v4, "activityResume"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v6, :cond_199

    const/4 v7, 0x1

    :goto_188
    iget v9, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string/jumbo v10, "RESUME_ACTIVITY"

    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :cond_199
    const/4 v7, 0x0

    goto :goto_188

    :pswitch_19b
    const-string/jumbo v4, "activityDeliverResult"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ResultData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_1b7
    const-string/jumbo v4, "activityDestroy"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1df

    const/4 v5, 0x1

    :goto_1d0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x0

    invoke-static {v6, v4, v5, v7, v8}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :cond_1df
    const/4 v5, 0x0

    goto :goto_1d0

    :pswitch_1e1
    const-string/jumbo v4, "bindApplication"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v13}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_1fd
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v4, :cond_20e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->onTerminate()V

    :cond_20e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_b

    :pswitch_217
    const-string/jumbo v4, "activityNewIntent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_233
    const-string/jumbo v4, "broadcastReceiveComp"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_24f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceCreate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_284
    const-string/jumbo v4, "serviceBind"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_2a0
    const-string/jumbo v4, "serviceUnbind"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_2bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_2f1
    const-string/jumbo v4, "serviceStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_30d
    const-string/jumbo v4, "configChanged"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v5, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    :try_start_32a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_338
    .catchall {:try_start_32a .. :try_end_338} :catchall_346

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :catchall_346
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    throw v4

    :pswitch_34f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/ActivityThread$ContextCleanupInfo;

    iget-object v4, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v5, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v6, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_b

    :pswitch_369
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_b

    :pswitch_378
    const-string/jumbo v4, "lowMemory"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->handleLowMemory()V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_38e
    const-string/jumbo v4, "activityConfigChanged"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ActivityConfigChangeData;

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;I)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_3ab
    const-string/jumbo v4, "activityMovedToDisplay"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ActivityConfigChangeData;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;I)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_3cb
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3e6

    const/4 v4, 0x1

    move v5, v4

    :goto_3d7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_b

    :cond_3e6
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3d7

    :pswitch_3e9
    const-string/jumbo v4, "backupCreateAgent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_405
    const-string/jumbo v4, "backupDestroyAgent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_421
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_b

    :pswitch_42a
    const-string/jumbo v4, "providerRemove"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_446
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_b

    :pswitch_44f
    const-string/jumbo v4, "broadcastPackage"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_46f
    new-instance v5, Landroid/app/RemoteServiceException;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_47b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v4}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_b

    :pswitch_486
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_b

    :pswitch_495
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_b

    :pswitch_4a4
    const-string/jumbo v4, "sleeping"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4c7

    const/4 v5, 0x1

    :goto_4bd
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :cond_4c7
    const/4 v5, 0x0

    goto :goto_4bd

    :pswitch_4c9
    const-string/jumbo v4, "setCoreSettings"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_4e5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_b

    :pswitch_4f4
    const-string/jumbo v4, "trimMemory"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_b

    :pswitch_50e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_b

    :pswitch_51e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_b

    :pswitch_52d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_544

    const/4 v5, 0x1

    :goto_53f
    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_b

    :cond_544
    const/4 v5, 0x0

    goto :goto_53f

    :pswitch_546
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_b

    :pswitch_555
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityOptions;

    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_b

    :pswitch_56c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_b

    :pswitch_57b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;)V

    goto/16 :goto_b

    :pswitch_584
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_b

    :pswitch_593
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget v5, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5bd

    const/4 v5, 0x1

    move v6, v5

    :goto_5ae
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    invoke-static {v7, v4, v6, v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    goto/16 :goto_b

    :cond_5bd
    const/4 v5, 0x0

    move v6, v5

    goto :goto_5ae

    :pswitch_5c0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget v5, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5ea

    const/4 v5, 0x1

    move v6, v5

    :goto_5db
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    invoke-static {v7, v4, v6, v5}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    goto/16 :goto_b

    :cond_5ea
    const/4 v5, 0x0

    move v6, v5

    goto :goto_5db

    :pswitch_5ed
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    goto/16 :goto_b

    :pswitch_60a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_615
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    :try_start_61c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_629
    .catchall {:try_start_61c .. :try_end_629} :catchall_632

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    goto/16 :goto_b

    :catchall_632
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    throw v4

    nop

    :pswitch_data_63c
    .packed-switch 0x64
        :pswitch_20
        :pswitch_7b
        :pswitch_b2
        :pswitch_e9
        :pswitch_10e
        :pswitch_133
        :pswitch_150
        :pswitch_16d
        :pswitch_19b
        :pswitch_1b7
        :pswitch_1e1
        :pswitch_1fd
        :pswitch_217
        :pswitch_233
        :pswitch_24f
        :pswitch_2bc
        :pswitch_2f1
        :pswitch_b
        :pswitch_30d
        :pswitch_34f
        :pswitch_360
        :pswitch_284
        :pswitch_2a0
        :pswitch_369
        :pswitch_378
        :pswitch_38e
        :pswitch_5c
        :pswitch_3cb
        :pswitch_3e9
        :pswitch_405
        :pswitch_421
        :pswitch_42a
        :pswitch_446
        :pswitch_44f
        :pswitch_46f
        :pswitch_47b
        :pswitch_486
        :pswitch_4a4
        :pswitch_4c9
        :pswitch_4e5
        :pswitch_4f4
        :pswitch_495
        :pswitch_50e
        :pswitch_51e
        :pswitch_52d
        :pswitch_546
        :pswitch_555
        :pswitch_b
        :pswitch_b
        :pswitch_56c
        :pswitch_57b
        :pswitch_584
        :pswitch_593
        :pswitch_5c0
        :pswitch_5ed
        :pswitch_60a
        :pswitch_615
        :pswitch_3ab
    .end packed-switch
.end method
