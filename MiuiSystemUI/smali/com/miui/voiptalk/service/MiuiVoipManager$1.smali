.class Lcom/miui/voiptalk/service/MiuiVoipManager$1;
.super Ljava/lang/Object;
.source "MiuiVoipManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voiptalk/service/MiuiVoipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;


# direct methods
.method constructor <init>(Lcom/miui/voiptalk/service/MiuiVoipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager$1;->this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager$1;->this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-static {p2}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/voiptalk/service/IMiuiVoipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->-set0(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/IMiuiVoipService;)Lcom/miui/voiptalk/service/IMiuiVoipService;

    const-string/jumbo v0, "MiuiVoipManager"

    const-string/jumbo v1, " onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager$1;->this$0:Lcom/miui/voiptalk/service/MiuiVoipManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->-set0(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/IMiuiVoipService;)Lcom/miui/voiptalk/service/IMiuiVoipService;

    const-string/jumbo v0, "MiuiVoipManager"

    const-string/jumbo v1, " onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
