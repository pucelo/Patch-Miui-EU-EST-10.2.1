.class Lmiui/view/MiuiSecurityPermissionHandler$7;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->val$parentView:Landroid/view/View;

    const v1, 0x110c004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x110900c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$7;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap2(Lmiui/view/MiuiSecurityPermissionHandler;)V

    return-void
.end method
