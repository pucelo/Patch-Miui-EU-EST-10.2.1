.class final Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenshotApplicationState"
.end annotation


# instance fields
.field appWin:Lcom/android/server/wm/WindowState;

.field maxLayer:I

.field minLayer:I

.field screenshotReady:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;-><init>()V

    return-void
.end method


# virtual methods
.method reset(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    if-eqz p1, :cond_f

    :goto_c
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    return-void

    :cond_f
    const v0, 0x7fffffff

    goto :goto_c
.end method
