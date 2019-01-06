.class Lcom/android/systemui/util/leak/LeakDetector$2;
.super Ljava/lang/Object;
.source "LeakDetector.java"

# interfaces
.implements Lcom/android/systemui/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Predicate",
        "<",
        "Ljava/util/Collection",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/leak/LeakDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/leak/LeakDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector$2;->this$0:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/leak/LeakDetector$2;->test(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public test(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
