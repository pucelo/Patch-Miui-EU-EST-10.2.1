.class Lcom/android/systemui/statusbar/phone/StatusBar$64;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$dockedStackBoundsF:Landroid/graphics/Rect;

.field final synthetic val$dockedStackVisF:I

.field final synthetic val$fullscreenStackBoundsF:Landroid/graphics/Rect;

.field final synthetic val$fullscreenStackVisF:I

.field final synthetic val$maskF:I

.field final synthetic val$sbModeChangedF:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$fullscreenStackVisF:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$dockedStackVisF:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$maskF:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$fullscreenStackBoundsF:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$dockedStackBoundsF:Landroid/graphics/Rect;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$sbModeChangedF:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$fullscreenStackVisF:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$dockedStackVisF:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$maskF:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$fullscreenStackBoundsF:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$dockedStackBoundsF:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$sbModeChangedF:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    return-void
.end method
