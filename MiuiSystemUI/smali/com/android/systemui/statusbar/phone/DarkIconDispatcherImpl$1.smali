.class Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->-wrap0(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;F)V

    return-void
.end method
