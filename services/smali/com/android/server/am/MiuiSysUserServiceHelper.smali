.class public Lcom/android/server/am/MiuiSysUserServiceHelper;
.super Ljava/lang/Object;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
    }
.end annotation


# static fields
.field private static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field private static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field private static final EVENT_MEMORY_LEVEL:Ljava/lang/String; = "EVENT_MEMORY_LEVEL"

.field private static final KEY_MEMORY_LEVELLOW:Ljava/lang/String; = "KEY_MEMORY_LEVEL_LOW"

.field private static MSG_INPUT_DELAY_TIME:J = 0x0L

.field private static final MSG_INPUT_TIMEOUT:I = 0x2

.field private static final MSG_RESUME_DELAY:I = 0x1

.field private static MSG_RESUME_DELAY_TIME:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "MIUI_SYS_USER"

.field private static mEnable:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sInputLimit:Z

.field private static sIsLimit:Z

.field private static sLastMemoryLevel:I

.field public static sTopPackage:Ljava/lang/String;

.field private static sysUser:Lcom/android/internal/app/IMiuiSysUser;


# direct methods
.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    sput-boolean v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    sput-boolean v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->getDefaultEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    sput v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultEnable()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isAllLimit()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static isLowMemory()Z
    .registers 2

    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMCreateActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method static notifyAMDestroyActivity(II)V
    .registers 6

    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMDestroyActivity(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMDestroyActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method static notifyAMPauseActivity(II)V
    .registers 6

    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMPauseActivity(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMPauseActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method static notifyAMProcDied(ILjava/lang/String;)V
    .registers 6

    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcDied(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMProcDied error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method static notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 17

    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMProcStart error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method static notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMRestartActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method static notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMResumeActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method static notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyEvent error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static notifyMemoryLevelChange(I)V
    .registers 4

    const/4 v2, 0x2

    if-lt p0, v2, :cond_1a

    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-ge v1, v2, :cond_19

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-lt v1, v2, :cond_19

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19
.end method

.method private static sendAllLimitMessage()V
    .registers 4

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    return-void

    :cond_9
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    sput-boolean v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1b
    return-void
.end method

.method public static sendInputMessage()V
    .registers 4

    const/4 v1, 0x2

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    return-void

    :cond_9
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    return-void
.end method

.method public static setEnable(Z)V
    .registers 1

    return-void
.end method

.method public static setMemLevel(I)V
    .registers 2

    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-eq v0, p0, :cond_7

    invoke-static {p0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyMemoryLevelChange(I)V

    :cond_7
    sput p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    return-void
.end method

.method public static setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V
    .registers 1

    sput-object p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    return-void
.end method
