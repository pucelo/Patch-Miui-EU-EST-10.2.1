.class Lmiui/view/MiuiSecurityPermissionHandler$3$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$3;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iput-boolean p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->val$isLogin:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_24
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get3(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$3$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$3;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get2(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_17
.end method
