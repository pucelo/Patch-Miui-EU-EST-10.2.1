.class Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;
.super Ljava/lang/Object;
.source "OLEDScreenHelper.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromptStateChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-wrap0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get3(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->stop(Z)V

    goto :goto_0
.end method
