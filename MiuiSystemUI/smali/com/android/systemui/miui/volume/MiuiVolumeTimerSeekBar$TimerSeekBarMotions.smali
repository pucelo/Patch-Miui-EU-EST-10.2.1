.class interface abstract Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;
.super Ljava/lang/Object;
.source "MiuiVolumeTimerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TimerSeekBarMotions"
.end annotation


# virtual methods
.method public abstract addCountDownStateReceiver(Landroid/widget/TextView;)V
.end method

.method public abstract addTickingTimeReceiver(Landroid/widget/TextView;)V
.end method

.method public abstract onSegmentChange(II)V
.end method

.method public abstract onTimeUpdate(I)V
.end method

.method public abstract onTouchDown()V
.end method

.method public abstract onTouchRelease()V
.end method
