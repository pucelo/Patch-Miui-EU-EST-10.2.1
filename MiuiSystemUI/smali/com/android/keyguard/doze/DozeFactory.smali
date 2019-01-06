.class public Lcom/android/keyguard/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/keyguard/phone/DozeParameters;Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/keyguard/doze/DozeMachine$Service;)Lcom/android/keyguard/doze/DozeTriggers;
    .locals 12

    const/4 v10, 0x1

    new-instance v0, Lcom/android/keyguard/doze/DozeTriggers;

    move-object v1, p1

    move-object/from16 v2, p9

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/keyguard/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;ZLcom/android/keyguard/doze/DozeMachine$Service;)V

    return-object v0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/keyguard/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/keyguard/doze/DozeMachine$Part;
    .locals 7

    new-instance v0, Lcom/android/keyguard/doze/DozeUi;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getHost(Lcom/android/keyguard/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 3

    const-string/jumbo v0, "DOZE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assembleMachine(Lcom/android/keyguard/doze/DozeService;)Lcom/android/keyguard/doze/DozeMachine;
    .locals 24

    move-object/from16 v21, p1

    new-instance v3, Lcom/android/keyguard/util/AsyncSensorManager;

    const-class v1, Landroid/hardware/SensorManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    invoke-direct {v3, v1}, Lcom/android/keyguard/util/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;)V

    const-class v1, Landroid/app/AlarmManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/doze/DozeFactory;->getHost(Lcom/android/keyguard/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v4

    new-instance v6, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/keyguard/phone/DozeParameters;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/keyguard/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;

    const-string/jumbo v1, "Doze"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/keyguard/util/wakelock/WakeLock;

    move-result-object v1

    invoke-direct {v9, v8, v1}, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;)V

    move-object/from16 v11, p1

    new-instance v11, Lcom/android/keyguard/doze/DozeBrightnessHostForwarder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v4}, Lcom/android/keyguard/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    invoke-static {v11, v7}, Lcom/android/keyguard/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/keyguard/phone/DozeParameters;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/android/keyguard/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/keyguard/phone/DozeParameters;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v11, v4, v0}, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/content/Context;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/keyguard/doze/MiuiAnimDozeStatePreventingAdapter;->wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v23

    new-instance v11, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;

    move-object/from16 v0, v23

    invoke-direct {v11, v0, v5, v8}, Lcom/android/keyguard/doze/MiuiDozeBrightnessTimeoutAdapter;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/app/AlarmManager;Landroid/os/Handler;)V

    new-instance v10, Lcom/android/keyguard/doze/DozeMachine;

    move-object/from16 v0, p1

    invoke-direct {v10, v11, v6, v9, v0}, Lcom/android/keyguard/doze/DozeMachine;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/keyguard/util/wakelock/WakeLock;Landroid/content/Context;)V

    new-instance v22, Lcom/android/keyguard/doze/DozePauser;

    new-instance v1, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v8, v10, v5, v1}, Lcom/android/keyguard/doze/DozePauser;-><init>(Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/keyguard/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/keyguard/phone/DozeParameters;Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/keyguard/doze/DozeMachine$Service;)Lcom/android/keyguard/doze/DozeTriggers;

    move-result-object v19

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/keyguard/doze/DozeMachine$Part;

    const/4 v2, 0x0

    aput-object v22, v1, v2

    const/4 v2, 0x1

    aput-object v19, v1, v2

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v4

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/android/keyguard/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/keyguard/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/keyguard/doze/DozeMachine$Part;

    move-result-object v2

    const/4 v12, 0x2

    aput-object v2, v1, v12

    new-instance v2, Lcom/android/keyguard/doze/DozeScreenState;

    invoke-direct {v2, v11, v8}, Lcom/android/keyguard/doze/DozeScreenState;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/os/Handler;)V

    const/4 v12, 0x3

    aput-object v2, v1, v12

    new-instance v12, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    move-object v13, v8

    move-object v14, v10

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v20, p1

    invoke-direct/range {v12 .. v20}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;-><init>(Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/SensorManager;Lcom/android/keyguard/doze/DozeTriggers;Landroid/content/Context;)V

    const/4 v2, 0x4

    aput-object v12, v1, v2

    new-instance v14, Lcom/android/keyguard/doze/MiuiDozeTimeController;

    move-object/from16 v15, p1

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move-object/from16 v18, v5

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v20}, Lcom/android/keyguard/doze/MiuiDozeTimeController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeTriggers;Lcom/android/keyguard/doze/DozeMachine$Service;)V

    const/4 v2, 0x5

    aput-object v14, v1, v2

    invoke-virtual {v10, v1}, Lcom/android/keyguard/doze/DozeMachine;->setParts([Lcom/android/keyguard/doze/DozeMachine$Part;)V

    return-object v10
.end method
