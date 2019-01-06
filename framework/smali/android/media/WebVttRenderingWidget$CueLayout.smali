.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method static synthetic -get0(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 2

    iget v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 9

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    iget v1, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_20

    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_22

    move v1, v2

    :goto_14
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch v1, :pswitch_data_46

    :goto_1c
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    :cond_22
    const/4 v1, 0x0

    goto :goto_14

    :pswitch_24
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1c

    :pswitch_2b
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1c

    :pswitch_30
    if-eqz v0, :cond_36

    :goto_32
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1c

    :cond_36
    const/16 v2, 0x10

    goto :goto_32

    :pswitch_39
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1c

    :pswitch_3e
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1c

    nop

    :pswitch_data_46
    .packed-switch 0xc8
        :pswitch_30
        :pswitch_3e
        :pswitch_24
        :pswitch_2b
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .registers 2

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public measureForParent(II)V
    .registers 13

    const/high16 v9, -0x80000000

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v2

    iget v7, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v2, v7}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :pswitch_19
    const/4 v3, 0x0

    :goto_1a
    iget v7, v1, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x64

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    return-void

    :pswitch_2f
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v3, v7, 0x64

    goto :goto_1a

    :pswitch_34
    iget v3, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    goto :goto_1a

    :pswitch_37
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v8, 0x32

    if-gt v7, v8, :cond_42

    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v3, v7, 0x2

    goto :goto_1a

    :cond_42
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v7, v7, 0x64

    mul-int/lit8 v3, v7, 0x2

    goto :goto_1a

    nop

    :pswitch_data_4a
    .packed-switch 0xc8
        :pswitch_37
        :pswitch_19
        :pswitch_19
        :pswitch_2f
        :pswitch_34
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prepForPrune()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 7

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_1b

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_18

    check-cast v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOrder(I)V
    .registers 2

    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return-void
.end method

.method public update()V
    .registers 12

    const/4 v10, -0x2

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v8

    iget-object v9, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v9, v9, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v8, v9}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    move-result v2

    packed-switch v2, :pswitch_data_42

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_18
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    iget-object v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v7, v8, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v6, v7

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v6, :cond_41

    new-instance v5, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-direct {v5, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    invoke-virtual {v5, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v5, v1, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    invoke-virtual {p0, v5, v10, v10}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :pswitch_3b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_18

    :pswitch_3e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_18

    :cond_41
    return-void

    :pswitch_data_42
    .packed-switch 0xcb
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method
