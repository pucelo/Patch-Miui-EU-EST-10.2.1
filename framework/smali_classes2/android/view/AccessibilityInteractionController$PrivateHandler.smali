.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final MSG_APP_PREPARATION_FINISHED:I = 0x8

.field private static final MSG_APP_PREPARATION_TIMEOUT:I = 0x9

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1

.field private static final MSG_PREPARE_FOR_EXTRA_DATA_REQUEST:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1f
    const-string/jumbo v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    return-object v1

    :pswitch_23
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    return-object v1

    :pswitch_27
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    return-object v1

    :pswitch_2b
    const-string/jumbo v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    return-object v1

    :pswitch_2f
    const-string/jumbo v1, "MSG_FIND_FOCUS"

    return-object v1

    :pswitch_33
    const-string/jumbo v1, "MSG_FOCUS_SEARCH"

    return-object v1

    :pswitch_37
    const-string/jumbo v1, "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST"

    return-object v1

    :pswitch_3b
    const-string/jumbo v1, "MSG_APP_PREPARATION_FINISHED"

    return-object v1

    :pswitch_3f
    const-string/jumbo v1, "MSG_APP_PREPARATION_TIMEOUT"

    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1f
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    :goto_24
    return-void

    :pswitch_25
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_2b
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_31
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_37
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_3d
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_43
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap7(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_49
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-wrap8(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    goto :goto_24

    :pswitch_4f
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-wrap9(Landroid/view/AccessibilityInteractionController;)V

    goto :goto_24

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1f
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_3d
        :pswitch_43
        :pswitch_49
        :pswitch_4f
    .end packed-switch
.end method
