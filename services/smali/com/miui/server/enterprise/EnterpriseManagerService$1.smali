.class Lcom/miui/server/enterprise/EnterpriseManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/enterprise/EnterpriseManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-static {v1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->-wrap0(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->-wrap3(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    goto :goto_1a

    :cond_31
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->-wrap4(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    goto :goto_1a

    :cond_47
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->-wrap2(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V

    goto :goto_1a

    :cond_5d
    const-string/jumbo v2, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;->this$0:Lcom/miui/server/enterprise/EnterpriseManagerService;

    const-string/jumbo v1, "extra_ent_cert"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-static {v2, v1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->-set0(Lcom/miui/server/enterprise/EnterpriseManagerService;Lcom/miui/enterprise/signature/EnterpriseCer;)Lcom/miui/enterprise/signature/EnterpriseCer;

    goto :goto_1a
.end method
