.class Landroid/widget/TimePickerClockDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    return-void

    :sswitch_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    :goto_11
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap6(Landroid/widget/TimePickerClockDelegate;)V

    :cond_16
    return-void

    :sswitch_17
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_11

    :sswitch_1d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_11

    :sswitch_23
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$6;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_11

    nop

    :sswitch_data_2a
    .sparse-switch
        0x10201a9 -> :sswitch_c
        0x1020293 -> :sswitch_1d
        0x1020309 -> :sswitch_23
        0x1020387 -> :sswitch_17
    .end sparse-switch
.end method
