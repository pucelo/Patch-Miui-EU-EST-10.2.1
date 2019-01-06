.class Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;


# direct methods
.method constructor <init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;->this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;->this$1:Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->updateAll()V

    return-void
.end method
