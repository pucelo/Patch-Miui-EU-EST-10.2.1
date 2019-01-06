.class Lcom/android/systemui/statusbar/NotificationInfo$4;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationInfo;->handleCloseControls(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo$4;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo$4;->this$0:Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationInfo;->-wrap0(Lcom/android/systemui/statusbar/NotificationInfo;)V

    return-void
.end method
