.class Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotType:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap26(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public setScreenshotType(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    return-void
.end method
