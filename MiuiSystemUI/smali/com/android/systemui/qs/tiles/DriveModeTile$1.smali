.class Lcom/android/systemui/qs/tiles/DriveModeTile$1;
.super Landroid/database/ContentObserver;
.source "DriveModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DriveModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DriveModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DriveModeTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DriveModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "SystemUI.DriveMode"

    const-string/jumbo v1, "drive mode change detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DriveModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->refreshState()V

    return-void
.end method
