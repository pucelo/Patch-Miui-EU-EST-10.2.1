.class Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowStateInfo"
.end annotation


# instance fields
.field mNowFrame:Landroid/graphics/Rect;

.field mNowPosX:I

.field mNowPosY:I

.field mNowScale:F

.field mOriFrame:Landroid/graphics/Rect;

.field mOriPosX:I

.field mOriPosY:I

.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    return-void
.end method
