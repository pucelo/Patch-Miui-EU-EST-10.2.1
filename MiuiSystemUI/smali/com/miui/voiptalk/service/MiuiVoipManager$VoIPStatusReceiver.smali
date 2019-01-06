.class Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiVoipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voiptalk/service/MiuiVoipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoIPStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;


# direct methods
.method private constructor <init>(Lcom/miui/voiptalk/service/MiuiVoipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;->this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;-><init>(Lcom/miui/voiptalk/service/MiuiVoipManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string/jumbo v1, "extra_activated"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "MiuiVoipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onReceive isVoipEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;->this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->init()V

    :cond_0
    return-void
.end method
