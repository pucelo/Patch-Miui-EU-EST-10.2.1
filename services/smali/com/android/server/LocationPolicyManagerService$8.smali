.class Lcom/android/server/LocationPolicyManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$8;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v1, "user cancel restrict all background notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$8;->this$0:Lcom/android/server/LocationPolicyManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LocationPolicyManagerService;->setRestrictBackground(Z)V

    return-void
.end method
