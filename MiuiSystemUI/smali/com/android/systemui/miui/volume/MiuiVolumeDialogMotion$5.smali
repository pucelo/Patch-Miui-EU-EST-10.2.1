.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startDismissAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5$1;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$5;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
