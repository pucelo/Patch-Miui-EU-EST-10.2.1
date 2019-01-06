.class final Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method private constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;)V

    return-void
.end method

.method private getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/view/VolumeDialog$VolumeRow;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    return-object v0

    :cond_16
    return-object v1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_a

    return-void

    :cond_a
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->-get2(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v3

    if-lez v3, :cond_23

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v3

    invoke-static {v3}, Lmiui/view/VolumeDialog$StreamState;->-get2(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v3

    mul-int/lit8 v0, v3, 0x64

    if-ge p2, v0, :cond_23

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_23
    invoke-static {p1, p2}, Lmiui/view/VolumeDialog;->-wrap0(Landroid/widget/SeekBar;I)I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lmiui/view/VolumeDialog$VolumeRow;->-set14(Lmiui/view/VolumeDialog$VolumeRow;J)J

    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VolumeBar:onProgressChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get0(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v4

    const/high16 v5, 0x100000

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lmiui/view/VolumeDialog;->-get14()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get5(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->selectedIconRes:I

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get2(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set13(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set13(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->-set14(Lmiui/view/VolumeDialog$VolumeRow;J)J

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {p1, v2}, Lmiui/view/VolumeDialog;->-wrap0(Landroid/widget/SeekBar;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
