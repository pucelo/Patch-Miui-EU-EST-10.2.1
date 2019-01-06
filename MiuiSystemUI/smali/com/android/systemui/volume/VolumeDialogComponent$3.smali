.class Lcom/android/systemui/volume/VolumeDialogComponent$3;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Lcom/android/systemui/plugins/VolumeDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->-get0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->-get0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->-set0(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)Lcom/android/systemui/plugins/VolumeDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->-get0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$3;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->-get1(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog$Callback;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/VolumeDialog;->init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent$3;->accept(Lcom/android/systemui/plugins/VolumeDialog;)V

    return-void
.end method
