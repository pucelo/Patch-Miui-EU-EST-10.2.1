.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/TextInputTimePickerView$OnValueTypedListener;


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

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(II)V
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v1, 0x0

    invoke-static {v0, p2, v3, v1, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    goto :goto_5

    :pswitch_d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, p2, v3, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_5

    :pswitch_13
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, p2}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_5

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method
