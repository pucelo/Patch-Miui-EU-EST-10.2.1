.class Lcom/android/systemui/settings/CurrentUserTracker$1;
.super Ljava/lang/Object;
.source "CurrentUserTracker.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/CurrentUserTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$1;->this$0:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$1;->this$0:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/CurrentUserTracker;->onUserSwitched(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
