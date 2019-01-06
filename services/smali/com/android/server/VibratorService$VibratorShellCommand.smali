.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation


# static fields
.field private static final MAX_VIBRATION_MS:J = 0xc8L


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private runVibrate()I
    .registers 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "zen_mode"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_12} :catch_34

    move-result v10

    if-eqz v10, :cond_35

    const/4 v9, 0x0

    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    const-string/jumbo v0, "Ignoring because device is on DND mode "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/provider/Settings$Global;

    const-string/jumbo v5, "ZEN_MODE_"

    invoke-static {v0, v5, v10}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2c} :catch_4f
    .catchall {:try_start_16 .. :try_end_2c} :catchall_83

    if-eqz v9, :cond_31

    :try_start_2e
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_4c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2e .. :try_end_31} :catch_34

    :cond_31
    :goto_31
    if-eqz v1, :cond_4e

    :try_start_33
    throw v1
    :try_end_34
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v8

    :cond_35
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v0, 0xc8

    cmp-long v0, v6, v0

    if-lez v0, :cond_69

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maximum duration is 200"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4c
    move-exception v1

    goto :goto_31

    :cond_4e
    return v4

    :catch_4f
    move-exception v0

    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_55
    if-eqz v9, :cond_5a

    :try_start_57
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_57 .. :try_end_5a} :catch_34

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_68

    :try_start_5c
    throw v1

    :catch_5d
    move-exception v5

    if-nez v1, :cond_62

    move-object v1, v5

    goto :goto_5a

    :cond_62
    if-eq v1, v5, :cond_5a

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5a

    :cond_68
    throw v0
    :try_end_69
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5c .. :try_end_69} :catch_34

    :cond_69
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_72

    const-string/jumbo v2, "Shell command"

    :cond_72
    const/4 v0, -0x1

    invoke-static {v6, v7, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    return v4

    :catchall_83
    move-exception v0

    goto :goto_55
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Vibrator commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  vibrate duration [description]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "    (Do Not Disturb) mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_40
    .catchall {:try_start_2 .. :try_end_36} :catchall_5b

    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3e

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_5a

    throw v2

    :catch_3e
    move-exception v2

    goto :goto_3b

    :catch_40
    move-exception v1

    :try_start_41
    throw v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_46
    if-eqz v0, :cond_4b

    :try_start_48
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4e

    :cond_4b
    :goto_4b
    if-eqz v2, :cond_59

    throw v2

    :catch_4e
    move-exception v3

    if-nez v2, :cond_53

    move-object v2, v3

    goto :goto_4b

    :cond_53
    if-eq v2, v3, :cond_4b

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_59
    throw v1

    :cond_5a
    return-void

    :catchall_5b
    move-exception v1

    goto :goto_46
.end method
