.class Landroid/os/statistics/JavaBackTrace;
.super Ljava/lang/Object;
.source "JavaBackTrace.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeResolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private static native nativeResolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;
.end method

.method public static resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/os/statistics/JavaBackTrace;->nativeResolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public static resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/os/statistics/JavaBackTrace;->nativeResolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
