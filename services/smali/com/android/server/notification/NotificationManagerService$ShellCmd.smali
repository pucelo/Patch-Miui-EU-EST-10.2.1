.class Lcom/android/server/notification/NotificationManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nset_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ShellCmd;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10

    const/4 v5, -0x1

    const/4 v7, 0x0

    if-nez p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    :try_start_d
    const-string/jumbo v4, "allow_dnd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    :goto_24
    return v7

    :cond_25
    const-string/jumbo v4, "disallow_dnd"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3d

    goto :goto_24

    :catch_3d
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error occurred. Check logcat for details. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Error running shell command"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_63
    :try_start_63
    const-string/jumbo v4, "allow_listener"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_cb

    const-string/jumbo v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_7d
    const-string/jumbo v4, "disallow_listener"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_ed

    const-string/jumbo v4, "Invalid listener - must be a ComponentName"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_97
    const-string/jumbo v4, "allow_assistant"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_10f

    const-string/jumbo v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_b1
    const-string/jumbo v4, "disallow_assistant"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11b

    const-string/jumbo v4, "Invalid assistant - must be a ComponentName"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_cb
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_dd

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_24

    :cond_dd
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v0, v5, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_24

    :cond_ed
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ff

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_24

    :cond_ff
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_24

    :cond_10f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_24

    :cond_11b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    goto/16 :goto_24

    :cond_127
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_12a} :catch_3d

    move-result v4

    return v4
.end method

.method public onHelp()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "help\nallow_listener COMPONENT [user_id]\ndisallow_listener COMPONENT [user_id]\nset_assistant COMPONENT\nremove_assistant COMPONENT\nallow_dnd PACKAGE\ndisallow_dnd PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
