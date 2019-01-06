.class Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;
.super Ljava/lang/Object;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppMessage"
.end annotation


# instance fields
.field className:Ljava/lang/CharSequence;

.field num:I

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
