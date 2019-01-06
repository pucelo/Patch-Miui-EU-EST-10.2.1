.class Lmiui/content/pm/PackageDeleteConfirmActivity$1;
.super Landroid/os/Handler;
.source "PackageDeleteConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/PackageDeleteConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;


# direct methods
.method constructor <init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/16 v5, 0x64

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-set0(Lmiui/content/pm/PackageDeleteConfirmActivity;I)I

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v3, :cond_36

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110900d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110900d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_35

    :cond_54
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v3, :cond_91

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x110900d3

    invoke-virtual {v1, v3, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_7c
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35

    :cond_91
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x110900d1

    invoke-virtual {v1, v3, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7c
.end method
