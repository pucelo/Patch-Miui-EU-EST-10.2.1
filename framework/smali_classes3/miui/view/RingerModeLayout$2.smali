.class Lmiui/view/RingerModeLayout$2;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9

    const/4 v4, 0x1

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get13(Lmiui/view/RingerModeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1, p2}, Lmiui/view/RingerModeLayout;->-wrap1(Lmiui/view/RingerModeLayout;I)I

    move-result v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get14(Lmiui/view/RingerModeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v2}, Lmiui/view/RingerModeLayout;->-get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v2}, Lmiui/view/RingerModeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get14(Lmiui/view/RingerModeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lmiui/view/RingerModeLayout;->-set2(Lmiui/view/RingerModeLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get9(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v2}, Lmiui/view/RingerModeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7e
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get13(Lmiui/view/RingerModeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get8(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 9

    const/4 v6, 0x1

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/view/RingerModeLayout;->-wrap1(Lmiui/view/RingerModeLayout;I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x19

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    mul-int/lit8 v4, v0, 0x19

    invoke-static {v3, v4}, Lmiui/view/RingerModeLayout;->-wrap2(Lmiui/view/RingerModeLayout;I)I

    move-result v2

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/app/ExtraNotificationManager;->startCountDownSilenceMode(Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-lez v3, :cond_45

    iget-object v3, p0, Lmiui/view/RingerModeLayout$2;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v6, v4, v5}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_45
    return-void
.end method
