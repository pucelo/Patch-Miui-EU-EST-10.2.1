.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRingerMode:I

.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->mRingerMode:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->mRingerMode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->mRingerMode:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iput v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;->mRingerMode:I

    :cond_1
    return-void
.end method
