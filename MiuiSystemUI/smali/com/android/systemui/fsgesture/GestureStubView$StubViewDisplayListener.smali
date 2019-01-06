.class Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubViewDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap3(Lcom/android/systemui/fsgesture/GestureStubView;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
