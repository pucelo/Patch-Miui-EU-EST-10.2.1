.class final Landroid/view/accessibility/AccessibilityManager$MyCallback;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallback"
.end annotation


# static fields
.field public static final MSG_SET_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    :goto_5
    const/4 v1, 0x1

    return v1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_10
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->-wrap0(Landroid/view/accessibility/AccessibilityManager;I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    monitor-exit v2

    goto :goto_5

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
