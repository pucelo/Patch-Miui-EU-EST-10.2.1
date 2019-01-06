.class Lcom/android/systemui/volume/VolumeDialogComponent$2;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/util/function/Supplier;


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
        "Lcom/android/systemui/util/function/Supplier",
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

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$2;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->-wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogComponent$2;->get()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method
