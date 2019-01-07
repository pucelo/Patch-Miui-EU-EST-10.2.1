.class Landroid/widget/TextClockColor$1;
.super Ljava/lang/Object;
.source "TextClockColorColor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClockColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "1"
.end annotation


# instance fields
.field private final this$0:Landroid/widget/TextClockColor;

.field private final val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/TextClockColor;Landroid/content/Context;)V
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/widget/TextClockColor$1;->val$c:Landroid/content/Context;

    return-void
.end method

.method static access$0(Landroid/widget/TextClockColor$1;)Landroid/widget/TextClockColor;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/TextClockColor$1;->val$c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    invoke-static {v9}, Landroid/widget/TextClockColor;->access$L1000003(Landroid/widget/TextClockColor;)Ljava/lang/String;

    move-result-object v9

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Landroid/widget/TextClockColor;->access$S1000002(Landroid/widget/TextClockColor;I)V

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    invoke-static {v8}, Landroid/widget/TextClockColor;->access$L1000002(Landroid/widget/TextClockColor;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextClockColor;->setTextColor(I)V

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    invoke-virtual {v7}, Landroid/widget/TextClockColor;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-wide v2, v7

    move-wide v7, v2

    const/16 v9, 0x3e8

    int-to-long v9, v9

    move-wide v11, v2

    const/16 v13, 0x3e8

    int-to-long v13, v13

    rem-long/2addr v11, v13

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    move-wide v4, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    invoke-static {v7}, Landroid/widget/TextClockColor;->access$L1000001(Landroid/widget/TextClockColor;)Landroid/os/Handler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/TextClockColor$1;->this$0:Landroid/widget/TextClockColor;

    invoke-static {v8}, Landroid/widget/TextClockColor;->access$L1000000(Landroid/widget/TextClockColor;)Ljava/lang/Runnable;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v7

    return-void
.end method
