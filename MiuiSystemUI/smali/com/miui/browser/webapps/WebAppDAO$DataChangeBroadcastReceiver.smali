.class Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebAppDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/browser/webapps/WebAppDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/browser/webapps/WebAppDAO;


# direct methods
.method private constructor <init>(Lcom/miui/browser/webapps/WebAppDAO;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/browser/webapps/WebAppDAO;Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;-><init>(Lcom/miui/browser/webapps/WebAppDAO;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "miui.browser.webapps.action.DATA_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {v0}, Lcom/miui/browser/webapps/WebAppDAO;->reset()V

    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;->this$0:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-static {v0}, Lcom/miui/browser/webapps/WebAppDAO;->-wrap0(Lcom/miui/browser/webapps/WebAppDAO;)V

    return-void
.end method
