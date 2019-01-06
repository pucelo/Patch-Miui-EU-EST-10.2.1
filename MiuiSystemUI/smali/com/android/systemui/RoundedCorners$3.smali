.class Lcom/android/systemui/RoundedCorners$3;
.super Landroid/database/ContentObserver;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$3;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$3;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$3;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v3, v3, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "drive_mode_drive_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/RoundedCorners;->-set0(Lcom/android/systemui/RoundedCorners;Z)Z

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$3;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-wrap1(Lcom/android/systemui/RoundedCorners;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
