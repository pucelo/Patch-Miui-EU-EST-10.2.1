.class Lcom/android/systemui/RoundedCorners$2;
.super Landroid/database/ContentObserver;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, v1, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_black"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/RoundedCorners;->-set1(Lcom/android/systemui/RoundedCorners;Z)Z

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$2;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-wrap1(Lcom/android/systemui/RoundedCorners;)V

    return-void
.end method
