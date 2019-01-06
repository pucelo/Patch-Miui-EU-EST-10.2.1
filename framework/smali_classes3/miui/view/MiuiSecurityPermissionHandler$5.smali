.class Lmiui/view/MiuiSecurityPermissionHandler$5;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$5$1;

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$5;->val$wm:Landroid/view/WindowManager;

    invoke-direct {v0, p0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$5$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$5;Landroid/view/WindowManager;)V

    invoke-virtual {v0}, Lmiui/view/MiuiSecurityPermissionHandler$5$1;->start()V

    return-void
.end method
