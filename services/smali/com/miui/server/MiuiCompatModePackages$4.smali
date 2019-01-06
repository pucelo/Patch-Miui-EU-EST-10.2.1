.class Lcom/miui/server/MiuiCompatModePackages$4;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->createDialog()V
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

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->-get0(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->-get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-get0(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x69

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->-wrap0(Lcom/miui/server/MiuiCompatModePackages;)V

    :cond_2a
    return-void
.end method
