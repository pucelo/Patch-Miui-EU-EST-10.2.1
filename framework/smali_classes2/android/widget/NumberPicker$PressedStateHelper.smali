.class Landroid/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .registers 6

    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    :cond_2e
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    :cond_4c
    return-void
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_ac

    :goto_7
    return-void

    :pswitch_8
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_b4

    goto :goto_7

    :pswitch_e
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    :pswitch_2b
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    :pswitch_42
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_bc

    goto :goto_7

    :pswitch_48
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5a
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get6(Landroid/widget/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-set1(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    :pswitch_7c
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8e
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get4(Landroid/widget/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-set0(Landroid/widget/NumberPicker;Z)Z

    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_7

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_8
        :pswitch_42
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_48
        :pswitch_7c
    .end packed-switch
.end method
