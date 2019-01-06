.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V

    return-void
.end method
