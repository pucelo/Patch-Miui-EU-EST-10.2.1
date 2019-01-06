.class Landroid/media/Cea708CCWidget$CCHandler;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCHandler"
.end annotation


# static fields
.field private static final CAPTION_ALL_WINDOWS_BITMAP:I = 0xff

.field private static final CAPTION_CLEAR_INTERVAL_MS:J = 0xea60L

.field private static final CAPTION_WINDOWS_MAX:I = 0x8

.field private static final DEBUG:Z = false

.field private static final MSG_CAPTION_CLEAR:I = 0x2

.field private static final MSG_DELAY_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CCHandler"

.field private static final TENTHS_OF_SECOND_IN_MILLIS:I = 0x64


# instance fields
.field private final mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private final mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDelayed:Z

.field private final mPendingCaptionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Cea708CCParser$CaptionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCWidget$CCLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/media/Cea708CCWidget$CCWindowLayout;

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearWindows(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clear()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    if-ltz v0, :cond_c

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v1, v2, v0

    if-nez v1, :cond_1e

    new-instance v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v2}, Landroid/media/Cea708CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;)V

    :cond_1e
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1, v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aput-object v1, v2, v0

    iput-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    return-void
.end method

.method private delay(I)V
    .registers 6

    const/4 v2, 0x1

    if-ltz p1, :cond_7

    const/16 v0, 0xff

    if-le p1, v0, :cond_8

    :cond_7
    return-void

    :cond_8
    iput-boolean v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private delayCancel()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->processPendingBuffer()V

    return-void
.end method

.method private deleteWindows(I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getCaptionWindowId()I

    move-result v3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    goto :goto_b

    :cond_24
    return-void
.end method

.method private displayWindows(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private getWindowsFromBitmap(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Cea708CCWidget$CCWindowLayout;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1b

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v1, v3, v0

    if-eqz v1, :cond_18

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    return-object v2
.end method

.method private hideWindows(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private processPendingBuffer()V
    .registers 4

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_6

    :cond_16
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private sendBufferToCurrentWindow(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x2

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendBuffer(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1d
    return-void
.end method

.method private sendControlToCurrentWindow(C)V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendControl(C)V

    :cond_9
    return-void
.end method

.method private setCurrentWindowLayout(I)V
    .registers 4

    if-ltz p1, :cond_7

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    array-length v1, v1

    if-lt p1, v1, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v0, v1, p1

    if-nez v0, :cond_f

    return-void

    :cond_f
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    return-void
.end method

.method private setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    :cond_9
    return-void
.end method

.method private setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    :cond_9
    return-void
.end method

.method private setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    iget v1, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->row:I

    iget v2, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->column:I

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenLocation(II)V

    :cond_d
    return-void
.end method

.method private setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    :cond_9
    return-void
.end method

.method private toggleWindows(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_b

    :cond_21
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_b

    :cond_25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_8
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    return v1

    :pswitch_c
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    return v1

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .registers 3

    iget-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->type:I

    packed-switch v0, :pswitch_data_ac

    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendBufferToCurrentWindow(Ljava/lang/String;)V

    goto :goto_f

    :pswitch_18
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendControlToCurrentWindow(C)V

    goto :goto_f

    :pswitch_24
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setCurrentWindowLayout(I)V

    goto :goto_f

    :pswitch_30
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    goto :goto_f

    :pswitch_3c
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->displayWindows(I)V

    goto :goto_f

    :pswitch_48
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->hideWindows(I)V

    goto :goto_f

    :pswitch_54
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->toggleWindows(I)V

    goto :goto_f

    :pswitch_60
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->deleteWindows(I)V

    goto :goto_f

    :pswitch_6c
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->delay(I)V

    goto :goto_f

    :pswitch_78
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    goto :goto_f

    :pswitch_7c
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCHandler;->reset()V

    goto :goto_f

    :pswitch_80
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenAttr;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    goto :goto_f

    :pswitch_88
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    goto :goto_f

    :pswitch_90
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V

    goto/16 :goto_f

    :pswitch_99
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    goto/16 :goto_f

    :pswitch_a2
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindow;

    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V

    goto/16 :goto_f

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_10
        :pswitch_18
        :pswitch_24
        :pswitch_30
        :pswitch_3c
        :pswitch_48
        :pswitch_54
        :pswitch_60
        :pswitch_6c
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_88
        :pswitch_90
        :pswitch_99
        :pswitch_a2
    .end packed-switch
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_c
    const/16 v1, 0x8

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    :cond_1d
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_24
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/Cea708CCWidget$CCLayout;->setVisibility(I)V

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
