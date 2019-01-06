.class Lcom/miui/server/MiuiCompatModePackages$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->-wrap6(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->-wrap4(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    goto :goto_1e
.end method
