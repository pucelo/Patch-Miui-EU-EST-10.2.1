.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->-wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
