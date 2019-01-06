.class Lmiui/view/VolumeDialog$SafetyWarningDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get13(Lmiui/view/VolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/view/VolumeDialog;->-set3(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method
